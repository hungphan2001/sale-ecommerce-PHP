@extends('user.auth.main', [
    'route' => route('resetPassword'),
    'title' => 'Đặt lại mật khẩu',
])
@section('content')
    <input type="hidden" name="token" value="{{ $token }}">
    <div class="form-group mb-3">
        <label class="label" for="name">Email</label>
        <input type="text" name="email" class="form-control" placeholder="Email" value="{{ $email }}">
        @error('email')
        <small class="form-text text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group mb-3">
        <label class="label" for="password">Mật khẩu</label>
        <input type="password" name="password" class="form-control" placeholder="Mật khẩu">
        @error('password')
        <small class="form-text text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group mb-3">
        <label class="label" for="password">Xác nhận mật khẩu</label>
        <input type="password" name="password_confirmation" class="form-control" placeholder="Xác nhận mật khẩu">
        @error('password')
        <small class="form-text text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group">
        <button type="submit" class="form-control btn btn-primary rounded submit px-3">
            Đặt lại mật khẩu
        </button>
        @error('error')
        <small class="form-text text-danger">{{ $message }}</small>
        @enderror
    </div>
@endsection

@section('hint')
    <p class="text-center mt-3"><a style="color: #e3b04b" href="{{ route('login.form') }}">Quay lại đăng nhập</a></p>
@endsection


