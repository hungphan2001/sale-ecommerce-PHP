<?php
namespace App\Services;

use App\Repositories\User\UserRepositoryInterface;
use Illuminate\Support\Facades\Hash;
use App\Traits\HandleImage;

class UserService {
    use HandleImage;

    protected UserRepositoryInterface $userRepository;

    public function __construct(UserRepositoryInterface $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function create($request)
    {
        $userInfo = $request->all();
        $userInfo['password'] = Hash::make($request->password);

        return $this->userRepository->create($userInfo);
    }

    public function findByEmail($email)
    {
        return $this->userRepository->findByEmail($email);
    }

    public function update($request, $id)
    {
        $data = $request->all();
        $user = $this->userRepository->find($id);
        $user->update($data);

        return $user;
    }

    public function updateAvatar($request, $id)
    {
        $user = $this->userRepository->find($id);
        $currentAvatar = $user->avatar;
        $this->path = 'uploads/avatar/';
        $newAvatar = $this->updateImage($request, $currentAvatar);
        $user->avatar = $newAvatar;
        $user->save();

        return $user;
    }

    public function deleteAvatar($id)
    {
        $user = $this->userRepository->find($id);
        if(!is_null($user->avatar)) {
            $this->path = 'uploads/avatar';
            $this->deleteImage($user->avatar);
            $user->avatar = null;
            $user->save();
        }

        return $user;
    }
}
