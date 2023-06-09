<?php

namespace App\Repositories\User;

use App\Models\User;
use App\Repositories\Base\BaseRepository;

class UserRepository extends BaseRepository implements UserRepositoryInterface {
    public function __construct(User $model)
    {
        parent::__construct($model);
    }

    public function findByEmail($email)
    {
        // TODO: Implement findByEmail() method.
        return $this->model->where('email', $email)->first();
    }
}
