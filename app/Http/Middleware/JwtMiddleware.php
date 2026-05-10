<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Exception;

class JwtMiddleware
{
    public function handle(Request $request, Closure $next, ...$roles)
    {
        $authHeader = $request->header('Authorization');

        if (!$authHeader || !str_starts_with($authHeader, 'Bearer ')) {
            return response()->json([
                'success' => false,
                'message' => 'Token tidak ditemukan'
            ], 401);
        }

        $token = substr($authHeader, 7);

        try {
            $secret = env('JWT_SECRET');

            $parts = explode('.', $token);
            if (count($parts) !== 3) {
                throw new Exception('Format token tidak valid');
            }

            // Decode payload
            $payload = json_decode(
                base64_decode(strtr($parts[1], '-_', '+/')),
                true
            );

            if (!$payload) {
                throw new Exception('Payload tidak valid');
            }

            // Cek expired
            if (isset($payload['exp']) && $payload['exp'] < time()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Token expired'
                ], 401);
            }

            // Verifikasi signature — gunakan raw string secret
            $headerPayload = $parts[0] . '.' . $parts[1];
            $expectedSig = rtrim(
                strtr(
                    base64_encode(
                        hash_hmac('sha256', $headerPayload, $secret, true)
                    ),
                    '+/',
                    '-_'
                ),
                '='
            );

            if (!hash_equals($expectedSig, $parts[2])) {
                throw new Exception('Signature tidak valid');
            }

            // Simpan ke request
            $request->merge([
                'jwt_role'      => $payload['role_name'] ?? null,
                'jwt_detail_id' => $payload['detail_id'] ?? null,
                'jwt_user_id'   => $payload['user_id'] ?? null,
            ]);

            // Cek role
            if (!empty($roles) && !in_array($payload['role_name'] ?? '', $roles)) {
                return response()->json([
                    'success' => false,
                    'message' => 'Akses ditolak'
                ], 403);
            }

        } catch (Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 401);
        }

        return $next($request);
    }
}