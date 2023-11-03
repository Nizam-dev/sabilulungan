<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\User;

class Login extends BaseController
{
    public function index()
    {
        return view('auth/login');
    }

    public function register()
    {
        return view('auth/register');
    }

    public function register_post()
    {
        $rules = [
            'name'=>'required',
            'email'=>'required|is_unique[user.email]',
            'password'=>'required',
            'confirm_password'=>'matches[password]',

        ];

       if(!$this->validate($rules)){
            $rules = $this->validator->listErrors();
            return view('auth/register',['rules'=>$rules]);
       }
       $user = new User();
       $data = $this->request->getPost();
       unset($data['confirm_password']);
       $data['password'] = password_hash($data['password'],PASSWORD_DEFAULT); 
       $data['role_id']='6';
       $user->save($data);
       session()->setFlashdata('success',"Berhasil Mendaftar Silahkan Login");
       return redirect()->to(base_url('login'));
    }

    public function login_post()
    {
        $user = new User();
        $finduser = $user->where('email',$this->request->getVar('email'))->first();
        if($finduser){
            if(password_verify($this->request->getVar('password'),$finduser['password'])){
                $finduser['isLogin'] = true;
                session()->setFlashdata('success',"Berhasil Login");
                session()->set($finduser);
                return redirect()->to(base_url('/'));
            }else{
                    session()->setFlashdata('error',"Password salah");
                    return redirect()->to(base_url('login'));
            }
        }else{
           session()->setFlashdata('error',"Email tidak ditemukan");
           return redirect()->to(base_url('login'));
        }

    }

    public function logout()
    {
        session()->destroy();
        session()->setFlashdata('success',"Berhasil Logout");
        return redirect()->to(base_url('/'));
    }
}
