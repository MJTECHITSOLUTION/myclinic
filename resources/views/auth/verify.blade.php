@extends('layouts.login')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card card-signin my-5">
                <div class="card-header text-center"><h1>Validation d'inscription</h1> </div>

                <div class="card-body text-center">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ _lang('A fresh verification link has been sent to your email address.') }}
                        </div>
                    @endif
                    <h2>Votre demande est prise en compte.</h2><br>  <h3>Veuillez cliquer sur   le bouton <b>Vérifier votre email</b>  sur votre e-mail de vérification </h3> <br>

                    <br><br><a href="https://ecole.tayssir.cloud" class="btn btn-primary" role="button" aria-disabled="true">Accueil</a>
                    <a href="https://demo.tayssir.cloud" target="_blank" class="btn btn-primary" role="button" aria-disabled="true">Accès DEMO</a>
                    

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
