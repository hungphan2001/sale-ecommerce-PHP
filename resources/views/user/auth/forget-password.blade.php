@extends('user.auth.main', [
    'route' => route('forgetPassword'),
    'title' => 'Quên mật khẩu',
])
@section('content')
    <div class="form-group mb-3">
        @php
            $email = session()->has('email') ? session()->get('email') : old('email', request()->email)
        @endphp
        <label class="label" for="name">Email</label>
        <input type="text" name="email" class="form-control" placeholder="Email" value="{{ $email }}">
        @error('email')
        <small class="form-text text-danger">{{ $message }}</small>
        @enderror
    </div>
    <div class="form-group">
        <button type="submit" class="form-control btn btn-primary rounded submit px-3">
            Gửi link reset mật khẩu
        </button>
        @error('error')
        <small class="form-text text-danger">{{ $message }}</small>
        @enderror
    </div>
@endsection

@section('hint')
    <p class="text-center mt-3"><a style="color: #e3b04b" href="{{ route('login.form') }}">Quay lại đăng nhập</a></p>
@endsection
