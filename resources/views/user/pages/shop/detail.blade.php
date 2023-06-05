@extends('user.layouts.master')
@section('content')
    <!-- Shop Details Section Begin -->
    <section class="shop-details mb-5">
        <div class="container">
            <div class="row">
                <div class="product__details__pic col col-6 col-xs-12 col-md-6">
                    <div class="container">

                        <div class="row">
                            <div class="col-lg-3 col-md-12">
                                <ul class="nav nav-tabs" role="tablist">
                                    @foreach($product->images as $image)
                                        <li class="nav-item">
                                            <a class="nav-link" data-toggle="tab" href="#tabs-{{ $image->id }}" role="tab">
                                                <div class="product__thumb__pic set-bg" data-setbg="{{ asset('uploads/'.$image->path) }}">
                                                </div>
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="col-lg-9 col-md-12">
                                <div class="tab-content">
                                    @foreach($product->images as $image)
                                        <div class="tab-pane @if($loop->first) active @endif" id="tabs-{{ $image->id }}" role="tabpanel">
                                            <div class="product__details__pic__item">
                                                <img src="{{ asset('uploads/'.$image->path) }}" alt="">
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                            

                        </div>
                    </div>
                </div>
                <div class="product__details__content col col-6 col-xs-12 col-md-6">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product__details__breadcrumb">
                                    <a href="{{ route('home.index') }}">Trang chủ</a>
                                    <a href="{{ route('shop.index') }}">Shop</a>
                                    <span>Chi tiết sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product__details__text">
                                    <h4 style="text-transform: uppercase">{{ $product->name }}</h4>
                                    @if (!$product->discount)
                                        <h3 style="color: #e53637">{{ number_format($product->price) . ' ₫' }}</h3>
                                    @else
                                        <h3 style="color: #e53637">{{ get_price_sale($product->discount, $product->price). '₫' }}
                                            <span>{{ number_format($product->price) . ' ₫' }}</span></h3>
                                    @endif
                                    <p>{!! $product->description !!}</p>
                                    <div class="product__details__cart__option">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1" id="quantity-input">
                                            </div>
                                        </div>
                                        <button
                                            id="add-cart-detail"
                                            data-id="{{ $product->id }}"
                                            data-price="{{ $product->price }}"
                                            style="border: none"
                                            class="primary-btn">Thêm vào giỏ hàng</button>
                                    </div>
                                    <div class="product__details__last__option" style="margin-top: 50px">
                                        <h5><span>Hỗ trợ thanh toán</span></h5>
                                        <img src="{{ asset('img/details-payment.png') }}" alt="payment">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Details Section End -->
@endsection
@push('css')
    <style>
        .product__details__pic .nav-tabs {
            width: auto;
            justify-content: space-between;
            margin-top: 10px;
        }

        .product__details__pic .nav-tabs .nav-item .nav-link .product__thumb__pic {
            width: 120px;
        }

        .primary-btn {
            padding: 0 !important;
            width: 250px;
            height: 40px;
        }

        .product__details__cart__option {
            display: flex;
        }

        .product__details__text {
            text-align: left;
        }

        .product__details__last__option h5:before {
            content: unset;
        }

        .product__details__last__option h5 > span {
            padding-left: 0;
        }
    </style>
@endpush
