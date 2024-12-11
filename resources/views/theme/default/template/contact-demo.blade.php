@extends('theme.default.layouts.website')

@section('header')
<div class="page-hero bg_cover" style="background-image: url({{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/'.get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }})">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-8 col-lg-10">
				<div class="header-content text-center">
					<h3 class="header-title">Contactez nous</h3>
				</div> <!-- header content -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> <!-- header content -->
@endsection

@section('content')

<!--====== Contact PART START ======-->

<section id="contact" class="general-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center pb-10">
                    <h4 class="title">Laissez-nous un message…</h4>
                    <p class="text">Vous avez une question ou vous souhaitez des informations ? Merci d’entrer vos coordonnées ainsi que votre message ci-dessous, nous vous répondrons le plus rapidement possible.</p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="alert alert-success d-none" id="contact-message"></div>

                <div class="contact-form">
                    <form id="contact-form" action="{{ route('message.demo') }}" method="post" data-toggle="validator">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-6">
                                <div class="single-form form-group">
                                    <input type="text" name="name" value="{{ old('name') }}" placeholder="Nom et prénom" data-error="Le nom est obligatoire." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-6">
                                <div class="single-form form-group">
                                    <input type="email" name="email" value="{{ old('email') }}" placeholder="Adresse mail">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <input type="text" name="telephone" value="{{ old('telephone') }}" placeholder="Num de téléphone" data-error="Le num de téléphone est obligatoire." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <input type="text" name="ecole" value="{{ old('ecole') }}" placeholder="Nom d'école" data-error="Nom d'école obligatoire." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>

                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <input type="text" name="ville" value="{{ old('ville') }}" placeholder="La ville" data-error="Le nom de la ville est obligatoire." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <input type="text" name="subject" value="{{ old('subject') }}" placeholder="Sujet" data-error="Le sujet est obligatoire." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <textarea placeholder="Votre message Ici ..." name="message" data-error="Please, leave us a message." required="required">{{ old('message') }}</textarea>
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <p class="form-message"></p>
                            <div class="col-md-12">
                                <div class="single-form form-group text-center">
                                    <button type="submit" class="main-btn">Envoyer</button>
                                </div> <!-- single form -->
                            </div>
                        </div> <!-- row -->
                    </form>
                </div> <!-- contact-form -->
            </div> <!-- row -->
        </div> <!-- row -->
    </div> <!-- conteiner -->
</section>

<!--====== Contact PART ENDS ======-->


@endsection
