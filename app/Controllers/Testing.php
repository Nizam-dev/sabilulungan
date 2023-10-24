<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\User;

class Testing extends BaseController
{
    public function index()
    {
        $data =new User();

    // dd($data->get()->getResult());
        return view('dashboard');
    }
}
