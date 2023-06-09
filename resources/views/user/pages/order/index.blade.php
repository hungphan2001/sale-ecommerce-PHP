@extends('user.layouts.master')
@section('content')
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Check Out</h4>
                        <div class="breadcrumb__links">
                            <a href="{{ route('home.index') }}">Trang chủ</a>
                            <a href="{{ route('cart.index') }}">Giỏ hàng</a>
                            <span>Thanh toán</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="{{ route('cart.payment.post') }}" method="POST" id="form-payment">
                    <input type="hidden" id="route-cod" value="{{ route('cart.payment.post') }}">
                    <input type="hidden" id="route-paypal" value="{{ route('cart.payment.paypal') }}">
                    @csrf
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <h6 class="checkout__title">Chi tiết</h6>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Họ và tên<span>*</span></p>
                                        <input type="text" value="{{ auth()->user()->name }}" disabled>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text" value="{{ auth()->user()->email }}" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Số điện thoại<span>*</span></p>
                                        <input type="text" value="{{ auth()->user()->phone }}" name="phone">
                                        @error('phone')
                                        <small class="form-text text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Địa chỉ<span>*</span></p>
                                        <input type="text" value="{{ auth()->user()->address }}" name="address">
                                        @error('address')
                                        <small class="form-text text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4 class="order__title">Đơn hàng</h4>
                                <div class="checkout__order__products">Sản phẩm <span>Tổng</span></div>
                                <ul class="checkout__total__products">
                                    @foreach($cartUserCurrentLogin as $cart)
                                        <li>
                                            {{ $cart->product->name . ' ( x'.$cart->quantity.')' }}
                                            <span>{{ number_format($cart->total). '₫' }}</span>
                                        </li>
                                    @endforeach
                                </ul>
                                <ul class="checkout__total__all">
                                    <li>Tổng <span>{{ number_format($total). '₫' }}</span></li>
                                </ul>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Nhận hàng trả tiền (COD)
                                        <input type="radio" class="type-payment" value="1" id="payment" name="type_payment" checked data-check="route-cod">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Thanh toán qua paypal
                                        <input type="radio" class="type-payment" id="paypal" name="type_payment" data-check="route-paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <input type="hidden" value="{{ $cartUserCurrentLogin->pluck('id') }}" name="cart_ids">
                                <button type="submit" class="site-btn">Đặt hàng</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
@endsection
@push('js')
    <script>
        $(function () {
            $('.type-payment').on('change', function () {
                let type = $(this).data('check');
                let action = $(`#${type}`).val();
                $('#form-payment').get(0).action = action;
            })
        });
    </script>
    <script src="https://www.paypal.com/sdk/js?client-id={{ env('PAYPAL_SANDBOX_CLIENT_ID') }}"></script>
@endpush
