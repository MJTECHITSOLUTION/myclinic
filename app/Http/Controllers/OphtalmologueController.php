<?php

namespace App\Http\Controllers;



class OphtalmologueController extends Controller {

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
        return view('theme.default.specialite.ophtalmologue');
    }

  

}
