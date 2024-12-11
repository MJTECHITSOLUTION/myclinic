@extends('layouts.login')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card card-signin my-5">
                <div class="login-form-head">
                    <h4>{{ _lang('Sign In') }}</h4>
                </div>
                <div class="card-body">

                    @if(Session::has('error'))
                        <div class="alert alert-danger text-center">
                            <strong>{{ session('error') }}</strong>
                        </div>
                    @endif

					@if(Session::has('registration_success'))
                        <div class="alert alert-success text-center">
                            <strong>{{ session('registration_success') }}</strong>
                        </div>
                    @endif

                    <img class="logo" src="{{ get_logo() }}">
					<form method="POST" class="form-signin" action="{{ route('login') }}">
                        @csrf

                        <div class="form-group row">
                            <div class="col-md-12">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="{{ _lang('Email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>Compte invalide</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
						    <div class="col-md-12">

								<input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="{{ _lang('Password') }}" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>Votre mot de passe est incorrect !</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group row mb-0">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-block">
                                    {{ _lang('Login') }}
                                </button>
                            </div>
                        </div>

                        <div class="form-group row" style="padding-top: 20px;">
                            <div class="col-md-12">
							    <a class="btn-link" target="_blank" href="https://docteur.tayssir.cloud/site/pricing">
									Créez votre serveur
								</a>
								<!--<a class="btn-link" href="{{ route('password.request') }}"> -->
								<!--	{{ _lang('Forgot Password?') }} -->
								<!-- </a> -->
							</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
