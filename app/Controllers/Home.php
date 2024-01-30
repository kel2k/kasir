<?php

namespace App\Controllers;

use App\Models\M_model;

class Home extends BaseController
{
    public function index()
    {
        echo view('/template/header');
        echo view('/template/menu');
        echo view('/template/footer');
    }
    }