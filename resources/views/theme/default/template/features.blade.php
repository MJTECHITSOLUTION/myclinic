@extends('theme.default.layouts.website')

@section('header')
    <div class="page-hero bg_cover" style="background-image: url({{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/'.get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }})">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-10">
                    <div class="header-content text-center">
                        <h3 class="header-title">Fonctionnalités</h3>
                    </div> <!-- header content -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div> <!-- header content -->
@endsection

@section('content')

    <!--====== Features PART START ======-->

    <section id="feature" class="features-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">

                        <section   class="features-app">
                            <div class="container ">
                                <div class="col-lg-11">
                                    <div class="section-title text-center pb-10"  data-aos="fade-up">
                                        <h3 class="title text-center  pl-5 ">Nous proposons des fonctionalités créatives</h3>
                                        <p class="text">Conçu spécialement pour satisfaire les besoins spécifiques de chaque médecin afin d’assurer les opérations quotidiennes</p>
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
                                                        <p class="text">MyClinic  s’occupe de tout, de la prise de rendez-vous aux annulations. Urgences, visites de suivi, les consultations sont programmées en fonction de critères définis par le praticien</p>
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
                                                        <p class="text">Afin de faciliter la consultation médicale, MyClinic vous assure un suivi détaillé du dossier médical qui englobe toutes les informations de votre patient et toutes les fonctionnalités du système</p>
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


                    </div> <!-- row -->
                </div> <!-- row -->
            </div> <!-- row -->
        </div> <!-- conteiner -->
    </section>

    <!--====== featureS PART ENDS ======-->

@endsection
