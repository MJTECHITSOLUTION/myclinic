@extends('theme.default.layouts.website')

@section('content')

    {{-- push script  --}}



    <!--====== Features PART START ======-->

    <section id="my__about" class="my__about">
        <div class="container">
            <div class="row justify-content-start mt-5">
                <div class="col-lg-8">
                    <div class="section-title pb-10 " data-aos="fade-right">
                        <h4 class="title">L'innovation au service des professionnels de santé.</h4>
                        <p class="text my__text">Dans un domaine extrêmement sensible comme celui de la santé, il est crucial pour les médecins de bénéficier du même degré de confort lors de l’utilisation de leur logiciel médical que lors de l’utilisation d’autres applications. Forts de cette reconnaissance, nous avons décidé de développer le logiciel de gestion de cabinet médical en utilisant les dernières technologies afin d'offrir aux médecins la flexibilité et la simplicité requises.</p>
                    </div>
                </div>
                <div class="col-lg-4" data-aos="fade-left">
                    <div class="about-image mb-5">
                        <img src="{{ asset('public/theme/default/assets/images/doctor6.jpg') }}" alt="my__about__img" class="my__about__img">
                    </div> <!-- about image -->
                </div>
            </div>
        </div>
        <div class="wave">
            <img src="{{ asset('public/theme/default/assets/images/pngeggg.png')}}" alt="bg">
        </div>


    </section>



    <!--====== features PART ENDS ======-->


    <!--====== Features PART START ======-->

    <section id="feature" class="features-area" >
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-11">
                    <div class="section-title text-center pb-10"  data-aos="fade-up">
                        <h3 class="title    ">Notre mission est de vous offrir les meilleurs outils, qui vous aident dans votre pratique médicale quotidienne</h3>
                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">

                        @foreach(\App\Feature::all() as $feature)
                            <div class="col-md-4" data-aos="zoom-in-up">
                                <div class="features-content feature-box mt-40 d-sm-flex">
                                    <div class="features-icon">
                                        {!! strip_tags(get_array_data($feature->icon),'<i>') !!}
                                    </div>
                                    <div class="features-content media-body">
                                        <h4 class="features-title">{{ get_array_data($feature->title) }}</h4>
                                        <p class="text">{{ get_array_data($feature->content) }}</p>
                                    </div>
                                </div> <!-- features content -->
                            </div>
                        @endforeach

                    </div> <!-- row -->
                </div> <!-- row -->
            </div> <!-- row -->
        </div> <!-- conteiner -->
    </section>

    <!--====== featureS PART ENDS ======-->

    <!--======  PART START ======-->

    <section   class="features-app">
        <div class="container ">
            <div class="col-lg-11">
                <div class="section-title text-center pb-10"  data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Nous proposons des fonctionalités créatives</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-4" data-aos="fade-right" >
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-calendar"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Gestion des Rendez-vous</h4>
                                    <p class="text">Myclinic s’occupe de tout, de la prise de rendez-vous aux annulations. Urgences, visites de suivi, les consultations sont programmées en fonction de critères définis par le praticien</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-4" data-aos="fade-up">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-folder"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Gestion dossiers patients</h4>
                                    <p class="text">Afin de faciliter la consultation médicale, Myclinic vous assure un suivi détaillé du dossier médical qui englobe toutes les informations de votre patient et toutes les fonctionnalités du système</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-4"  data-aos="fade-left">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-support"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Ordonnances informatisée</h4>
                                    <p class="text">Tout en bénéficiant d’une liste de médicaments, Analysés et radios, riche extensible et à jour, vous pouvez personnaliser vos ordonnances et les imprimez en toute rapidité.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>

                        <div class="col-md-4" data-aos="fade-right">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-clipboard"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Gestion des comptes rendus</h4>
                                    <p class="text">La rédaction des comptes rendus est plus facile et rapide grâce aux modèles prédéfinis et personnalisables.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-4"  data-aos="fade-up">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-envelope"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Gestion des courriers et lettres types</h4>
                                    <p class="text">Simplifiez la gestion de vos courriers et lettres types médicales avec notre application spécialisée.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-4"  data-aos="fade-left">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-revenue"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Facturation et paiemenrs</h4>
                                    <p class="text">Suivez efficacement l'état financier de votre établissement, avec un gestion détaillé  de vos factures</p>
                                </div>
                            </div> <!-- features content -->
                        </div>

                        <div class="col-md-4" data-aos="fade-right">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <img src="{{ asset('public/theme/default/assets/images/setting.png') }}" alt="" class="i">
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Gestion et suivi des mutualistes</h4>
                                    <p class="text">Optimisez la gestion et le suivi de vos membres mutualistes avec notre application dédiée.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-4"  data-aos="fade-up">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-files"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Intégration de tous types de documents</h4>
                                    <p class="text">Centralisez vos documents médicaux en toute simplicité avec notre application polyvalente.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-4"  data-aos="fade-left">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-printer"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Impression et partage des documents</h4>
                                    <p class="text">Impression et partage simples et rapides de vos documents médicaux grâce à notre application pratique.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                    </div>
                </div>
            </div>

        </div> <!-- conteiner -->
    </section>


    <section id="specialite" style="padding-top: 200px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-11">
                    <div class="section-title text-center pb-10"  data-aos="fade-up">
                        <h3 class="title">Choisissez votre spécialité:</h3>
                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('psychologue') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon1-hover_.png') }}" alt="" class="my__img">
                                    <p class="text-center">Psychologue</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('generaliste') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon7-hover_.png') }}" alt="" class="my__img">
                                    <p class="text-center">Généraliste</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('dentaire') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon3-hover_.png') }}" alt="" class="my__img">
                                    <p class="text-center">Dentaire</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('ophtalmologue') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon11-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Ophtalmologue</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('pediatre') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon5-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Pédiatre</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('rhumataulogue') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon16-hover_.png') }}" alt="" class="my__img">
                                    <p class="text-center">Rhumataulogue</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('cardiologie') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon2-hover_.png') }}" alt="" class="my__img">
                                    <p class="text-center">Cardiologie</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('dermatolgie') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon4-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Dermatolgie</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('gastrologie') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon6-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Gastrologie</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('gynecologie') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon8-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Gynécologie</p>
                                </a>
                            </div>
                        </div>

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('kinesitherapeute') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon9-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Kinesitherapeute</p>
                                </a>
                            </div>
                        </div>


                        {{-- <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('entreprise') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon17-hover.png') }}" alt=""class="my__img">
                                    <p class="text-center">Clinique</p>
                                </a>
                            </div>
                        </div> --}}
                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('neurologue') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon10-hover.png') }}" alt="" class="my__img">

                                    <p class="text-center">Neurologue</p>
                                </a>
                            </div>
                        </div>

                        

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a  href="{{ route('orl') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon12-hover.png') }}" alt="" class="my__img">

                                    <p  class="text-center">Orl</p>

                                </a>
                            </div>
                        </div>

                        {{-- <div class="col-md-2 " data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('pediatre') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon13-hover.png') }}" alt="" class="my__img">
                                    <p class="text-center">Pédiatre</p>
                                </a>
                            </div>
                        </div> --}}

                        <div class="col-md-2" data-aos="zoom-out" data-aos-duration="3000">
                            <div class="d_flex align-items-center justify-content-center my__cat">
                                <a href="{{ route('pneumologie') }}">
                                    <img src="{{ asset('public/theme/default/assets/images/icon14-hover_.png') }}" alt="" class="my__img">
                                    <p class="text-center">Pneumologie</p>
                                </a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </section>


    <!--======  PART ENDS ======-->

    <!--====== PRICING PART START ======-->
<!--

    <section id="pricing" class="pricing-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-center pb-10"  data-aos="fade-up">
                        <h4 class="title">Chez MyClinic, on vous donne toujours le choix</h4>
                        <p class="text">Tarifs bien optimisés pour répondre à tous les besoins

                        </p>
                    </div> 
                </div>
            </div>  

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
                                    <a class="main-btn" target="_blank" href="https://tayssir.cloud/index.php?rp=/store/tayssir-digital-school/essentiel">Choisir ce plan</a>
                                @endif
                                @if($package->id==2)
                                    <a class="main-btn" target="_blank" href="https://tayssir.cloud/index.php?rp=/store/tayssir-digital-school/standard">Choisir ce plan</a>
                                @endif


                            </div>
                        </div>  
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
                                    <a class="main-btn" target="_blank" href="https://tayssir.cloud/index.php?rp=/store/tayssir-digital-school/essentiel">Démarrer</a>
                                @endif
                                @if($package->id==2)
                                    <a class="main-btn" target="_blank" href="https://tayssir.cloud/index.php?rp=/store/tayssir-digital-school/standard">Démarrer</a>
                                @endif
                                @if($package->id==3)
                                    <a class="main-btn" target="_blank" href="https://tayssir.cloud/index.php?rp=/store/tayssir-digital-school/business">Démarrer</a>
                                @endif
                            </div>
                        </div>  
                    </div>

                @endforeach

            </div>  
        </div>  
    </section>


-->





    <!--====== Pricing PART ENDS ======-->


    <!--====== CALL TO ACTION PART START ======-->
    
    <p style="margin-bottom: 100px;">

    <section id="call-to-action" class="call-to-action">
        <div class="call-action-image">
            <img src="{{ asset('public/theme/default/assets/images/call-to-action.png') }}" alt="call-to-action">
        </div>

        <div class="container-fluid">
            <div class="row justify-content-end">
                <div class="col-lg-6">
                    <div class="call-action-content text-center">
                        <h2 class="call-title">Inscrivez-vous à notre newsletter pour  rester informer de nos actualités et offres !</h2>
                        <form action="{{ url('emaiL_subscribed') }}" method="post">
                            {{ csrf_field() }}
                            <div class="call-newsletter">
                                <i class="lni lni-envelope"></i>
                                <input type="email" name="email" placeholder="votre adresse mail" required>
                                <button type="submit">S'inscrire</button>
                            </div>
                        </form>
                    </div> <!-- slider-content -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>

    <section id="my__review" class="my__review">
        <div class="container">
            <div class="row justify-content-start "  data-aos="fade-up">

                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" class="my__btns__slide" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" class="my__btns__slide" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" class="my__btns__slide" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">


                            <div class="my__item__slide">
                                {{--                            <img src="{{ asset('public/theme/default/assets/images/doctor.png') }}" alt="user" width="100px">--}}
                                <div class="my__content__slide">
                                    <h5>Dr H.Kenza (Pédiatre)</h5>
                                    <p>L'application Myclinic de gestion de cabinet médical a également renforcé la communication avec les patients. Le portail patient permet aux patients de prendre des rendez-vous en ligne et d'accéder à leurs données, ce qui simplifie leur expérience</p>
                                </div>
                            </div>

                        </div>
                        <div class="carousel-item">

                            <div class="my__item__slide">
                                {{--                            <img src="{{ asset('public/theme/default/assets/images/doctor.png') }}" alt="user" width="100px">--}}
                                <div class="my__content__slide">
                                    <h5>Dr. D.HAMZA (Ophtalmologue)</h5>
                                    <p>Cette application a considérablement amélioré l'efficacité de ma pratique. Elle simplifie la planification des rendez-vous, la gestion des dossiers médicaux et la facturation. Cela me permet de consacrer plus de temps à mes patients</p>
                                </div>
                            </div>

                        </div>
                        <div class="carousel-item">

                            <div class="my__item__slide">
                                {{--                            <img src="{{ asset('public/theme/default/assets/images/doctor.png') }}" alt="user" width="100px">--}}
                                <div class="my__content__slide">
                                    <h5>Dr. R.salma (Généraliste )</h5>
                                    <p>L'application a grandement amélioré l'efficacité de mon cabinet. Grâce à elle, je peux consacrer plus de temps à la médecine et moins à la paperasse</p>
                                </div>
                            </div>

                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">

                        <i class="lni lni-angle-double-left text-dark"></i>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">

                        <i class="lni lni-angle-double-right text-dark"></i>
                        <span class="sr-only ">Next</span>
                    </a>
                </div>

            </div>
        </div>
    </section>

    <!--====== CALL TO ACTION PART ENDS ======-->

    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">  Créez Votre Compte</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
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
                                    <label for="" class="mb-1 ml-1" style="font-size: 14px">Email <span style="color: red">*</span></label>
                                    <input type="email" class="form-control  border-none py-4 px-3" placeholder="Email" name="email">
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col">
                                    <label for="" class="mb-1  ml-1" style="font-size: 14px">Adresse <span style="color: red">*</span></label>
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
                                    <select name="sepe" id="" class="form-control  border-none py-4 px-3">
                                        <option selected disabled>-----</option>
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
                                    </select>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="main-btn btn-one">Envoyer</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>



    <!--====== CLIENT PART START ======-->

    {{--<section id="clients">

          <div class="container">

          <div class="row justify-content-center"  data-aos="fade-up">
                <div class="col-lg-8">
                    <div class="section-title text-center pb-10">
                        <h4 class="title">Ils nous font confiance</h4>
                        <p class="text">Retrouvez ici quelques-unes des écoles qui nous ont fait confiance !</p>
                    </div>
                </div>
            </div>

            <div class="row no-gutters clients-wrap clearfix wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/2-ecole-perle.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/3-ecole-matrix.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/8-ecole-ilm.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/9-ecole-guessous.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/7-ecole-ims.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/4-ecole-marguirite.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/5-ecole-louis.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/10-aljoussour.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/1-ecole-smartpng.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/11-ecole-ecosiam.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/12-ecole-integral.png') }}" class="img-fluid" alt="">
                </div>
              </div>

              <div class="col-lg-3 col-md-4 col-xs-6">
                <div class="client-logo">
                  <img src="{{ asset('public/theme/default/assets/images/13-ecole-lemajor.png') }}" class="img-fluid" alt="">
                </div>
              </div>

            </div>

          </div>

    </section>--}}





    <!--====== CLIENT PART END ======-->

    <!-- Card -->

    {{-- <div class="row justify-content-center">
            <div class="col-lg-6"  data-aos="fade-up">
                <div class="section-title text-center pb-10">
                    <h4 class="title">Découvrez les produits TAYSSIR Essayez-les gratuitement </h4>
                    <p class="text"></p>
                </div>
            </div>
        </div>
    <div class="box">
    <div class="container">
     	<div class="row">

			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-right">

					<div class="box-part text-center" style="background: #e8edfe;">

                        <img src="{{ asset('public/theme/default/assets/images/e-tayssir.png') }}" class="img-fluid" alt="eLernning platforme" style="height:120px;">

						<!--<div class="title">-->
						<!--	<h4>e-TAYSSIR</h4>-->
						<!--</div>-->

						<div class="text">
							<span>Un outil de formation en ligne que les apprenants, les instructeurs et les administrateurs vont adorer. Multi-plateformes (PC, MAC, Smartphone, Tablette,...),  commencer à construire vos cours avec e-TAYSSIR.</span>
						</div>

						<a href="#">En savoir plus</a>

					 </div>
				</div>

				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-down">

					<div class="box-part text-center" style="background: #e8edfe;">

                    <img src="{{ asset('public/theme/default/assets/images/accesParent.png') }}" class="img-fluid" alt="TAYSSIR ACCES PARENTS" style="height:120px;">


						<!--<div class="title">-->
						<!--	<h4>TAYSSIR accès parents</h4>-->
						<!--</div>-->

						<div class="text">
							<span>t-Mobile permet aux parents d'obtenir aussitôt les infos sur les absences, devoirs, emploi du temps, statut de paiement et autres infos de leurs enfants. De plus c'est aussi une messagerie contextuelle entre les parents et les acteurs de l'école.</span>
						</div>

						<a href="#">En savoir plus</a>

					 </div>
				</div>

				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-aos="fade-left">

					<div class="box-part text-center" style="background: #e8edfe;">

                    <img src="{{ asset('public/theme/default/assets/images/portDocument.png') }}" class="img-fluid" alt="TAYSSIR PORT DOCUMENTS" style="height:120px;">

						<!--<div class="title">-->
						<!--	<h4>Port documents</h4>-->
						<!--</div>-->

						<div class="text">
							<span>Vos données à tout moment et n'importe où au bureau ou en déplacement utilisez TAYSSIR PORT DOCUMENTS pour stocker et accéder en toute sécurité à vos données depuis n'importe quel appareil. Stockage extensible jusqu'à 2 To</span>
						</div>

						<a href="#">En savoir plus</a>

					 </div>
				</div>



		</div>
    </div>
    </div> --}}
    <!-- Card -->


    <!--====== CONTACT PART START ======-->

    <section id="contact" class="contact-area">
        <div class="container">
            <div class="row justify-content-center" data-aos="fade-up">
                <div class="col-lg-6">
                    <div class="section-title text-center pb-10">
                        <h4 class="title">Contactez-nous</h4>
                        <p class="text">Vous avez une question ou vous souhaitez des informations ? Merci d’entrer vos coordonnées ainsi que votre message ci-dessous, nous vous répondrons le plus rapidement possible.</p>
                    </div> <!-- section title -->
                </div>
            </div> <!-- row -->
            <div class="row justify-content-center" data-aos="fade-down">
                <div class="col-lg-8">

                    <div class="alert alert-success d-none" id="contact-message"></div>
                    <div class="contact-form">
                        <form id="contact-form" action="{{ url('contact/send_message') }}" method="post" data-toggle="validator">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="single-form form-group">
                                        <input type="text" name="name" value="{{ old('name') }}" placeholder="Nom et Prénom" data-error="Name is required." required="required">
                                        <div class="help-block with-errors"></div>
                                    </div> <!-- single form -->
                                </div>
                                <div class="col-md-6">
                                    <div class="single-form form-group">
                                        <input type="email" name="email" value="{{ old('email') }}" placeholder="Adresse E-mail" required="required">
                                        <div class="help-block with-errors"></div>
                                    </div> <!-- single form -->
                                </div>

                                <div class="col-md-12">
                                    <div class="single-form form-group">
                                        <input type="text" name="contact_phone" value="{{ old('contact_phone') }}" placeholder="Téléphone" required="required">
                                        <div class="help-block with-errors"></div>
                                    </div> <!-- single form -->
                                </div>

                                <div class="col-md-12">
                                    <div class="single-form form-group">
                                        <input type="text" name="subject" value="{{ old('subject') }}" placeholder="Sujets" data-error="Subject is required." required="">
                                        <div class="help-block with-errors"></div>
                                    </div> <!-- single form -->
                                </div>

                                <div class="col-md-12">
                                    <div class="single-form form-group">
                                        <textarea placeholder="Votre messages Ici" name="message" data-error="Please, leave us a message." required="required">{{ old('message') }}</textarea>
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
                    </div> <!-- row -->
                </div>
            </div> <!-- row -->
        </div> <!-- conteiner -->
    </section>

    <!-- Button trigger modal -->




    <!--====== CONTACT PART ENDS ======-->

@endsection
