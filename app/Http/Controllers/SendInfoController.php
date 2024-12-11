<?php

namespace App\Http\Controllers;


use Auth;
use Validator;
use App\Mail\SendInfo;
use App\Mail\ContactUs;
use App\EmailSubscriber;
use App\Mail\ContactDemo;
use App\Mail\SendInfoDemo;
use App\Utilities\Overrider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;


class SendInfoController extends Controller
{

    public function __construct()
    {
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

    public function index()
    {
        return view('theme.default.template.send-info');
    }

    public function index2()
    {
        return view('theme.default.template.send-info-demo');
    }


    public function send_info_data(Request $request)
    {
        @ini_set('max_execution_time', 0);
        @set_time_limit(0);
        Overrider::load("Settings");

        $this->validate($request, [
            'prenom'    => 'required',
            'nom'   => 'required',
            'email' => 'email',
            'contact_phone' => 'required',
            'ville' => 'required',
            'addresse' => '',
            'sepe' => 'required'
        ]);

        //Send Email
        $prenom    = $request->input("prenom");
        $nom   = $request->input("nom");
        $email = $request->input("email");
        $contact_phone = $request->input("contact_phone");
        $ville = $request->input("ville");
        $addresse = $request->input("addresse");
        $sepe = $request->input("sepe");

        $mail          = new \stdClass();
        $mail->prenom    = $prenom;
        $mail->nom   = $nom;
        $mail->email = $email;
        $mail->contact_phone = $contact_phone;
        $mail->ville = $ville;
        $mail->addresse = $addresse;
        $mail->sepe = $sepe;

        if (get_option('contact_email') != '') {
            try {
                Mail::to('mjtechsolutioncommande@gmail.com')->send(new SendInfo($mail));
                return redirect('/')->with('success', 'Votre message a été envoyé avec succès');

                // echo json_encode(array('result' => true, 'message' => _lang('Your Message send sucessfully.')));
            } catch (\Exception $e) {
                // Return a response indicating the error
                echo json_encode(array('result' => false, 'message' => _lang('Error Occured, Please try again !')));
            }
        }
    }

    public function send_info_data_demo(Request $request)
    {
        @ini_set('max_execution_time', 0);
        @set_time_limit(0);
        Overrider::load("Settings");

        $this->validate($request, [
            'prenom'    => 'required',
            'nom'   => 'required',
            'contact_phone' => 'required',
            'date' => 'required',
            'hours' => 'required',
            'sepe' => 'required'
        ]);

        //Send Email
        $prenom    = $request->input("prenom");
        $nom   = $request->input("nom");
        $contact_phone = $request->input("contact_phone");
        $date = $request->input("date");
        $hours = $request->input("hours");
        $sepe = $request->input("sepe");

        $mail          = new \stdClass();
        $mail->prenom    = $prenom;
        $mail->nom   = $nom;
        $mail->contact_phone = $contact_phone;
        $mail->date = $date;
        $mail->hours = $hours;
        $mail->sepe = $sepe;


        if (get_option('contact_email') != '') {
            try {
                Mail::to('mjtechsolutioncommande@gmail.com')->send(new SendInfoDemo($mail));
                return redirect('/')->with('success', 'Votre message a été envoyé avec succès');

                // echo json_encode(array('result' => true, 'message' => _lang('Your Message send sucessfully.')));
            } catch (\Exception $e) {
                // Return a response indicating the error
                echo json_encode(array('result' => false, 'message' => _lang('Error Occured, Please try again !')));
            }
        }
    }
}
