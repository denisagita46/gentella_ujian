<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Requests\RoleRequest;
use App\Http\Requests\UserCreateRequest;
use App\Models\Permission;
use App\Models\User;
use App\Models\m_jenis;
use App\Services\User\UserService;
use App\Services\aset\asetservis;
use Illuminate\Http\Request;
use Nahid\Permit\Facades\Permit;


class CreateAset extends Controller
{
   public function index() {
         return view('aset.list_aset');
    }
	
    public function create_aset(Request $request) {
         
		$m_jenis = m_jenis::all();
        return view('aset.add_aset', compact('m_jenis'));
    }
	
	public function save(UserCreateRequest $request) {

        $user = $this->userService->addNewUser($request->toArray());

        if(!$user) {
            return $this->respond("Unable to create user", 'error', 422);
        }

        return redirect(route('admin.users'))->with(['success' => "User created successfully!"]);

    }
}
