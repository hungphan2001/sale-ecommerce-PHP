<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Services\OrderService;
use Illuminate\Http\Request;
use Srmklive\PayPal\Services\PayPal as PayPalClient;


class PaymentController extends Controller
{
    protected OrderService $orderService;
    public function __construct(OrderService $orderService)
    {
        $this->orderService = $orderService;
    }

    public function pay(Request $request)
    {
        try {
            $provider = new PayPalClient;
            $provider->setApiCredentials(config('paypal'));
            $provider->getAccessToken();

            $dataCart = $this->orderService->getOrderDetailAndOrderTotal($request->cart_ids);
            $amount = convert_vnd_to_usd($dataCart['order_total']);
            $dataSend = [
                "intent" => "CAPTURE",
                "application_context" => [
                    "return_url" => route('cart.paypal.success', [
                        'cart_ids' => $request->cart_ids,
                        'phone' => $request->phone,
                        'address' => $request->address,
                        'type_payment' => 'online'
                    ]),
                    "cancel_url" => route('cart.paypal.cancel')
                ],
                "purchase_units" => [
                    0 => [
                        "amount" => [
                            "currency_code" => env('PAYPAL_CURRENCY'),
                            "value" => round($amount, 2)
                        ]
                    ]
                ]
            ];

            $response = $provider->createOrder($dataSend);
        
    
            if (isset($response['id']) && isset($response['id']) !== null) {
                foreach ($response['links'] as $link) {
                    if ($link['rel'] === 'approve') {
                        return redirect()->to($link['href']);
                    }
                }

            }

            return redirect()->route('cart.payment')->with('error', 'có lỗ xảy ra!!');
        } catch (\Throwable $e) {
            return redirect()->route('cart.payment')->with('error', 'có lỗ xảy ra!!');
        }
    }

    public function success(Request $request)
    {
        try {
            $provider = new PayPalClient;
            $provider->setApiCredentials(config('paypal'));
            $provider->getAccessToken();
            $response = $provider->capturePaymentOrder($request->token);

            if (isset($response['status']) && $response['status'] === 'COMPLETED') {
                $this->orderService->store($request);
                return redirect()->route('home.index')->with('message-success', 'Đặt hàng thành công!');
            }

            return redirect()->route('home.index')->with('message-error', 'Đã xảy ra lỗi!');
        } catch (\Throwable $e) {
            return redirect()->route('home.index')->with('message-error', 'Đã xảy ra lỗi!');
        }
    }

    public function cancel()
    {
        return redirect()->route('home.index')->with('message-error', 'Bạn đã huỷ thanh toán!!');
    }
}
