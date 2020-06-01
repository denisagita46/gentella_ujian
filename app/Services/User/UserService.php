<?php
namespace App\Services\User;

use App\Repositories\UserRepository;

class UserService
{
protected $userRepository;

   
    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;

    }

    public function getAllUsers($request) {

        try {

            $data = $this->userRepository->getAllUserWithPagination();
            return $data;
        } catch (\Exception $e) {

        }
    }
    public function getUsers($request) {

        try {

            $data = $this->userRepository->getAllUsers();
            return $data;
        } catch (\Exception $e) {

        }
    }


    public function addNewUser($data) {

        try{
            $result = $this->userRepository->saveUser($data);

            return $result;
        } catch (\Exception $e) {
            dd($e);
        }
    }
	public function all($request)
    {
        return users::all();
    }


}