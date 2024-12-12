@extends('theme.default.layouts.website')

@section('header')
<div class="page-hero bg_cover" style="background-image: url({{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/'.get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }})">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-8 col-lg-10">
				<div class="header-content text-center">
					<h3 class="header-title">Plans et Tarifs</h3>
				</div> <!-- header content -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> <!-- header content -->
@endsection

@section('content')

<!--====== PRICING PART START ======-->

<section id="pricing" class="pricing-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="section-title text-center pb-10"  data-aos="fade-up">
                    <h4 class="title">Chez MyClinic, on vous donne toujours le choix</h4>
                    <p class="text">Tarifs bien optimisés pour répondre à tous les besoins

                    </p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->

        <div class="row mt-4">
            <div class="col-md-12 text-center">
                <button class="btn btn-primary btn-xs" id="btn-monthly">Plan mensuel</button>
                <button class="btn btn-outline-info btn-xs" id="btn-yearly">Plan annuel</button>
            </div>
        </div>


        <div class="row justify-content-center">
            @php $currency = currency(get_option('currency','USD')); @endphp

            @foreach(\App\Package::all() as $package)
                <div class="col-lg-4 col-md-7 col-sm-9 monthly-package " data-aos="fade-right">
                    <div class="single-pricing {{ $package->is_featured == 1 ? 'pro' : '' }} mt-40">

                        @if($package->is_featured )
                            <div class="pricing-baloon">
                                <img src="{{ asset('public/theme/default/assets/images/baloon.svg') }}" alt="baloon">
                            </div>
                        @endif

                        <div class="pricing-header {{ $package->is_featured == 1 ? '' : 'text-center' }}">


                            @if($package->id==1)
                                <h5 class="sub-title">{{ $package->package_name }}</h5>
                                <span class="price">{{ g_decimal_place($package->cost_per_month, $currency) }}</span>
                                <p class="year">Mensuel</p>
                            @endif
                            @if($package->id==2)
                                <h5 class="sub-title">{{ $package->package_name }}</h5>
                                <span class="price">{{ g_decimal_place($package->cost_per_month, $currency) }}</span>
                                <p class="year">Mensuel</p>
                            @endif
                        </div>
                        <div class="pricing-list">
                            <ul>

                                @if($package->id==1)
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des patients</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rendez-vous</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion salle d'attente</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des dossiers médicaux</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Prescription électronique</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des consultations</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des comptes rendus</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion courriers et lettres types</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Suivi des états des paiements</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion et suivi des mutualistes</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Intégration tous types de documents</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des autorisations d'accès</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Fonctionnalités de téléconsultation</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Communication et portail patient</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Sécurité et conformité</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rapports</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des stocks</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Administration & Paramétrage</li>
                                    <li><i class='lni lni-popup' style="color:orange;"></i>Frais d'installation non inclus</li>

                                @endif
                                @if($package->id==2)
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des patients</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rendez-vous</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion salle d'attente</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des dossiers médicaux</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Prescription électronique</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des consultations</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des comptes rendus</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion courriers et lettres types</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Suivi des états des paiements</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion et suivi des mutualistes</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Intégration tous types de documents</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des autorisations d'accès</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Fonctionnalités de téléconsultation</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Communication et portail patient</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Sécurité et conformité</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rapports</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des stocks</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Administration & Paramétrage</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Frais d'installation inclus</li>
                                @endif


                            </ul>
                        </div>
                        <div class="pricing-btn text-center">
                            @if($package->id==1)
                                <a class="main-btn" href="https://api.whatsapp.com/send?phone=212659857238&text=Bonjour%2C%20je%20veux%20avoir%20plus%20d%27informations%20sur%20Myclinic." target="_blank">Choisir ce plan</a>
                            @endif
                            @if($package->id==2)
                                <a class="main-btn" href="https://api.whatsapp.com/send?phone=212659857238&text=Bonjour%2C%20je%20veux%20avoir%20plus%20d%27informations%20sur%20Myclinic." target="_blank">Choisir ce plan</a>
                            @endif


                        </div>
                    </div> <!-- single pricing -->
                </div>



                <div class="col-lg-4 col-md-7 col-sm-9 yearly-package">
                    <div class="single-pricing {{ $package->is_featured == 1 ? 'pro' : '' }} mt-40">

                        @if($package->is_featured )
                            <div class="pricing-baloon">
                                <img src="{{ asset('public/theme/default/assets/images/baloon.svg') }}" alt="baloon">
                            </div>
                        @endif

                        <div class="pricing-header {{ $package->is_featured == 1 ? '' : 'text-center' }}">
                            <h5 class="sub-title">{{ $package->package_name }}</h5>
                            <span class="price">{{ g_decimal_place($package->cost_per_year, $currency) }}</span>
                            @if($package->id==1)
                                <p class="year">Annuel</p>
                            @else
                                <p class="year">Annuel</p>
                            @endif
                        </div>
                        <div class="pricing-list">
                            <ul>

                                @if($package->id==1)
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des patients</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rendez-vous</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion salle d'attente</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des dossiers médicaux</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Prescription électronique</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des consultations</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des comptes rendus</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion courriers et lettres types</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Suivi des états des paiements</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion et suivi des mutualistes</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Intégration tous types de documents</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des autorisations d'accès</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Fonctionnalités de téléconsultation</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Communication et portail patient</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Sécurité et conformité</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rapports</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des stocks</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Administration & Paramétrage</li>
                                    <li><i class='lni lni-popup' style="color:orange;"></i>Frais d'installation non inclus</li>

                                @endif
                                @if($package->id==2)
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des patients</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rendez-vous</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion salle d'attente</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des dossiers médicaux</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Prescription électronique</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des consultations</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des comptes rendus</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion courriers et lettres types</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Suivi des états des paiements</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion et suivi des mutualistes</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Intégration tous types de documents</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des autorisations d'accès</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Fonctionnalités de téléconsultation</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Communication et portail patient</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Sécurité et conformité</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des rapports</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Gestion des stocks</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Administration & Paramétrage</li>
                                    <li><i class='lni lni-checkmark-circle'></i>Frais d'installation inclus</li>
                                @endif

                            </ul>
                        </div>
                        <div class="pricing-btn text-center">
                            @if($package->id==1)
                                <a class="main-btn" href="https://api.whatsapp.com/send?phone=212659857238&text=Bonjour%2C%20je%20veux%20avoir%20plus%20d%27informations%20sur%20Myclinic." target="_blank">Démarrer</a>
                            @endif
                            @if($package->id==2)
                                <a class="main-btn" href="https://api.whatsapp.com/send?phone=212659857238&text=Bonjour%2C%20je%20veux%20avoir%20plus%20d%27informations%20sur%20Myclinic." target="_blank">Démarrer</a>
                            @endif
                            @if($package->id==3)
                                <a class="main-btn" href="https://api.whatsapp.com/send?phone=212659857238&text=Bonjour%2C%20je%20veux%20avoir%20plus%20d%27informations%20sur%20Myclinic." target="_blank">Démarrer</a>
                            @endif
                        </div>
                    </div> <!-- single pricing -->
                </div>

            @endforeach

        </div> <!-- row -->
    </div> <!-- conteiner -->
</section>

<!--====== Pricing PART ENDS ======-->

@endsection
