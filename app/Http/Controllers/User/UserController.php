<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Mail\ResetPassword;
use App\Services\UserService;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class UserController extends Controller
{
    protected UserService $userService;
    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function formForget()
    {
        return view('user.auth.forget-password');
    }

    public function forget(Request $request)
    {
        try {
            DB::beginTransaction();
            $request->validate([
                'email' => 'required|email|exists:users,email'
            ]);

            $token = Str::random(64);
            $email = $request->email;

            DB::table('password_resets')->insert([
                'email' => $email,
                'token' => $token,
                'created_at' => now()
            ]);
            $dataSendMail = [
                'route' => route('resetPassword.form', compact('token', 'email')),
                'email' => $email
            ];
            Mail::to($email)->send(new ResetPassword($dataSendMail));
            DB::commit();

            return redirect()->back()->with('message-success', 'Kiểm tra email của bạn!');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()->with('message-error', 'Có lỗi xảy ra vui lòng thử lại!');
        }
    }

    public function formReset(Request $request, $token)
    {
        $email = $request->email;
        return view('user.auth.reset-password', compact('email', 'token'));
    }

    public function reset(Request $request)
    {
        try {
            DB::beginTransaction();
            $request->validate([
                'email' => 'email',
                'password' => 'required|confirmed|min:8'
            ]);

            $token = DB::table('password_resets')->where([
                'email' => $request->email,
                'token' => $request->token
            ])->first();

            if(!$token) {
                return redirect()->back()->with('message-error', 'token không tồn tại');
            }

            $user = $this->userService->findByEmail($request->email);
            $user->password = Hash::make($request->password);
            $user->update();

            DB::table('password_resets')->where([
                'email' => $request->email,
                'token' => $request->token
            ])->delete();
            DB::commit();

            return redirect()->route('login.form')->with([
                'email' => $request->email,
                'message-success' => 'Đặt lại mật khẩu thành công'
            ]);
        } catch (\Exception $e) {
            return redirect()->back()->with('message-error', 'Có lỗi xảy ra!!');
        }
    }

    public function me()
    {
        return view('user.pages.profiles.index');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'digits:10|nullable',
            'address' => 'max:30'
        ]);

        try {
            DB::beginTransaction();
            $user = $this->userService->update($request, $id);
            DB::commit();

            return response()->json([
                'status' => Response::HTTP_OK,
                'message' => 'Sửa thông tin thành công',
                'user' => $user
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'status' => Response::HTTP_INTERNAL_SERVER_ERROR,
                'message' => 'Sửa thông tin thất bại'
            ]);
        }
    }

    public function updateAvatar(Request $request, $id)
    {
        try {
            DB::beginTransaction();
            $user = $this->userService->updateAvatar($request, $id);
            DB::commit();

            return response()->json([
                'status' => Response::HTTP_OK,
                'message' => 'Cập nhật ảnh đại diện thành công',
                'avatar' => get_avatar_user($user->avatar)
            ]);
        }  catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'status' => Response::HTTP_INTERNAL_SERVER_ERROR,
                'message' => 'Cập nhật thất bại'
            ]);
        }
    }

    public function deleteAvatar($id)
    {
        try {
            DB::beginTransaction();
            $user = $this->userService->deleteAvatar($id);
            DB::commit();

            return response()->json([
                'status' => Response::HTTP_OK,
                'message' => 'Xoá ảnh đại diện thành công',
                'avatar' => get_avatar_user($user->avatar)
            ]);
        } catch (\Exception $e) {
            DB::rollBack();

            return response()->json([
                'status' => Response::HTTP_INTERNAL_SERVER_ERROR,
                'message' => 'Xoá thất bại'
            ]);
        }
    }
}
