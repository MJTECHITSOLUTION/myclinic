@extends('theme.default.layouts.website')

@section('header')
<div class="page-hero bg_cover" style="background-image: url({{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/'.get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }})">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-8 col-lg-10">
				<div class="header-content text-center">
					<h3 class="header-title"> Créez Votre Compte</h3>
				</div> <!-- header content -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> <!-- header content -->
@endsection

@section('content')

<!--====== Contact PART START ======-->

<section id="" class="general-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center pb-10">
                    <h4 class="title">Laissez-nous votre information</h4>
                    <p class="text">Nous vous recontacterons.</p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="alert alert-success d-none" id="contact-message"></div>

                <div class="contact-form">
                    <form action="{{ url('contact/send_info_data') }}" method="post" data-toggle="validator">
                        {{ csrf_field() }}
                        <div class="modal-body">

                            <div class="row mb-4">
                                <div class="col">
                                    <label for="" class="mb-1 ml-1" style="font-size: 14px">Prénom <span style="color: red">*</span></label>
                                    <input type="text" class="form-control  border-none py-4 px-3" placeholder="Prénom" name="prenom">
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="col">
                                    <label for="" class="mb-1 ml-1" style="font-size: 14px">Nom <span style="color: red">*</span></label>
                                    <input type="text" class="form-control  border-none py-4 px-3" placeholder="Nom" name="nom">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <label for="" class="mb-1 ml-1" style="font-size: 14px">Email <span style="color: red"></span></label>
                                    <input type="email" class="form-control  border-none py-4 px-3" placeholder="Email" name="email">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <label for="" class="mb-1  ml-1" style="font-size: 14px">Adresse <span style="color: red"></span></label>
                                    <input type="text" class="form-control  border-none py-4 px-3" placeholder="Addresse" name="addresse">
                                </div>
                                <div class="col">
                                    <label for="" class="mb-1 ml-1" style="font-size: 14px">Ville <span style="color: red">*</span></label>
                                    <input type="text" class="form-control  border-none py-4 px-3" placeholder="Ville" name="ville">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <label for="" class="mb-1  ml-1" style="font-size: 14px">Téléphone <span style="color: red">*</span></label>
                                    <input type="text" class="form-control  border-none py-4 px-3" placeholder="Téléphone"
                                        name="contact_phone">
                                    <div class="help-block with-errors"></div>
                                </div>
                                <div class="col">
                                    <label for="" class="mb-1 ml-1" style="font-size: 14px" name="sepe">Sepécialité <span style="color: red">*</span></label>
                                    <select name="sepe" id="" class="form-control">
                                        <option selected disabled>Séléctionnez votre spécialité </option>
                                        <option value="Psychologue">Psychologue</option>
                                        <option value="Cardiologie">Cardiologie</option>
                                        <option value="Dentaire">Dentaire</option>
                                        <option value="Pédiatre">Pédiatre</option>
                                        <option value="Gastrologie">Gastrologie</option>
                                        <option value="Généraliste">Généraliste</option>
                                        <option value="Gynécologie">Gynécologie</option>
                                        <option value="Kinesitherapeute">Kinesitherapeute</option>
                                        <option value="Clinique">Clinique</option>
                                        <option value="Neurologue">Neurologue</option>
                                        <option value="Ophtalmologue">Ophtalmologue</option>
                                        <option value="Orl">Orl</option>
                                        <option value="Neurologue">Neurologue</option>
                                        <option value="Rhumataulogue">Rhumataulogue</option>
                                        <option value="Autre">Autre</option>
                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="main-btn btn-one">Envoyer</button>
                        </div>
                    </form>
                </div> <!-- contact-form -->
            </div> <!-- row -->
        </div> <!-- row -->
    </div> <!-- conteiner -->
</section>

<!--====== Contact PART ENDS ======-->


@endsection
