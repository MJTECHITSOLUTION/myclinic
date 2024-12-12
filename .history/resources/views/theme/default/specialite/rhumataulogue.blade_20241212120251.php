@extends('theme.default.layouts.website')

@section('header')
    <div class="page-hero bg_cover"
        style="background-image: url({{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/' . get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }})">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-10">
                    <div class="header-content text-center">
                        <h3 class="header-title">
                            Rhumataulogue</h3>
                    </div> <!-- header content -->
                </div>
            </div> <!-- row -->
            <div class="row justify-content-center mt-4">
                <div class="col-xl-8 col-lg-10 d-flex justify-content-center">

                    <div class="mr-4">
                        <a class="main-btn btn-one" href="{{ route('send.info.demo') }}" href="#specialite">
                            Demmandez une démonstration
                        </a>
                    </div>

                    {{-- <div>
                        <a href="" class="main-btn btn-one">
                            Accsses démo
                        </a>
                    </div> --}}

                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div> <!-- header content -->
@endsection

@section('content')
    <!--====== About PART START ======-->

    <section class="features-app">
        <div class="container ">
            <div class="col-lg-11">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 "></h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-3" data-aos="fade-right" data-aos-duration="2500">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-calendar"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Installation</h4>
                                    <p class="text">L’installation et le paramétrage de votre logiciel est fait par notre
                                        équipe technique sur site ou à distance</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-3" data-aos="fade-up" data-aos-duration="2500">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-folder"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Formation</h4>
                                    <p class="text">Une formation personnalisée à chaque utilisateur ( formation
                                        téléphonique et en ligne, formation sur site, formation dans nos locaux.)</p>
                                </div>
                            </div> <!-- features content -->
                        </div>
                        <div class="col-md-3" data-aos="fade-up" data-aos-duration="2500">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-support"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Assistance</h4>
                                    <p class="text">Un SAV illimité et inclus dans votre redevance d’utilisation.
                                        Disponible 6j/7 de 8h30 à 17h30.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>

                        <div class="col-md-3" data-aos="fade-left" data-aos-duration="2500">
                            <div class="features-content feature-box mt-40 d-sm-flex">
                                <div class="features-icon">
                                    <i class="lni lni-clipboard"></i>
                                </div>
                                <div class="features-content media-body">
                                    <h4 class="features-title">Évolution</h4>
                                    <p class="text">Bénéficiez chaque année d’au moins une mise à jour apportant de
                                        nouvelles fonctionnalités.</p>
                                </div>
                            </div> <!-- features content -->
                        </div>

                    </div>
                </div>
            </div>

        </div> <!-- conteiner -->
    </section>

    <section class="    features-area">
        <div class="container ">
            <div class="col-lg-12 mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Gestion de l’agenda</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen6.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>
                        <div class="col-md-5 offset-1" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px;margin-bottom: 15px">
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Gestion des rendez-vous
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Gestion des salles d’attentes
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Gestion de la liste d’attente
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Rappels des prochains rendez-vous
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Liste des visites actives
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Historique des visites journalières
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>


    <section class="features-area my__bg">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Fiche patient</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">

                        <div class="col-md-6" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px;margin-bottom: 15px ">
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        iches patients complètes
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue"></i>
                                        Dossiers et antécédents médicaux
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Biométrie
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue"></i>
                                        Possibilité de joindre des documents
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Paramétrage des champs personnalisés
                                    </li>
                                    <li>


                                </ul>
                            </div>
                        </div>

                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">

                            <img src="
                            {{ asset('public/theme/default/assets/images/screen8.png') }}
                            "
                                alt="" class="my__img__features">

                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>

    <section class="    features-area">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Consultation</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen1.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>
                        <div class="col-md-5 offset-1" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px;">
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark"
                                            style="margin-right: 20px;color:blue; line-height: 30px;"></i>
                                        Templates de consultations, contrôle et observation personnalisable en fonction de
                                        vos besoins
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Historique des consultations
                                    </li>
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue"></i>
                                        Gestion de la liste d’attente
                                    </li>
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue"></i>
                                        Rapport médical du patient
                                    </li>
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Possibilité d’associer des comptes rendus depuis la consultation
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>


    <section class="features-area my__bg">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Prescription Médical</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">

                        <div class="col-md-6" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px; ">
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Possibilité de prescrire et de créer des modèles d’ordonnance
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Accès à la base de 5000 médicaments avec la possibilité de définir la posologie et
                                        la durée du traitement
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Gestion des analyses biologiques et des examens externes
                                    </li>
                                    <li style="margin-bottom: 15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Ajout des prescriptions libres
                                    </li>



                                </ul>
                            </div>
                        </div>

                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen4.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>

    <section class="    features-area">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Comptes rendus et certificats</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen1.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>
                        <div class="col-md-5 offset-1" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px;">
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 20px;color:blue;"></i>
                                        Création et choix des modèles de comptes rendus avec les données du patients
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Création et choix des modèles de certificats avec les données du patients
                                    </li>
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Création des courriers avec un système semi-automatisé
                                    </li>


                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>


    <section class="features-area my__bg">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Gestion des fiches mutuelles</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">

                        <div class="col-md-6" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px; ">
                                    <li>
                                        <i class="lni lni-checkmark"
                                            style="margin-right: 10px;color:blue;margin-bottom: 15px;line-height: 30px;"></i>
                                        Gestion des fiches mutuelles
                                    <li>
                                        <i class="lni lni-checkmark"
                                            style="margin-right: 10px;color:blue;margin-bottom: 15px;line-height: 30px;"></i>
                                        Des modèles de feuilles de soins préremplies
                                    </li>




                                </ul>
                            </div>
                        </div>

                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen3.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>

    <section class="    features-area">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Etats financières et statistiques générales</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen7.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>
                        <div class="col-md-5 offset-1" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px;">
                                    <li style="margin-bottom:20px">
                                        <i class="lni lni-checkmark" style="margin-right: 20px;color:blue"></i>
                                        états des actes par activité (journalière-mensuelle-annuelle)
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        états des encaissements par activité (journalière-mensuelle-annuelle)
                                    </li>
                                    <li style="margin-bottom:15px ;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue"></i>
                                        Gestion des échéances des chèques
                                    </li>
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue"></i>
                                        Gestion des factures
                                    </li>
                                    <li style="margin-bottom:15px ;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Statistiques des patients / visites / médicaments utilisés / pathologies…
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>



    <section class=" my__bg   features-area">
        <div class="container ">
            <div class="col-lg-12  mb-4">
                <div class="section-title text-center pb-10" data-aos="fade-up">
                    <h3 class="title text-center  pl-5 ">Gestion des recettes</h3>
                </div> <!-- section title -->
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6" data-aos="fade-right" data-aos-duration="2500">
                            <img src="
                        {{ asset('public/theme/default/assets/images/screen1s.png') }}
                        "
                                alt="" class="my__img__features">
                        </div>
                        <div class="col-md-5 offset-1" data-aos="fade-up" data-aos-duration="2500">
                            <div>
                                <ul style="margin-top: 40px;">
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 20px;color:blue;"></i>
                                        Gestion des états du compte général
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>
                                        Gestion des reliquats par jour/semaine/mois
                                    </li>
                                    <li style="margin-bottom:15px;line-height: 30px;">
                                        <i class="lni lni-checkmark" style="margin-right: 10px;color:blue;"></i>

                                        Gestion des encaissements par jour/semaine/mois
                                    </li>


                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div> <!-- conteiner -->
    </section>



    <!--====== About PART ENDS ======-->
@endsection
