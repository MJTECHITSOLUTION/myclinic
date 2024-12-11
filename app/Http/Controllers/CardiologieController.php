<?php

namespace App\Http\Controllers;

use App\EmailSubscriber;
use App\Mail\ContactUs;
use App\Mail\ContactDemo;
use App\Utilities\Overrider;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Validator;

class CardiologieController extends Controller {

    public function __construct() {
        if (env('APP_INSTALLED', true) == true) {
            $this->middleware(function ($request, $next) {
                if (get_option('website_enable', 'yes') == 'no') {
                    return redirect('login');
                }
                if (isset($_GET['language'])) {
                    session(['language' => $_GET['language']]);
                    return back();
                }
                return $next($request);
            });

            date_default_timezone_set(get_option('timezone', 'Asia/Dhaka'));
        }
    }

    /**
     * Show the website frontpage.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        return view('theme.default.specialite.cardiologie');
    }

  

}
