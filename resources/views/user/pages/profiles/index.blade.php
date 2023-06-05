@extends('user.layouts.master')

@section('content')
    <div class="mt-4 pt-4 pb-4" style="background: #f3f2ee">
        <div class="container">
            <div class="row">
                <div class="col col-xl-4 col-12 col-sm-12 col-md-4 mb-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="avatar">
                                <div class="img">
                                    <img src="{{ get_avatar_user(auth()->user()->avatar) }}" alt="avatar">
                                </div>
                            </div>
                            <div class="name-user mb-5">
                                <p class="h3">{{ auth()->user()->name }}</p>
                            </div>
                            <div class="group-btn">
                                <button class="btn btn-sm btn-outline-success position-relative">
                                    Thay ảnh đại diện
                                    <input type="file" name="avatar" class="position-absolute"
                                           style="opacity: 0;width: 100%;left: 0;top: 0;height: 100%;"
                                           data-route="{{ route('me.updateAvatar', auth()->user()->id) }}"
                                           id="avatar-input">
                                </button>

                                <button class="btn btn-sm btn-outline-danger"
                                        id="btn-remove-avatar" data-route="{{ route('me.deleteAvatar', auth()->user()->id) }}">Xoá ảnh đại diện</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col col-xl-8 col-12 col-sm-12 col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <form id="form-update-info-user" action="{{ route('me.update', auth()->user()->id) }}">
                                <div class="action-btn text-right">
                                    <button type="button"
                                            class="btn btn-sm btn-outline-warning" id="btn-edit-info">Sửa</button>
                                </div>
                                <div class="information-user mt-4">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <span class="label">Email</span>
                                            <span>{{ auth()->user()->email }}</span>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="label">Họ và tên</span>
                                            <span class="value" data-name="name">{{ auth()->user()->name }}</span>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="label">Số điện thoại</span>
                                            <span class="value" data-name="phone">{{ auth()->user()->phone }}</span>
                                        </li>
                                        <li class="list-group-item">
                                            <span class="label">Địa chỉ</span>
                                            <span class="value" data-name="address">{{ auth()->user()->address }}</span>
                                        </li>
                                    </ul>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('css')
    <style>
        .information-user > .list-group >
        .list-group-item > span.label{ display: inline-block; min-width: 200px; }
        button:focus {outline: none; box-shadow: unset !important;}
        .input-info { width: auto; display: inline-block; }
        .avatar {display: flex; justify-content: center; align-items: center}
        .avatar > .img {width: 200px; height: 200px; border-radius: 50%; overflow: hidden}
        .avatar > .img > img {height: 100%; object-fit: cover}
    </style>
@endpush
@push('js')
    <script src="{{ asset('js/user/user.js') }}"></script>
@endpush
