<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Http;

class CustomerHandlingController extends Controller
{
    public function index()
    {
        try {

            $response = Http::get(
                'http://localhost/airport/api/send_customer_handling.php'
            );

            return response()->json(
                $response->json(),
                $response->status()
            );

        } catch (\Exception $e) {

            return response()->json([
                "status" => "error",
                "message" => "Failed to connect airport API",
                "data" => $e->getMessage()
            ], 500);
        }
    }
}