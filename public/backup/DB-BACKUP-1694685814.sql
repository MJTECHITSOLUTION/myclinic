DROP TABLE IF EXISTS accounts;

CREATE TABLE `accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS activity_logs;

CREATE TABLE `activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chart_of_accounts;

CREATE TABLE `chart_of_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_group_users;

CREATE TABLE `chat_group_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_groups;

CREATE TABLE `chat_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_by` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_messages;

CREATE TABLE `chat_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from` bigint NOT NULL,
  `to` bigint NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_email_subscribers;

CREATE TABLE `cm_email_subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_email_subscribers VALUES('1','pct2day@gmail.com','197.253.204.246','2022-07-05 22:21:07','2022-07-05 22:21:07');
INSERT INTO cm_email_subscribers VALUES('2','contact@insightsolutions.ma','41.137.38.162','2022-09-28 13:19:42','2022-09-28 13:19:42');
INSERT INTO cm_email_subscribers VALUES('3','mj2tech@gmail.com','105.71.146.152','2022-10-28 19:41:45','2022-10-28 19:41:45');
INSERT INTO cm_email_subscribers VALUES('4','mariajaafary@gmail.com','105.71.144.47','2022-11-01 19:43:16','2022-11-01 19:43:16');
INSERT INTO cm_email_subscribers VALUES('5','serabts@gmail.com','196.75.192.66','2022-11-25 11:10:08','2022-11-25 11:10:08');
INSERT INTO cm_email_subscribers VALUES('6','nabkhaoula@gmail.com','196.75.205.42','2023-01-19 13:16:51','2023-01-19 13:16:51');
INSERT INTO cm_email_subscribers VALUES('7','mustaphajaafary@gmail.com','197.146.25.168','2023-03-30 12:04:03','2023-03-30 12:04:03');



DROP TABLE IF EXISTS cm_faqs;

CREATE TABLE `cm_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_faqs VALUES('1','a:1:{s:9:\"Français\";s:32:\"Faut-il installer sur notre pc ?\";}','a:1:{s:9:\"Français\";s:261:\"<p><strong>TAYSSIR DIGITAL SCHOOL</strong> est une solution cloud en mode Saas. Par cons&eacute;quent, vous n\'avez pas besoin de l\'installer. TAYSSIR DIGITAL SCHOOL est install&eacute; sur notre serveur et nous nous occupons de sa maintenance et sauvegarde.</p>\";}','2022-09-28 12:58:24','2022-09-28 12:58:24');
INSERT INTO cm_faqs VALUES('2','a:1:{s:9:\"Français\";s:63:\"TAYSSIR DIGITAL SCHOOL peut fonctionner partout dans le monde ?\";}','a:1:{s:9:\"Français\";s:163:\"<p>Avec une connexion internet et un navigateur moderne ( chrome, firefox, edge, safari ), TAYSSIR DIGITAL SCHOOL peut fonctionner partout dans le monde.&nbsp;</p>\";}','2022-09-28 13:00:05','2022-09-28 13:00:05');



DROP TABLE IF EXISTS cm_features;

CREATE TABLE `cm_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_features VALUES('1','a:1:{s:9:\"Français\";s:28:\"<i class=\"lni lni-user\"></i>\";}','a:1:{s:9:\"Français\";s:22:\"Médecin généraliste\";}','a:1:{s:9:\"Français\";s:92:\"Une solution adaptée aux cabinets
de médecine générale et centres de téléconsultation\";}','','2023-09-10 14:47:08');
INSERT INTO cm_features VALUES('2','a:1:{s:9:\"Français\";s:36:\"<i class=\"lni lni-sthethoscope\"></i>\";}','a:1:{s:9:\"Français\";s:21:\"Spécialiste médical\";}','a:1:{s:9:\"Français\";s:69:\"Logiciel de gestion de cabinet médical 
POUR VOTRE CENTRE DE SANTÉ\";}','','2023-09-10 15:02:29');
INSERT INTO cm_features VALUES('13','a:1:{s:9:\"Français\";s:33:\"<i class=\"lni lni-first-aid\"></i>\";}','a:1:{s:9:\"Français\";s:8:\"Dentiste\";}','a:1:{s:9:\"Français\";s:55:\"Une solution adaptée aux cabinets
et centres dentaire\";}','2023-09-10 14:46:15','2023-09-10 14:46:15');
INSERT INTO cm_features VALUES('14','a:1:{s:9:\"Français\";s:32:\"<i class=\"lni lni-hospital\"></i>\";}','a:1:{s:9:\"Français\";s:8:\"Clinique\";}','a:1:{s:9:\"Français\";s:57:\"Une solution adaptée aux moyennes et grandes entreprises\";}','2023-09-10 14:49:10','2023-09-14 11:01:12');
INSERT INTO cm_features VALUES('15','a:1:{s:9:\"Français\";s:31:\"<i class=\"lni lni-support\"></i>\";}','a:1:{s:9:\"Français\";s:24:\"Centres de consultations\";}','a:1:{s:9:\"Français\";s:56:\"Une solution adaptée
aux centres de téléconsultation\";}','2023-09-10 14:50:02','2023-09-10 14:50:02');
INSERT INTO cm_features VALUES('16','a:1:{s:9:\"Français\";s:37:\"<i class=\"lni lni-control-panel\"></i>\";}','a:1:{s:9:\"Français\";s:31:\"Fondations des oeuvres sociales\";}','a:1:{s:9:\"Français\";s:57:\"Une solution adaptée aux Fondations des œuvres sociales\";}','2023-09-10 14:52:47','2023-09-10 15:03:22');



DROP TABLE IF EXISTS companies;

CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int unsigned NOT NULL,
  `package_id` int DEFAULT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` date NOT NULL,
  `last_email` date DEFAULT NULL,
  `staff_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring_transaction` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_chat` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_manager` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_management_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tel` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO companies VALUES('27','maarif','1','1','monthly','member','2022-11-14','','Unlimited','10','20','20','No','No','No','No','','','','No','No','2022-10-14 14:45:36','2022-10-14 14:57:28','');
INSERT INTO companies VALUES('31','zzzz','1','1','monthly','trial','2022-10-22','','Unlimited','10','20','20','No','No','No','No','','','','No','No','2022-10-14 23:18:23','2022-10-14 23:18:23','');
INSERT INTO companies VALUES('32','tayssir','1','1','monthly','member','2022-11-03','','Unlimited','10','20','20','No','No','No','No','','','','No','No','2022-10-27 14:25:10','2022-10-27 14:25:10','');
INSERT INTO companies VALUES('33','INSTITUT SMARTS WAY','1','1','monthly','member','2022-11-08','','Unlimited','10','20','20','No','No','No','No','','','','No','No','2022-11-01 17:44:46','2022-11-01 17:44:46','');



DROP TABLE IF EXISTS company_email_template;

CREATE TABLE `company_email_template` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS company_settings;

CREATE TABLE `company_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO company_settings VALUES('1','quotation_starting','1','1','2022-06-26 20:47:39','2022-06-26 20:47:39');



DROP TABLE IF EXISTS contact_groups;

CREATE TABLE `contact_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contact_groups VALUES('1','A','A','1','2022-06-26 20:47:07','2022-06-26 20:47:07');



DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `profile_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `contact_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contacts VALUES('1','Company','zzz','zzz','zz@dd.com','20','10','06666666','Morocco','MAD','','','','','','','','','avatar.png','1','','1','','2022-06-26 20:47:09','2022-06-26 20:47:09');



DROP TABLE IF EXISTS currency_rates;

CREATE TABLE `currency_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currency_rates VALUES('1','AED','4.101083','','');
INSERT INTO currency_rates VALUES('2','AFN','85.378309','','');
INSERT INTO currency_rates VALUES('3','ALL','123.510844','','');
INSERT INTO currency_rates VALUES('4','AMD','548.849773','','');
INSERT INTO currency_rates VALUES('5','ANG','2.008050','','');
INSERT INTO currency_rates VALUES('6','AOA','556.155120','','');
INSERT INTO currency_rates VALUES('7','ARS','70.205746','','');
INSERT INTO currency_rates VALUES('8','AUD','1.809050','','');
INSERT INTO currency_rates VALUES('9','AWG','2.009782','','');
INSERT INTO currency_rates VALUES('10','AZN','1.833159','','');
INSERT INTO currency_rates VALUES('11','BAM','1.966840','','');
INSERT INTO currency_rates VALUES('12','BBD','2.245460','','');
INSERT INTO currency_rates VALUES('13','BDT','95.162306','','');
INSERT INTO currency_rates VALUES('14','BGN','1.952383','','');
INSERT INTO currency_rates VALUES('15','BHD','0.421787','','');
INSERT INTO currency_rates VALUES('16','BIF','2117.865003','','');
INSERT INTO currency_rates VALUES('17','BMD','1.116545','','');
INSERT INTO currency_rates VALUES('18','BND','1.583270','','');
INSERT INTO currency_rates VALUES('19','BOB','7.718004','','');
INSERT INTO currency_rates VALUES('20','BRL','5.425949','','');
INSERT INTO currency_rates VALUES('21','BSD','1.121775','','');
INSERT INTO currency_rates VALUES('22','BTC','0.000244','','');
INSERT INTO currency_rates VALUES('23','BTN','82.818317','','');
INSERT INTO currency_rates VALUES('24','BWP','12.683055','','');
INSERT INTO currency_rates VALUES('25','BYN','2.621037','','');
INSERT INTO currency_rates VALUES('26','BYR','9999.999999','','');
INSERT INTO currency_rates VALUES('27','BZD','2.261248','','');
INSERT INTO currency_rates VALUES('28','CAD','1.552879','','');
INSERT INTO currency_rates VALUES('29','CDF','1898.127343','','');
INSERT INTO currency_rates VALUES('30','CHF','1.056023','','');
INSERT INTO currency_rates VALUES('31','CLF','0.033950','','');
INSERT INTO currency_rates VALUES('32','CLP','936.781769','','');
INSERT INTO currency_rates VALUES('33','CNY','7.827878','','');
INSERT INTO currency_rates VALUES('34','COP','4491.872864','','');
INSERT INTO currency_rates VALUES('35','CRC','635.520417','','');
INSERT INTO currency_rates VALUES('36','CUC','1.116545','','');
INSERT INTO currency_rates VALUES('37','CUP','29.588450','','');
INSERT INTO currency_rates VALUES('38','CVE','110.887227','','');
INSERT INTO currency_rates VALUES('39','CZK','26.906059','','');
INSERT INTO currency_rates VALUES('40','DJF','198.432393','','');
INSERT INTO currency_rates VALUES('41','DKK','7.472892','','');
INSERT INTO currency_rates VALUES('42','DOP','60.196240','','');
INSERT INTO currency_rates VALUES('43','DZD','134.499489','','');
INSERT INTO currency_rates VALUES('44','EGP','17.585483','','');
INSERT INTO currency_rates VALUES('45','ERN','16.748349','','');
INSERT INTO currency_rates VALUES('46','ETB','36.696587','','');
INSERT INTO currency_rates VALUES('47','EUR','1.000000','','');
INSERT INTO currency_rates VALUES('48','FJD','2.549240','','');
INSERT INTO currency_rates VALUES('49','FKP','0.908257','','');
INSERT INTO currency_rates VALUES('50','GBP','0.907964','','');
INSERT INTO currency_rates VALUES('51','GEL','3.115301','','');
INSERT INTO currency_rates VALUES('52','GGP','0.908257','','');
INSERT INTO currency_rates VALUES('53','GHS','6.220337','','');
INSERT INTO currency_rates VALUES('54','GIP','0.908257','','');
INSERT INTO currency_rates VALUES('55','GMD','56.605069','','');
INSERT INTO currency_rates VALUES('56','GNF','9999.999999','','');
INSERT INTO currency_rates VALUES('57','GTQ','8.576324','','');
INSERT INTO currency_rates VALUES('58','GYD','234.489495','','');
INSERT INTO currency_rates VALUES('59','HKD','8.674753','','');
INSERT INTO currency_rates VALUES('60','HNL','27.678062','','');
INSERT INTO currency_rates VALUES('61','HRK','7.590196','','');
INSERT INTO currency_rates VALUES('62','HTG','106.356510','','');
INSERT INTO currency_rates VALUES('63','HUF','341.150311','','');
INSERT INTO currency_rates VALUES('64','IDR','9999.999999','','');
INSERT INTO currency_rates VALUES('65','ILS','4.159226','','');
INSERT INTO currency_rates VALUES('66','IMP','0.908257','','');
INSERT INTO currency_rates VALUES('67','INR','82.763894','','');
INSERT INTO currency_rates VALUES('68','IQD','1339.198712','','');
INSERT INTO currency_rates VALUES('69','IRR','9999.999999','','');
INSERT INTO currency_rates VALUES('70','ISK','151.202539','','');
INSERT INTO currency_rates VALUES('71','JEP','0.908257','','');
INSERT INTO currency_rates VALUES('72','JMD','151.606351','','');
INSERT INTO currency_rates VALUES('73','JOD','0.791685','','');
INSERT INTO currency_rates VALUES('74','JPY','118.278988','','');
INSERT INTO currency_rates VALUES('75','KES','115.283224','','');
INSERT INTO currency_rates VALUES('76','KGS','81.395812','','');
INSERT INTO currency_rates VALUES('77','KHR','4603.144194','','');
INSERT INTO currency_rates VALUES('78','KMF','495.355724','','');
INSERT INTO currency_rates VALUES('79','KPW','1004.922902','','');
INSERT INTO currency_rates VALUES('80','KRW','1372.190164','','');
INSERT INTO currency_rates VALUES('81','KWD','0.344879','','');
INSERT INTO currency_rates VALUES('82','KYD','0.934921','','');
INSERT INTO currency_rates VALUES('83','KZT','456.318281','','');
INSERT INTO currency_rates VALUES('84','LAK','9978.233671','','');
INSERT INTO currency_rates VALUES('85','LBP','1696.373291','','');
INSERT INTO currency_rates VALUES('86','LKR','206.967335','','');
INSERT INTO currency_rates VALUES('87','LRD','221.076044','','');
INSERT INTO currency_rates VALUES('88','LSL','18.121543','','');
INSERT INTO currency_rates VALUES('89','LTL','3.296868','','');
INSERT INTO currency_rates VALUES('90','LVL','0.675387','','');
INSERT INTO currency_rates VALUES('91','LYD','1.557311','','');
INSERT INTO currency_rates VALUES('92','MAD','10.730569','','');
INSERT INTO currency_rates VALUES('93','MDL','19.734707','','');
INSERT INTO currency_rates VALUES('94','MGA','4165.265277','','');
INSERT INTO currency_rates VALUES('95','MKD','61.516342','','');
INSERT INTO currency_rates VALUES('96','MMK','1566.586511','','');
INSERT INTO currency_rates VALUES('97','MNT','3088.650418','','');
INSERT INTO currency_rates VALUES('98','MOP','8.975925','','');
INSERT INTO currency_rates VALUES('99','MRO','398.607011','','');
INSERT INTO currency_rates VALUES('100','MUR','43.205754','','');
INSERT INTO currency_rates VALUES('101','MVR','17.250725','','');
INSERT INTO currency_rates VALUES('102','MWK','825.239292','','');
INSERT INTO currency_rates VALUES('103','MXN','24.963329','','');
INSERT INTO currency_rates VALUES('104','MYR','4.810633','','');
INSERT INTO currency_rates VALUES('105','MZN','73.591410','','');
INSERT INTO currency_rates VALUES('106','NAD','18.121621','','');
INSERT INTO currency_rates VALUES('107','NGN','408.099790','','');
INSERT INTO currency_rates VALUES('108','NIO','37.844015','','');
INSERT INTO currency_rates VALUES('109','NOK','11.405599','','');
INSERT INTO currency_rates VALUES('110','NPR','132.508354','','');
INSERT INTO currency_rates VALUES('111','NZD','1.847363','','');
INSERT INTO currency_rates VALUES('112','OMR','0.429801','','');
INSERT INTO currency_rates VALUES('113','PAB','1.121880','','');
INSERT INTO currency_rates VALUES('114','PEN','3.958258','','');
INSERT INTO currency_rates VALUES('115','PGK','3.838505','','');
INSERT INTO currency_rates VALUES('116','PHP','57.698037','','');
INSERT INTO currency_rates VALUES('117','PKR','176.121721','','');
INSERT INTO currency_rates VALUES('118','PLN','4.386058','','');
INSERT INTO currency_rates VALUES('119','PYG','7386.917924','','');
INSERT INTO currency_rates VALUES('120','QAR','4.065302','','');
INSERT INTO currency_rates VALUES('121','RON','4.826717','','');
INSERT INTO currency_rates VALUES('122','RSD','117.627735','','');
INSERT INTO currency_rates VALUES('123','RUB','83.568390','','');
INSERT INTO currency_rates VALUES('124','RWF','1067.822267','','');
INSERT INTO currency_rates VALUES('125','SAR','4.190432','','');
INSERT INTO currency_rates VALUES('126','SBD','9.235251','','');
INSERT INTO currency_rates VALUES('127','SCR','14.529548','','');
INSERT INTO currency_rates VALUES('128','SDG','61.772847','','');
INSERT INTO currency_rates VALUES('129','SEK','10.785247','','');
INSERT INTO currency_rates VALUES('130','SGD','1.587844','','');
INSERT INTO currency_rates VALUES('131','SHP','0.908257','','');
INSERT INTO currency_rates VALUES('132','SLL','9999.999999','','');
INSERT INTO currency_rates VALUES('133','SOS','653.732410','','');
INSERT INTO currency_rates VALUES('134','SRD','8.327212','','');
INSERT INTO currency_rates VALUES('135','STD','9999.999999','','');
INSERT INTO currency_rates VALUES('136','SVC','9.816821','','');
INSERT INTO currency_rates VALUES('137','SYP','575.019506','','');
INSERT INTO currency_rates VALUES('138','SZL','18.038821','','');
INSERT INTO currency_rates VALUES('139','THB','35.884679','','');
INSERT INTO currency_rates VALUES('140','TJS','10.875343','','');
INSERT INTO currency_rates VALUES('141','TMT','3.907909','','');
INSERT INTO currency_rates VALUES('142','TND','3.186636','','');
INSERT INTO currency_rates VALUES('143','TOP','2.635661','','');
INSERT INTO currency_rates VALUES('144','TRY','7.131927','','');
INSERT INTO currency_rates VALUES('145','TTD','7.585158','','');
INSERT INTO currency_rates VALUES('146','TWD','33.739208','','');
INSERT INTO currency_rates VALUES('147','TZS','2582.397529','','');
INSERT INTO currency_rates VALUES('148','UAH','29.335146','','');
INSERT INTO currency_rates VALUES('149','UGX','4169.685347','','');
INSERT INTO currency_rates VALUES('150','USD','1.116545','','');
INSERT INTO currency_rates VALUES('151','UYU','48.718630','','');
INSERT INTO currency_rates VALUES('152','UZS','9999.999999','','');
INSERT INTO currency_rates VALUES('153','VEF','11.151499','','');
INSERT INTO currency_rates VALUES('154','VND','9999.999999','','');
INSERT INTO currency_rates VALUES('155','VUV','133.944917','','');
INSERT INTO currency_rates VALUES('156','WST','3.074259','','');
INSERT INTO currency_rates VALUES('157','XAF','659.652615','','');
INSERT INTO currency_rates VALUES('158','XAG','0.088073','','');
INSERT INTO currency_rates VALUES('159','XAU','0.000756','','');
INSERT INTO currency_rates VALUES('160','XCD','3.017519','','');
INSERT INTO currency_rates VALUES('161','XDR','0.809234','','');
INSERT INTO currency_rates VALUES('162','XOF','659.646672','','');
INSERT INTO currency_rates VALUES('163','XPF','119.931356','','');
INSERT INTO currency_rates VALUES('164','YER','279.475009','','');
INSERT INTO currency_rates VALUES('165','ZAR','18.603040','','');
INSERT INTO currency_rates VALUES('166','ZMK','9999.999999','','');
INSERT INTO currency_rates VALUES('167','ZMW','17.892580','','');
INSERT INTO currency_rates VALUES('168','ZWL','359.527584','','');



DROP TABLE IF EXISTS current_stocks;

CREATE TABLE `current_stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO current_stocks VALUES('1','2','0.00','1','2022-06-26 20:45:39','2022-06-26 20:45:39');



DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO email_templates VALUES('1','registration','Confirmation de création d\'école','<div style=\"padding: 15px 30px;\">
<p style=\"color: #555555;\">Bonjour {name},</p>
<p style=\"color: #555555;\"><span id=\"p0\">Bienvenue sur&nbsp;<strong><em><span id=\"11\">TAYSSIR</span>&nbsp;DIGITAL&nbsp;<span id=\"12\">SCHOOL</span></em></strong>&nbsp;et merci de nous joindre.</span><span id=\"p29\">&nbsp;</span><br /><br /><span id=\"p30\">Le compte d\'acc&egrave;s de votre plateforme sera communiqu&eacute; dans&nbsp;<span id=\"35\" class=\"s-bl-t-t\">24h</span>&nbsp;MAX.</span><br /><br /><span id=\"p31\">Pour tester tous les fonctionnalis&eacute;s de&nbsp;<strong><em><span id=\"36\" class=\"s-rg-t-t\">TAYSSIR</span>&nbsp;DIGITAL&nbsp;<span id=\"37\" class=\"s-rg-t-t\">SCHOOL</span></em></strong>,&nbsp; v<span id=\"38\" class=\"s-or-t-t\">ous</span>&nbsp;pouvez&nbsp;<span id=\"39\" class=\"s-rg-t-t\">acc&egrave;der</span>&nbsp;&agrave; la&nbsp;<span id=\"40\" class=\"s-rg-t-t\">DEMO</span>&nbsp;sur le lien <a title=\"DEMO TAYSSIR DIGITAL SCHOOL\" href=\"https://demo.tayssir.cloud\" target=\"_blank\" rel=\"noopener\">https://demo.</a></span><a title=\"DEMO TAYSSIR DIGITAL SCHOOL\" href=\"https://demo.tayssir.cloud\" target=\"_blank\" rel=\"noopener\"><span id=\"p32\"><span id=\"41\" class=\"s-rg-t-t\">tayssir</span>.</span></a><span id=\"p33\"><a title=\"DEMO TAYSSIR DIGITAL SCHOOL\" href=\"https://demo.tayssir.cloud\" target=\"_blank\" rel=\"noopener\"><span id=\"42\" class=\"s-rg-t-t\">cloud</span></a>&nbsp;.</span><br /><br /><strong><em><span id=\"p34\">Nom d\'utilisateur </span></em><span id=\"p34\">:&nbsp;</span><span id=\"p43\"><span id=\"47\" class=\"s-rg-t-t\">demo</span></span></strong><br /><strong><em><span id=\"p44\"><span id=\"48\" class=\"s-rg-t-t\">mot</span>&nbsp;<span id=\"49\" class=\"s-rg-t-t\">depasse</span>&nbsp;</span></em><span id=\"p44\">:&nbsp;</span><span id=\"p45\"><span id=\"50\">demo</span></span></strong><br /><br /><span id=\"p46\"><strong>NB:</strong>&nbsp;Rafra&icirc;chissement des donn&eacute;es&nbsp;chaque 30 min.</span></p>
<p style=\"color: #555555;\"><strong>CGV</strong> :&nbsp;<a title=\"Conditions d\'utilisation\" href=\"https://ecole.tayssir.cloud/site/terms_condition\" target=\"_blank\" rel=\"noopener\">Conditions d\'utilisation</a></p>
<p style=\"color: #555555;\"><span style=\"color: #555555;\">Cordialement</span></p>
</div>','','2022-10-14 23:08:14');
INSERT INTO email_templates VALUES('2','premium_membership','Validation de paiement','<div style=\"padding: 15px 30px;\">
<h2 style=\"color: #555555;\">TAYSSIR DIGITAL SCHOOL : Validation de paiement</h2>
<p style=\"color: #555555;\">Bonjour {name},</p>
<p style=\"color: #555555;\">F&eacute;licitations, votre paiement a &eacute;t&eacute; effectu&eacute; avec succ&egrave;s. Votre adh&eacute;sion actuelle est valable jusqu\'au&nbsp;<span style=\"color: #555555;\"> <strong>{valid_to}</strong></span><span style=\"color: #555555;\"><strong>.</strong>&nbsp;</span></p>
<p style=\"color: #555555;\">Cordialement</p>
</div>','','2022-10-14 14:22:09');
INSERT INTO email_templates VALUES('3','alert_notification','TAYSSIR DIGITAL MÈDICALE: Renouvellement d\'abonnement','<div style=\"padding: 15px 30px;\">
<h2 style=\"color: #555555;\">Notification de renouvellement d\'abonnement&nbsp;</h2>
<p style=\"color: #555555;\">Bonjour{name},</p>
<p style=\"color: #555555;\"><span style=\"color: #555555;\">Votre abonnement sera expir&eacute; le :<strong> {valid_to}, </strong>merci de renouveller votre abonnement pour garder votre compte active</span><span style=\"color: #555555;\">.</span></p>
<p><span style=\"color: #555555;\">Cordialement</span></p>
</div>
<div id=\"gtx-trans\" style=\"position: absolute; left: 722px; top: 168.035px;\">
<div class=\"gtx-trans-icon\">&nbsp;</div>
</div>','','2023-09-09 23:10:40');



DROP TABLE IF EXISTS failed_jobs;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS file_manager;

CREATE TABLE `file_manager` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_dir` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_by` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS files;

CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS group_chat_message_status;

CREATE TABLE `group_chat_message_status` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS group_chat_messages;

CREATE TABLE `group_chat_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `sender_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_item_taxes;

CREATE TABLE `invoice_item_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint NOT NULL,
  `invoice_item_id` bigint NOT NULL,
  `tax_id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_items;

CREATE TABLE `invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint NOT NULL,
  `item_id` bigint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_templates;

CREATE TABLE `invoice_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `client_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS items;

CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO items VALUES('1','zzzz','service','1','2022-06-26 20:45:06','2022-06-26 20:45:06');
INSERT INTO items VALUES('2','zzzzzz','product','1','2022-06-26 20:45:39','2022-06-26 20:45:39');



DROP TABLE IF EXISTS lead_sources;

CREATE TABLE `lead_sources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS lead_statuses;

CREATE TABLE `lead_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS leads;

CREATE TABLE `leads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_lead` int DEFAULT NULL,
  `lead_status_id` bigint NOT NULL,
  `lead_source_id` bigint NOT NULL,
  `assigned_user_id` bigint NOT NULL,
  `created_user_id` bigint NOT NULL,
  `contact_date` date NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES('1','2014_10_12_000000_create_users_table','1');
INSERT INTO migrations VALUES('2','2014_10_12_100000_create_password_resets_table','1');
INSERT INTO migrations VALUES('3','2018_06_01_080940_create_settings_table','1');
INSERT INTO migrations VALUES('4','2018_08_29_084110_create_permissions_table','1');
INSERT INTO migrations VALUES('5','2018_10_28_101819_create_contact_groups_table','1');
INSERT INTO migrations VALUES('6','2018_10_28_104344_create_contacts_table','1');
INSERT INTO migrations VALUES('7','2018_10_28_151911_create_taxs_table','1');
INSERT INTO migrations VALUES('8','2018_10_29_095644_create_items_table','1');
INSERT INTO migrations VALUES('9','2018_10_29_100449_create_products_table','1');
INSERT INTO migrations VALUES('10','2018_10_29_101301_create_services_table','1');
INSERT INTO migrations VALUES('11','2018_10_29_101756_create_suppliers_table','1');
INSERT INTO migrations VALUES('12','2018_11_12_152015_create_email_templates_table','1');
INSERT INTO migrations VALUES('13','2018_11_13_063551_create_accounts_table','1');
INSERT INTO migrations VALUES('14','2018_11_13_082226_create_chart_of_accounts_table','1');
INSERT INTO migrations VALUES('15','2018_11_13_082512_create_payment_methods_table','1');
INSERT INTO migrations VALUES('16','2018_11_13_141249_create_transactions_table','1');
INSERT INTO migrations VALUES('17','2018_11_14_134254_create_repeating_transactions_table','1');
INSERT INTO migrations VALUES('18','2018_11_17_142037_create_payment_histories_table','1');
INSERT INTO migrations VALUES('19','2019_03_07_084028_create_purchase_orders_table','1');
INSERT INTO migrations VALUES('20','2019_03_07_085537_create_purchase_order_items_table','1');
INSERT INTO migrations VALUES('21','2019_03_19_070903_create_current_stocks_table','1');
INSERT INTO migrations VALUES('22','2019_03_19_123527_create_company_settings_table','1');
INSERT INTO migrations VALUES('23','2019_03_19_133922_create_product_units_table','1');
INSERT INTO migrations VALUES('24','2019_03_20_113605_create_invoices_table','1');
INSERT INTO migrations VALUES('25','2019_03_20_113618_create_invoice_items_table','1');
INSERT INTO migrations VALUES('26','2019_05_11_080519_create_purchase_return_table','1');
INSERT INTO migrations VALUES('27','2019_05_11_080546_create_purchase_return_items_table','1');
INSERT INTO migrations VALUES('28','2019_05_27_153656_create_quotations_table','1');
INSERT INTO migrations VALUES('29','2019_05_27_153712_create_quotation_items_table','1');
INSERT INTO migrations VALUES('30','2019_06_22_062221_create_sales_return_table','1');
INSERT INTO migrations VALUES('31','2019_06_22_062233_create_sales_return_items_table','1');
INSERT INTO migrations VALUES('32','2019_06_23_055645_create_company_email_template_table','1');
INSERT INTO migrations VALUES('33','2019_08_19_000000_create_failed_jobs_table','1');
INSERT INTO migrations VALUES('34','2019_10_31_172912_create_social_google_accounts_table','1');
INSERT INTO migrations VALUES('35','2019_11_04_133151_create_chat_messages_table','1');
INSERT INTO migrations VALUES('36','2019_11_07_105822_create_chat_groups_table','1');
INSERT INTO migrations VALUES('37','2019_11_08_063856_create_chat_group_users','1');
INSERT INTO migrations VALUES('38','2019_11_08_143329_create_group_chat_messages_table','1');
INSERT INTO migrations VALUES('39','2019_11_08_143607_create_group_chat_message_status_table','1');
INSERT INTO migrations VALUES('40','2019_11_11_170656_create_file_manager_table','1');
INSERT INTO migrations VALUES('41','2019_12_14_000001_create_personal_access_tokens_table','1');
INSERT INTO migrations VALUES('42','2020_03_15_154649_create_currency_rates_table','1');
INSERT INTO migrations VALUES('43','2020_03_21_052934_create_companies_table','1');
INSERT INTO migrations VALUES('44','2020_03_21_070022_create_packages_table','1');
INSERT INTO migrations VALUES('45','2020_04_02_155956_create_cm_features_table','1');
INSERT INTO migrations VALUES('46','2020_04_02_160209_create_cm_faqs_table','1');
INSERT INTO migrations VALUES('47','2020_04_02_160249_create_cm_email_subscribers_table','1');
INSERT INTO migrations VALUES('48','2020_05_18_104400_create_invoice_templates_table','1');
INSERT INTO migrations VALUES('49','2020_05_24_152947_create_lead_statuses_table','1');
INSERT INTO migrations VALUES('50','2020_05_24_153000_create_lead_sources_table','1');
INSERT INTO migrations VALUES('51','2020_05_24_153224_create_leads_table','1');
INSERT INTO migrations VALUES('52','2020_06_03_112519_create_files_table','1');
INSERT INTO migrations VALUES('53','2020_06_03_112538_create_notes_table','1');
INSERT INTO migrations VALUES('54','2020_06_03_112553_create_activity_logs_table','1');
INSERT INTO migrations VALUES('55','2020_06_22_083001_create_projects_table','1');
INSERT INTO migrations VALUES('56','2020_06_22_095143_create_project_members_table','1');
INSERT INTO migrations VALUES('57','2020_06_23_083455_create_project_milestones_table','1');
INSERT INTO migrations VALUES('58','2020_06_23_112159_create_task_statuses_table','1');
INSERT INTO migrations VALUES('59','2020_06_23_144512_create_tasks_table','1');
INSERT INTO migrations VALUES('60','2020_06_25_065937_create_timesheets_table','1');
INSERT INTO migrations VALUES('61','2020_06_27_152210_create_notifications_table','1');
INSERT INTO migrations VALUES('62','2020_08_21_063443_add_related_to_company_email_template','1');
INSERT INTO migrations VALUES('63','2020_10_19_082621_create_staff_roles_table','1');
INSERT INTO migrations VALUES('64','2020_10_20_080849_add_description_to_invoice_items','1');
INSERT INTO migrations VALUES('65','2020_12_13_150320_create_invoice_item_taxes_table','1');
INSERT INTO migrations VALUES('66','2020_12_15_055832_create_quotation_item_taxes_table','1');
INSERT INTO migrations VALUES('67','2020_12_15_102722_create_purchase_order_item_taxes_table','1');
INSERT INTO migrations VALUES('68','2020_12_16_070412_create_purchase_return_item_taxes_table','1');
INSERT INTO migrations VALUES('69','2020_12_17_065847_create_sales_return_item_taxes_table','1');
INSERT INTO migrations VALUES('70','2022_07_13_094833_add_telephone_to_users_table','2');



DROP TABLE IF EXISTS notes;

CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS notifications;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS packages;

CREATE TABLE `packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_per_month` decimal(10,2) NOT NULL,
  `cost_per_year` decimal(10,2) NOT NULL,
  `staff_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_transaction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_chat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_manager` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_management_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `others` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO packages VALUES('1','Essentiel','100.00','1200.00','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:2:\"10\";}','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"30\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','','','','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','0','','','2022-12-11 23:36:33');
INSERT INTO packages VALUES('2','Standard','400.00','3000.00','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:2:\"50\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','1','','','2022-09-21 12:37:54');



DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_histories;

CREATE TABLE `payment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `package_id` int NOT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_histories VALUES('1','1','Buy Basic Package','Offline','MAD','0.00','1','yearly','paid','2022-09-21 12:48:23','2022-09-21 12:48:23');
INSERT INTO payment_histories VALUES('2','13','Buy Basic Package','Offline','MAD','0.00','1','yearly','paid','2022-10-03 09:57:45','2022-10-03 09:57:45');
INSERT INTO payment_histories VALUES('3','27','Buy Essentiel Package','Offline','MAD','0.00','1','monthly','paid','2022-10-14 14:57:28','2022-10-14 14:57:28');



DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS personal_access_tokens;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS product_units;

CREATE TABLE `product_units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_units VALUES('1','1U','1','2022-06-26 20:45:34','2022-06-26 20:45:34');



DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint NOT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `product_cost` decimal(10,2) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES('1','2','','20.00','30.00','1U','exclusive','','zzzzefzefezf','2022-06-26 20:45:39','2022-06-26 20:45:39');



DROP TABLE IF EXISTS project_members;

CREATE TABLE `project_members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS project_milestones;

CREATE TABLE `project_milestones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_date` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `project_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS projects;

CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint NOT NULL,
  `progress` int DEFAULT NULL,
  `billing_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_rate` decimal(10,2) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_order_item_taxes;

CREATE TABLE `purchase_order_item_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint NOT NULL,
  `purchase_order_item_id` bigint NOT NULL,
  `tax_id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_order_items;

CREATE TABLE `purchase_order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_orders;

CREATE TABLE `purchase_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `supplier_id` bigint NOT NULL,
  `order_status` tinyint NOT NULL,
  `order_tax_id` bigint DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_discount` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `payment_status` tinyint NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return;

CREATE TABLE `purchase_return` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `supplier_id` bigint DEFAULT NULL,
  `account_id` bigint NOT NULL,
  `chart_id` bigint NOT NULL,
  `payment_method_id` bigint NOT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_item_taxes;

CREATE TABLE `purchase_return_item_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` bigint NOT NULL,
  `purchase_return_item_id` bigint NOT NULL,
  `tax_id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_items;

CREATE TABLE `purchase_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` int NOT NULL,
  `product_id` bigint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_item_taxes;

CREATE TABLE `quotation_item_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint NOT NULL,
  `quotation_item_id` bigint NOT NULL,
  `tax_id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_items;

CREATE TABLE `quotation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint NOT NULL,
  `item_id` bigint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotation_items VALUES('1','1','2','zzzzefzefezf','1.00','30.00','0.00','','','0.00','30.00','2022-06-26 20:47:39','2022-06-26 20:47:39');



DROP TABLE IF EXISTS quotations;

CREATE TABLE `quotations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES('1','1001','2022-06-26','classic','30.00','30.00','0.00','zzzzzz','contacts','1','1','2022-06-26 20:47:39','2022-06-26 20:47:39');



DROP TABLE IF EXISTS repeating_transactions;

CREATE TABLE `repeating_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint NOT NULL,
  `chart_id` bigint NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint DEFAULT NULL,
  `payment_method_id` bigint NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `status` tinyint DEFAULT '0',
  `trans_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return;

CREATE TABLE `sales_return` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `customer_id` bigint NOT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_item_taxes;

CREATE TABLE `sales_return_item_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint NOT NULL,
  `sales_return_item_id` bigint NOT NULL,
  `tax_id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_items;

CREATE TABLE `sales_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS services;

CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO services VALUES('1','1','10.00','exclusive','','zzzz','2022-06-26 20:45:06','2022-06-26 20:45:06');



DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES('1','mail_type','smtp','','2023-09-09 22:56:15');
INSERT INTO settings VALUES('2','backend_direction','ltr','','2022-06-26 17:30:58');
INSERT INTO settings VALUES('3','membership_system','disabled','','2022-07-07 08:46:10');
INSERT INTO settings VALUES('4','trial_period','7','','2022-07-07 08:46:10');
INSERT INTO settings VALUES('5','allow_singup','yes','','2022-07-07 08:46:10');
INSERT INTO settings VALUES('6','email_verification','enabled','','2022-07-07 08:46:10');
INSERT INTO settings VALUES('7','hero_title','a:1:{s:9:\"Français\";s:41:\"GESTION TAYSSIR LOGICIEL CABINE MÉDICALE\";}','','2023-09-13 15:07:41');
INSERT INTO settings VALUES('8','hero_sub_title','a:1:{s:9:\"Français\";s:422:\"Logiciel 100% marocain, notre application médicale révolutionnaire offre une solution tout-en-un pour le secteur de la santé. Elle simplifie la gestion quotidienne, de la prise de rendez-vous à la facturation. Cette innovation améliore l\'efficacité des soins de santé au Maroc, de la médecine générale à l\'enseignement médical supérieur, tout en renforçant l\'accessibilité aux services médicaux essentiels.\";}','','2023-09-13 15:07:41');
INSERT INTO settings VALUES('9','meta_keywords','Application de gestion médicale, 100% en ligne et basée sur le modèle SaaS, Inscription, Paiement','','2023-09-09 23:07:23');
INSERT INTO settings VALUES('10','meta_description','Une application tout-en-un pour la gestion médicale, simplifiant les opérations pour les professionnels de la santé.','','2023-09-09 23:07:23');
INSERT INTO settings VALUES('11','company_name','MJTECH','2022-06-26 16:28:42','2023-09-09 22:55:51');
INSERT INTO settings VALUES('12','site_title','TAYSSIR DIGITAL MÈDICALE - Mobile','2022-06-26 16:28:42','2023-09-09 22:55:51');
INSERT INTO settings VALUES('13','phone','212666187309','2022-06-26 16:28:42','2023-09-09 22:55:51');
INSERT INTO settings VALUES('14','email','mj2tech@gmail.com','2022-06-26 16:28:42','2023-09-09 22:55:51');
INSERT INTO settings VALUES('15','timezone','Africa/Casablanca','2022-06-26 16:28:42','2023-09-09 22:55:51');
INSERT INTO settings VALUES('16','language','Français','2022-06-26 17:30:26','2023-09-09 22:55:51');
INSERT INTO settings VALUES('17','address','15 Avenue Al Abtal, N 4 Agdal - Rabat, Maroc','2022-06-26 17:30:26','2023-09-09 22:55:51');
INSERT INTO settings VALUES('18','website_enable','yes','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('19','website_language_dropdown','no','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('20','currency_converter','manual','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('21','fixer_api_key','','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('22','date_format','d-m-Y','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('23','time_format','24','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('24','file_manager_file_type_supported','png,jpg,jpeg','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('25','file_manager_max_upload_size','2','2022-06-26 17:30:58','2022-06-26 17:30:58');
INSERT INTO settings VALUES('26','currency','MAD','2022-06-26 17:31:36','2022-07-07 08:46:10');
INSERT INTO settings VALUES('27','currency_position','right','2022-06-26 17:31:36','2022-07-07 08:46:10');
INSERT INTO settings VALUES('28','paypal_active','No','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('29','paypal_email','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('30','paypal_currency','USD','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('31','stripe_active','No','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('32','stripe_secret_key','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('33','stripe_publishable_key','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('34','stripe_currency','USD','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('35','razorpay_active','No','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('36','razorpay_key_id','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('37','razorpay_secret_key','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('38','razorpay_currency','INR','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('39','paystack_active','No','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('40','paystack_public_key','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('41','paystack_secret_key','','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('42','paystack_currency','GHS','2022-06-26 17:31:55','2022-06-26 17:31:55');
INSERT INTO settings VALUES('43','logo','logo.png','2022-06-26 18:28:52','2023-09-11 20:42:03');
INSERT INTO settings VALUES('44','favicon','file_1669481036.png','2022-06-26 18:28:57','2022-11-26 17:43:56');
INSERT INTO settings VALUES('45','promo_video_url','','2022-06-26 21:00:56','2022-09-28 05:16:58');
INSERT INTO settings VALUES('46','contact_email','mj2tech@gmail.com','2022-06-26 21:00:56','2022-09-28 05:16:58');
INSERT INTO settings VALUES('47','website_copyright','a:1:{s:9:\"Français\";s:107:\"© 2008-2023 Tous droits réservés.  <a href=\"https://tayssir.cloud\" target=\"_blank\">TAYSSIR SOLUTIONS</a>\";}','2022-06-26 21:02:07','2023-09-13 15:07:41');
INSERT INTO settings VALUES('48','website_title','TAYSSIR DIGITAL MÈDICALE','2022-06-26 21:03:38','2023-09-09 23:07:23');
INSERT INTO settings VALUES('49','custom_css_code','.single-pricing .pricing-header .price {
    display: block;
    font-size: 36px;
    font-weight: 600;
    line-height: 80px;
    margin-top: 32px;
    color: #121212;
}','2022-06-26 21:03:46','2022-07-05 22:12:16');
INSERT INTO settings VALUES('50','from_email','mj2tech@gmail.com','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('51','from_name','TAYSSIR DIGITAL MÈDICALE','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('52','smtp_host','smtp-relay.sendinblue.com','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('53','smtp_port','587','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('54','smtp_username','mj2tech@gmail.com','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('55','smtp_password','sMUN6wXza2QOJIHd','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('56','smtp_encryption','tls','2022-07-05 21:45:07','2023-09-09 22:56:15');
INSERT INTO settings VALUES('57','facebook_link','https://web.facebook.com/TTAYSSIR','2022-09-19 23:58:58','2022-09-19 23:58:58');
INSERT INTO settings VALUES('58','twitter_link','','2022-09-19 23:58:58','2022-09-19 23:58:58');
INSERT INTO settings VALUES('59','instagram_link','','2022-09-19 23:58:58','2022-09-19 23:58:58');
INSERT INTO settings VALUES('60','linkedin_link','','2022-09-19 23:58:58','2022-09-19 23:58:58');
INSERT INTO settings VALUES('61','terms_condition_content','a:1:{s:9:\"Français\";s:64260:\"<h3 class=\"header-title\" style=\"text-align: center;\"><strong>(Contrat des services TAYSSIR DIGHITAL SCHOOL)</strong></h3>
<p><strong>Il a &eacute;t&eacute; pr&eacute;alablement expos&eacute; ce qui suit :</strong></p>
<p>MJTECH, soci&eacute;t&eacute; &agrave; Responsabilit&eacute; Limit&eacute;e &agrave; Associ&eacute; Unique, ayant son si&egrave;ge social &agrave; 15 Avenue Al Abtal, N 4 Agdal &ndash; Rabat, Maroc (ci-apr&egrave;s d&eacute;nomm&eacute;e &laquo;&nbsp;<strong>MJTECH</strong>&nbsp;&raquo;, ou le &laquo;&nbsp;<strong>Prestataire</strong>&nbsp;&raquo;) &eacute;dite et commercialise des logiciels de gestion, &agrave; destination des entreprises, fonctionnant exclusivement en mode&nbsp;<strong>SaaS</strong>, c&rsquo;est-&agrave;-dire que pour utiliser les logiciels de MJTECH, les Utilisateurs doivent se connecter aux serveurs informatiques de MJTECH via Internet.</p>
<p>Ces logiciels en mode SaaS sont &eacute;galement d&eacute;nomm&eacute;s &laquo;&nbsp;<strong>Applications</strong>&nbsp;&raquo;.</p>
<p>Le Prestataire est un fournisseur de Software as Service, c&rsquo;est-&agrave;-dire d&rsquo;Applications lou&eacute;es en ligne (dit fournisseur SaaS) &agrave; un Client.</p>
<p>Le Client a eu connaissance des services propos&eacute;s par le Prestataire et a pris connaissance sur le site Internet&nbsp;<strong>https://ecole.tayssir.cloud</strong>, du p&eacute;rim&egrave;tre fonctionnel des Applications propos&eacute;es par le Prestataire. Apr&egrave;s avoir v&eacute;rifi&eacute; leur ad&eacute;quation par rapport &agrave; ses besoins propres, le Client a d&eacute;cid&eacute; de souscrire un abonnement aupr&egrave;s de MJTECH.</p>
<p>Le Client reconna&icirc;t avoir re&ccedil;u du Prestataire toutes les informations n&eacute;cessaires lui permettant d&rsquo;appr&eacute;cier l&rsquo;ad&eacute;quation des Applications &agrave; ses besoins et de prendre toutes les pr&eacute;cautions utiles pour son utilisation.</p>
<p><strong>CECI EXPOSE, IL A ETE CONVENU CE QUI SUIT :</strong></p>
<p><strong>ARTICLE 1. DEFINITIONS</strong></p>
<p>Les termes d&eacute;butant par une majuscule au sein du Contrat, qu&rsquo;ils soient utilis&eacute;s au singulier ou au pluriel, auront la signification qui leur est donn&eacute;e ci-apr&egrave;s.</p>
<p><strong>Contrat&nbsp;</strong>: d&eacute;signe les pr&eacute;sentes conditions g&eacute;n&eacute;rales de vente et leurs annexes.</p>
<p><strong>Donn&eacute;es :&nbsp;</strong>d&eacute;signent les informations, publications et, de mani&egrave;re g&eacute;n&eacute;rale, les informations de la base de donn&eacute;es Clients dont l\'utilisation est l\'objet du pr&eacute;sent Contrat.</p>
<p>&nbsp;</p>
<p><strong>Identifiants :&nbsp;</strong>d&eacute;signent les trois donn&eacute;es que l&rsquo;Utilisateur doit saisir pour se connecter &agrave; l&rsquo;Application; c&rsquo;est-&agrave;-dire le &laquo; Code Abonn&eacute; &raquo; propre au Client et remis par MJTECH lors de son premier abonnement ; le &laquo; Code Utilisateur &raquo; et le &laquo; Mot de passe &raquo; choisis par le Client lors de son abonnement ou lors de la cr&eacute;ation, par lui, d&rsquo;un nouvel Utilisateur.</p>
<p><strong>Internet :&nbsp;</strong>d&eacute;signe l&rsquo;ensemble de r&eacute;seaux interconnect&eacute;s, lesquels sont localis&eacute;s dans toutes les r&eacute;gions du monde.</p>
<p><strong>Application :&nbsp;</strong>d&eacute;signe l&rsquo;ensemble des Modules propos&eacute;s en mode SaaS par le Prestataire &agrave; un Client.</p>
<p><strong>Module</strong>&nbsp;<strong>payant</strong>&nbsp;: d&eacute;signe une partie de l&rsquo;Application g&eacute;rant une fonction d&eacute;finie et qui correspond &agrave; une unit&eacute; facturable.</p>
<p><strong>Module Gratuit</strong>&nbsp;: d&eacute;signe une partie de l&rsquo;Application g&eacute;rant une fonction d&eacute;finie et qui n&rsquo;est pas facturable au Client.</p>
<p><strong>Client ou Abonn&eacute;&nbsp;</strong>: d&eacute;signe la personne, physique ou morale, ayant valid&eacute; une premi&egrave;re commande.</p>
<p><strong>Utilisateur :&nbsp;</strong>d&eacute;signe la personne &agrave; laquelle le Client a donn&eacute; un acc&egrave;s &agrave; l&rsquo;Application en lui transmettant des Identifiants en vertu de la licence d&rsquo;utilisation contract&eacute;e par le Client.</p>
<p><strong>Donn&eacute;es &agrave; caract&egrave;re personnel</strong>&nbsp;: d&eacute;signent toute information se rapportant &agrave; une personne physique identifi&eacute;e ou identifiable (ci-apr&egrave;s d&eacute;nomm&eacute;e &laquo; personne concern&eacute;e &raquo;) ; est r&eacute;put&eacute;e &ecirc;tre une &laquo; personne physique identifiable &raquo; une personne physique qui peut &ecirc;tre identifi&eacute;e, directement ou indirectement, notamment par r&eacute;f&eacute;rence &agrave; un identifiant tel qu\'un nom, un num&eacute;ro d\'identification, des donn&eacute;es de localisation, un identifiant en ligne, ou &agrave; un ou plusieurs &eacute;l&eacute;ments sp&eacute;cifiques propres &agrave; son identit&eacute; physique, physiologique, g&eacute;n&eacute;tique, psychique, &eacute;conomique, culturelle ou sociale.</p>
<p><strong>Traitement des donn&eacute;es personnelles</strong>&nbsp;: d&eacute;signe toute op&eacute;ration ou tout ensemble d\'op&eacute;rations effectu&eacute;es ou non &agrave; l\'aide de proc&eacute;d&eacute;s automatis&eacute;s et appliqu&eacute;s &agrave; des donn&eacute;es ou des ensembles de donn&eacute;es &agrave; caract&egrave;re personnel, telles que la collecte, l\'enregistrement, l\'organisation, la structuration, la conservation, l\'adaptation ou la modification, l\'extraction, la consultation, l\'utilisation, la communication par transmission, la diffusion ou toute autre forme de mise &agrave; disposition, le rapprochement ou l\'interconnexion, la limitation, l\'effacement ou la destruction.</p>
<p><strong>Responsable du traitement</strong>&nbsp;: d&eacute;signe la personne physique ou morale, l\'autorit&eacute; publique, le service ou un autre organisme qui, seul ou conjointement avec d\'autres, d&eacute;termine les finalit&eacute;s et les moyens du traitement ;</p>
<p><strong>ARTICLE 2. OBJET</strong></p>
<p>Le Contrat a pour objet de d&eacute;finir les termes et conditions applicables aux relations entre le Prestataire et le Client.</p>
<p>Le Prestataire consent au Client, qui accepte :</p>
<p>- un droit d\'utilisation finale de tout ou partie de l&rsquo;Application ;</p>
<p>- un ensemble de services ci-apr&egrave;s d&eacute;finis, notamment d&rsquo;h&eacute;bergement des Donn&eacute;es, de maintenance de l&rsquo;Application, d&rsquo;assistance technique.</p>
<p>Le Prestataire assure l&rsquo;h&eacute;bergement et la sauvegarde des Donn&eacute;es, la maintenance et la s&eacute;curit&eacute; des Solutions.</p>
<p>Les prestations sont assur&eacute;es conform&eacute;ment &agrave; la Charte Qualit&eacute; figurant en&nbsp;<strong>Annexe 2</strong>.</p>
<p><strong>ARTICLE 3. DOCUMENTS CONTRACTUELS</strong></p>
<p>Le Contrat ainsi que les documents intitul&eacute;s &laquo; Annexes &raquo; constituent l&rsquo;int&eacute;gralit&eacute; des engagements existant entre les Parties. Ils annulent et remplacent tout engagement oral ou &eacute;crit ant&eacute;rieur relatif &agrave; l\'objet du pr&eacute;sent Contrat.</p>
<p>Le Contrat est form&eacute; des documents contractuels suivants pr&eacute;sent&eacute;s par ordre hi&eacute;rarchique de valeur juridique d&eacute;croissante :</p>
<p>- les pr&eacute;sentes conditions g&eacute;n&eacute;rales de vente ;</p>
<p>- et ses annexes.</p>
<p>En cas de contradiction entre une et/ou plusieurs dispositions figurant dans l\'un quelconque de ces documents, le document de rang sup&eacute;rieur pr&eacute;vaudra.</p>
<p>Les annexes au pr&eacute;sent document qui font partie int&eacute;grante du Contrat sont les suivantes :</p>
<p>- annexe 1 : Pr&eacute;requis mat&eacute;riel et r&eacute;seau.</p>
<p>- annexe 2 : Charte qualit&eacute; (ou SLA).</p>
<p>- annexe 3 : Plan de r&eacute;versibilit&eacute; d&eacute;taill&eacute;.</p>
<p>Il est formellement convenu entre les Parties que toute tol&eacute;rance ou renonciation d\'une des Parties, dans l\'application de tout ou partie des engagements pr&eacute;vus au Contrat, quelles que puissent en &ecirc;tre la fr&eacute;quence et la dur&eacute;e, ne saurait valoir modification du Contrat, ni &ecirc;tre susceptible de cr&eacute;er un droit quelconque.</p>
<p><strong>ARTICLE 4. EFFET ET DUREE</strong></p>
<p>Le Contrat prendra effet &agrave; compter de la date de la validation de la premi&egrave;re commande du Client sur le site du Prestataire.</p>
<p>Sa dur&eacute;e n&rsquo;est pas limit&eacute;e dans le temps, il restera en vigueur tant qu&rsquo;il n&rsquo;aura pas &eacute;t&eacute; d&eacute;nonc&eacute; par l&rsquo;une des Parties.</p>
<p><strong>ARTICLE 5. DESCRIPTION DES APPLICATIONS</strong></p>
<p><strong>5.1 APPLICATIONS</strong></p>
<p>Une Application regroupe diff&eacute;rents Modules permettant de g&eacute;rer des entreprises.</p>
<p>La liste des Modules disponibles est consultable sur le site&nbsp;<strong>https://ecole.tayssir.cloud</strong></p>
<p>Le Prestataire met &agrave; disposition du Client les Applications accessibles sur son serveur par le biais du r&eacute;seau Internet.</p>
<p>Dans les conditions de l&rsquo;article 7 &laquo; Licence &raquo; ci-apr&egrave;s, le Prestataire consent au Client le droit d\'utiliser, directement ou indirectement, et de fa&ccedil;on non exclusive, l&rsquo;Application &agrave; laquelle il est abonn&eacute;.</p>
<p><strong>5.2 ACCES AUX APPLICATIONS</strong></p>
<p>Les Utilisateurs du Client pourront se connecter &agrave; l&rsquo;Application &agrave; tout moment &ndash; &agrave; l&rsquo;exception des p&eacute;riodes de maintenance telles que d&eacute;finies &agrave; l&rsquo;Article 8 ci-apr&egrave;s &ndash;, &agrave; savoir :</p>
<p>- 24 heures sur 24,</p>
<p>- 7 jours sur 7,</p>
<p>- y compris les dimanches et jours f&eacute;ri&eacute;s.</p>
<p>L\'acc&egrave;s s\'effectue :</p>
<p>- &agrave; partir de tout ordinateur permettant l&rsquo;utilisation d&rsquo;un navigateur Internet (et dans le respect des pr&eacute;requis d&eacute;crits en&nbsp;<strong>Annexe 1</strong>)</p>
<p>- au moyen des Identifiants du Client.</p>
<p><strong>5.3 CONFIDENTIALITE DES IDENTIFIANTS</strong></p>
<p>Les Identifiants sont destin&eacute;s (i) &agrave; r&eacute;server l\'acc&egrave;s de L&rsquo;Application, objet du Contrat, aux Utilisateurs du Client, (ii) &agrave; prot&eacute;ger l\'int&eacute;grit&eacute; et la disponibilit&eacute; de l&rsquo;Application, ainsi que (ii) l\'int&eacute;grit&eacute;, la disponibilit&eacute; et la confidentialit&eacute; des Donn&eacute;es du Client.</p>
<p>Les Identifiants sont personnels et confidentiels. Ils peuvent &ecirc;tre chang&eacute;s &agrave; tout moment par le Client au sein de l&rsquo;Application.</p>
<p>Le Client s\'engage &agrave; conserver secrets les Identifiants le concernant et &agrave; ne pas les divulguer sous quelque forme que ce soit.</p>
<p>Le Client est enti&egrave;rement et seul responsable de l\'utilisation et de la garde des Identifiants. Il s&rsquo;assurera qu&rsquo;aucune personne non autoris&eacute;e par le Prestataire n&rsquo;ait acc&egrave;s aux Applications.</p>
<p>En cas de perte ou de vol d\'un des Identifiants, le Client utilisera la fonctionnalit&eacute; pr&eacute;vue dans l&rsquo;Application pour modifier sans d&eacute;lais les Identifiants perdus ou vol&eacute;s.</p>
<p>Si le Client n&rsquo;a plus connaissance d&rsquo;aucun Identifiant de ses Utilisateurs, il pourra demander au Prestataire une op&eacute;ration de r&eacute;initialisation de ses Identifiants, laquelle pourra sera alors &ecirc;tre factur&eacute;e 50 DH H.T. au tarif en vigueur.</p>
<p><strong>ARTICLE 6. QUALITE DES APPLICATIONS</strong></p>
<p>Le Client est averti et accepte les al&eacute;as techniques inh&eacute;rents &agrave; l&rsquo;Internet, et les interruptions d&rsquo;acc&egrave;s qui peuvent en r&eacute;sulter.</p>
<p>En cons&eacute;quence, le Prestataire ne sera en aucun cas tenu responsable des &eacute;ventuelles indisponibilit&eacute;s ou ralentissements des Applications.</p>
<p>Le Client reconnait que le Prestataire n&rsquo;est pas en mesure de garantir la continuit&eacute; des Applications, ex&eacute;cut&eacute;es &agrave; distance via Internet.</p>
<p>Le Prestataire s&rsquo;engage &agrave; mettre en place des contr&ocirc;les efficaces de nature &agrave; procurer une assurance raisonnable que le Client peut acc&eacute;der et utiliser les Applications concern&eacute;es aux heures d&eacute;termin&eacute;es aux pr&eacute;sentes.</p>
<p>Le Prestataire garantit la mise en &oelig;uvre des Applications conformes &agrave; la charte Qualit&eacute; (ou SLA pour Service Level Agreement) figurant en&nbsp;<strong>Annexe 2</strong>.</p>
<p>L&rsquo;acc&egrave;s aux Applications peut &ecirc;tre occasionnellement suspendu en raison d\'interventions de maintenance n&eacute;cessaires au bon fonctionnement des serveurs du Prestataire. En cas d&rsquo;interruption de l&rsquo;acc&egrave;s aux Applications pour maintenance, le Prestataire s&rsquo;engage &agrave; respecter la proc&eacute;dure des op&eacute;rations d&eacute;crite ci-apr&egrave;s &agrave; l&rsquo;Article 8 &laquo; Maintenance &raquo; afin que le Client puisse &ecirc;tre inform&eacute; au mieux de l&rsquo;interruption, et qu&rsquo;il prenne ses dispositions suffisamment &agrave; l&rsquo;avance pour &eacute;viter toute perturbation de son activit&eacute;.</p>
<p>Le Prestataire ne pourra &ecirc;tre tenu responsable de l&rsquo;impact &eacute;ventuel de cette indisponibilit&eacute; sur les activit&eacute;s du Client.</p>
<p><strong>ARTICLE 7. LICENCE</strong></p>
<p>Le Prestataire conc&egrave;de au Client un droit personnel, non exclusif, non cessible et non transf&eacute;rable d&rsquo;utilisation des Applications, pendant toute la dur&eacute;e du Contrat et pour le monde entier.</p>
<p>Le Client ne peut utiliser les Applications que conform&eacute;ment &agrave; ses besoins et &agrave; leur documentation &agrave; l&rsquo;exclusion de toute autre finalit&eacute;.</p>
<p>Le droit d&rsquo;utilisation s&rsquo;entend du droit de repr&eacute;senter et de mettre en &oelig;uvre les Applications conform&eacute;ment &agrave; leur destination, en mode SaaS via une connexion Internet.</p>
<p>Le Client s&rsquo;interdit strictement toute autre utilisation des Applications, en particulier toute adaptation, modification, traduction, arrangement, diffusion, d&eacute;compilation, sans que cette liste soit limitative. De m&ecirc;me, le Client se porte garant de l&rsquo;utilisation conforme des Applications par ses Utilisateurs.</p>
<p><strong>ARTICLE 8. MAINTENANCE</strong></p>
<p>Le Prestataire prend en charge la maintenance corrective et &eacute;volutive des Applications.</p>
<p><strong>Concernant la maintenance corrective.</strong></p>
<p>Une prestation de support par t&eacute;l&eacute;phone permettant de traiter les anomalies est disponible du lundi au jeudi de 9 h 30 &agrave; 12 h et de 13 h 30 &agrave; 18 h et le vendredi de 9 h 30 &agrave; 12 h et de 14 h 30 &agrave; 18 h.</p>
<p>Les signalements d&rsquo;anomalie doivent &ecirc;tre confirm&eacute;s par e-mail (ou &agrave; l&rsquo;aide de tout outil logiciel avec une interface web mis &agrave; la disposition du Client par le Prestataire, le cas &eacute;ch&eacute;ant) au Prestataire sans d&eacute;lai. Le Prestataire proc&egrave;de au diagnostic de l&rsquo;anomalie et met ensuite en &oelig;uvre sa correction.</p>
<p>(a) En cas d&rsquo;anomalie bloquante, le Prestataire s&rsquo;efforce de corriger l&rsquo;anomalie bloquante dans les meilleurs d&eacute;lais en proposant le cas &eacute;ch&eacute;ant une solution de contournement.</p>
<p>(b) En cas d&rsquo;anomalie mineure, le Prestataire propose la correction de l&rsquo;anomalie mineure dans une nouvelle version de l&rsquo;Application qui sera livr&eacute;e dans le cadre de la maintenance &eacute;volutive.</p>
<p>Le Prestataire n&rsquo;est pas responsable de la maintenance dans les cas suivants :</p>
<p>- refus du Client de collaborer avec le Prestataire dans la r&eacute;solution des anomalies et notamment de r&eacute;pondre aux questions et demandes de renseignement ;</p>
<p>- utilisation des Applications de mani&egrave;re non conforme &agrave; leur destination ou &agrave; leur documentation ;</p>
<p>- modification non autoris&eacute;e des Applications par le Client, un Utilisateur ou un tiers ;</p>
<p>- manquement du Client ou des Utilisateurs &agrave; ses/leurs obligations au titre du Contrat ;</p>
<p>- implantation de tous progiciels, logiciels ou syst&egrave;me d\'exploitation non compatibles avec les Applications ;</p>
<p>- d&eacute;faillance des r&eacute;seaux de communication &eacute;lectronique ;</p>
<p>- acte volontaire de d&eacute;gradation, malveillance, sabotage ;</p>
<p>- d&eacute;t&eacute;rioration due &agrave; un cas de force majeure ou &agrave; une mauvaise utilisation des Applications.</p>
<p>Toutefois, le Prestataire peut prendre en charge si possible la r&eacute;solution des dysfonctionnements provoqu&eacute;s par les cas ci-dessus list&eacute;s, au tarif du Prestataire en vigueur &agrave; la date d&rsquo;intervention.</p>
<p><strong>Concernant la maintenance &eacute;volutive.</strong></p>
<p>Le Client b&eacute;n&eacute;ficie, tant qu&rsquo;il a acc&egrave;s aux Applications, des mises &agrave; jour et &eacute;volutions fonctionnelles des Applications.</p>
<p>Le Prestataire s&rsquo;engage &agrave; mettre &agrave; la disposition du Client les documentations mises &agrave; jour des nouvelles versions des Applications.</p>
<p>Les corrections et &eacute;volutions des Applications sont express&eacute;ment soumises au Contrat.</p>
<p>Le Client reconnait que les interventions relatives &agrave; ce service peuvent rendre le service momentan&eacute;ment indisponible. Elles sont effectu&eacute;es, le cas &eacute;ch&eacute;ant et sauf urgence absolue, les mardis et jeudis &agrave; partir de 21 h (heure Maroc).</p>
<p><strong>ARTICLE 9. ASSISTANCE TECHNIQUE</strong></p>
<p>Le service d&rsquo;assistance technique s&rsquo;applique &agrave; toutes les Applications fournies par le Prestataire et consiste &agrave; assister les Utilisateurs par t&eacute;l&eacute;phone, par t&eacute;l&eacute;maintenance tout syst&egrave;me de conf&eacute;rence t&eacute;l&eacute;phonique ou de visioconf&eacute;rence ou par e-mail.</p>
<p>Le service d&rsquo;assistance technique est ouvert du lundi au jeudi de 9h30 &agrave; 12 h et de 13 h 30 &agrave; 18 h et le vendredi de 9h30 &agrave; 12 h et de 15 h &agrave; 18 h.</p>
<p>Le service d&rsquo;assistance technique est gratuit pour tous les Clients sous contrat de support valide . Les demandes sont trait&eacute;es dans l&rsquo;ordre de leur arriv&eacute;e et en fonction du personnel disponible pour y r&eacute;pondre donc sans engagement de d&eacute;lai.</p>
<p><strong>ARTICLE 10. FORMATION</strong></p>
<p>Sur demande du Client, le Prestataire peut fournir, dans des conditions &agrave; d&eacute;finir d\'un commun accord, des prestations de formation.</p>
<p>Les sp&eacute;cificit&eacute;s des Conditions G&eacute;n&eacute;rales de Vente li&eacute;es aux prestations de formation se trouvent en&nbsp;<strong>Annexe 4</strong>&nbsp;aux pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente.</p>
<p><strong>ARTICLE 11. TRAITEMENT DES DONNEES</strong></p>
<p><strong>11.1 DONNEES PERSONNELLES</strong></p>
<p>Si les Donn&eacute;es transmises aux fins d&rsquo;utilisation des Applications comportent des donn&eacute;es &agrave; caract&egrave;re personnel, le Client garantit au Prestataire qu&rsquo;il a proc&eacute;d&eacute; &agrave; l&rsquo;ensemble des obligations de la loi en vigueur, et qu&rsquo;il a inform&eacute; les personnes physiques concern&eacute;es de l&rsquo;usage qui est fait desdites donn&eacute;es personnelles.</p>
<p>A ce titre, le Client garantit le Prestataire contre tout recours, plainte ou r&eacute;clamation &eacute;manant d&rsquo;une personne physique (Utilisateurs, tiers etc.) dont les donn&eacute;es personnelles seraient reproduites et h&eacute;berg&eacute;es.</p>
<p><strong>11.2 EXPLOITATION DES DONNEES</strong></p>
<p>Le Client assure la responsabilit&eacute; &eacute;ditoriale &eacute;ventuelle de l&rsquo;utilisation des Applications.</p>
<p>Le Client est seul responsable de la qualit&eacute;, de la lic&eacute;it&eacute;, de la pertinence des Donn&eacute;es et contenus qu&rsquo;il transmet aux fins d&rsquo;utilisation des Applications. Il garantit en outre &ecirc;tre titulaire des droits de propri&eacute;t&eacute; intellectuelle lui permettant d&rsquo;utiliser les Donn&eacute;es et contenus.</p>
<p>En cons&eacute;quence le Prestataire est d&eacute;gag&eacute; de toute responsabilit&eacute; en cas de non-conformit&eacute; des Donn&eacute;es et/ou des contenus aux lois et r&egrave;glements, &agrave; l&rsquo;ordre public ou encore aux besoins du Client.</p>
<p>Le Client garantit le Prestataire &agrave; premi&egrave;re demande contre tout pr&eacute;judice qui r&eacute;sulterait de sa mise en cause par un tiers ou un Utilisateur pour une violation de cette garantie.</p>
<p>Plus g&eacute;n&eacute;ralement, le Client est seul responsable des contenus et messages diffus&eacute;s et/ou t&eacute;l&eacute;charg&eacute;s via les Applications.</p>
<p>Le Client demeure le seul propri&eacute;taire des Donn&eacute;es constituant le contenu des Applications.</p>
<p><strong>11.3 SECURITE DES DONNEES</strong></p>
<p>Chacune des Parties s&rsquo;engagent &agrave; mettre en &oelig;uvre les moyens techniques appropri&eacute;s pour assurer la s&eacute;curit&eacute; des Donn&eacute;es.</p>
<p>Sous r&eacute;serve de l&rsquo;Article 18 &laquo; Responsabilit&eacute; &raquo; des pr&eacute;sentes, le Prestataire s&rsquo;engage &agrave; pr&eacute;server l&rsquo;int&eacute;grit&eacute; et la confidentialit&eacute; des Donn&eacute;es contenues dans les Applications. Le Prestataire s&rsquo;efforcera de mettre en place les mesures techniques et organisationnelles de nature &agrave; emp&ecirc;cher tout acc&egrave;s ou utilisations fraudeuses des Donn&eacute;es et &agrave; pr&eacute;venir toutes pertes, alt&eacute;rations et destructions des Donn&eacute;es.</p>
<p><strong>ARTICLE 12. TRAITEMENT DES DONNEES A CARACTERE PERSONNEL</strong></p>
<p><strong>12.1 Introduction</strong></p>
<p>MJTECH collecte des donn&eacute;es personnelles aupr&egrave;s de ses prospects et Clients dans le cadre de son activit&eacute; propre.</p>
<p>Il est rappel&eacute; que toute personne dont des donn&eacute;es personnelles ont &eacute;t&eacute; collect&eacute;es par MJTECH &nbsp;dispose d&rsquo;un droit d&rsquo;acc&egrave;s, de rectification, d&rsquo;effacement, de limitation de traitement, d&rsquo;opposition au traitement et de portabilit&eacute; des donn&eacute;es personnelles.</p>
<p>Ces demandes peuvent &ecirc;tre effectu&eacute;es par courrier &eacute;lectronique aupr&egrave;s de MJTECH &nbsp;&agrave; l&rsquo;adresse mail suivante : mj2tech@gmail.com ou en utilisant le formulaire pr&eacute;sent sur la page &laquo; contactez-nous&raquo; du site &agrave; l&rsquo;adresse suivante : https://ecole.tayssir.cloud.</p>
<p>MJTECH collecte des donn&eacute;es personnelles en tant que sous-traitant de ses Clients abonn&eacute;s.</p>
<p>MJTECH agissant en qualit&eacute; de sous-traitant de ses Clients abonn&eacute;s agissant eux en qualit&eacute; de Responsable du traitement (ou en qualit&eacute; de sous-traitant pour le compte de ses propres clients), l&rsquo;article 28 du r&egrave;glement impose notamment qu&rsquo;un contrat doive lier le sous-traitant et le Responsable du traitement. Les pr&eacute;sentes Conditions G&eacute;n&eacute;rales de Vente mat&eacute;rialisent ce contrat.</p>
<p>En tant que Responsable du traitement, le Client s&rsquo;engage &agrave; respecter l&rsquo;ensemble des obligations qui lui incombent aux lois et r&egrave;glementations.</p>
<p>Le Client reconnait &ecirc;tre le seul &agrave; d&eacute;tenir la ma&icirc;trise et la connaissance de l&rsquo;origine et de la nature des donn&eacute;es personnelles trait&eacute;es lors de l&rsquo;ex&eacute;cution du contrat du fait notamment, qu&rsquo;il a la possibilit&eacute; de personnaliser les fichiers saisis dans les logiciels.</p>
<p>Il est rappel&eacute; qu&rsquo;MJTECH n&rsquo;agit qu&rsquo;en qualit&eacute; de sous-traitant vis-&agrave;-vis de ses Clients et ne traite les donn&eacute;es &agrave; caract&egrave;re personnel que sur instruction document&eacute;e du Responsable du traitement.</p>
<p><strong>13.2 Recrutement de sous-traitants ult&eacute;rieurs</strong></p>
<p>Le Client accepte qu&rsquo;MJTECH fasse appel &agrave; des sous-traitants pour r&eacute;aliser les op&eacute;rations de traitement des donn&eacute;es pour le compte du Client.</p>
<p>La liste des sous-traitants ult&eacute;rieurs de MJTECH est accessible par les Clients de MJTECH sur demande &eacute;crite adress&eacute;e par e-mail &agrave; l&rsquo;adresse suivante :&nbsp;<a href=\"mailto:mj2tech@gmail.com\">mj2tech@gmail.com</a></p>
<p>MJTECH s&rsquo;engage &agrave; informer ses Clients en cas d&rsquo;ajout ou de changement de sous-traitant. Cette information pourra &ecirc;tre faite par tout moyen &eacute;crit y compris &eacute;lectronique. Le Client disposera alors d&rsquo;un d&eacute;lai de 10 (dix) jours pour formuler ses &eacute;ventuelles objections. Le Client reconnait que le fait de ne pas avoir formul&eacute; d&rsquo;objection dans le d&eacute;lai de 10 (dix) jours &eacute;quivaut &agrave; une acceptation par le Client du nouveau sous-traitant.</p>
<p>Si le Client a formul&eacute; des objections argument&eacute;es et document&eacute;es, MJTECH pourra fournir des informations compl&eacute;mentaires permettant au Client de lever ses objections.</p>
<p><strong>13.3 Confidentialit&eacute;</strong></p>
<p>Tous les membres du personnel de MJTECH autoris&eacute;s &agrave; traiter les donn&eacute;es &agrave; caract&egrave;re personnel se sont engag&eacute;s &agrave; respecter leur confidentialit&eacute; par la signature de leur contrat de travail et/ou de ses avenants.</p>
<p><strong>13.4 S&eacute;curit&eacute; des traitements</strong></p>
<p>Les mesures n&eacute;cessaires &agrave; la s&eacute;curit&eacute; du traitement sont d&eacute;crites dans l&rsquo;annexe 2 : Charte qualit&eacute;.</p>
<p><strong>13.5 Suppression des donn&eacute;es &agrave; caract&egrave;re personnel</strong></p>
<p>Selon le choix du Responsable du traitement, MJTECH supprimera toutes les donn&eacute;es &agrave; caract&egrave;re personnel ou renverra au Responsable du traitement une copie des donn&eacute;es personnelles et supprimera les copies existantes sur ses syst&egrave;mes.</p>
<p><strong>13.6 Acc&egrave;s aux donn&eacute;es &agrave; caract&egrave;re personnel</strong></p>
<p>Chaque fonctionnalit&eacute; des applications MJTECH est assortie d&rsquo;un droit d&rsquo;acc&egrave;s. Il appartient donc au Responsable du traitement d&rsquo;attribuer ces droits d&rsquo;acc&egrave;s aux seules personnes habilit&eacute;es.</p>
<p>Pour &eacute;viter que toute personne physique ayant acc&egrave;s aux donn&eacute;es &agrave; caract&egrave;re personnel ne les traite sans instruction du Responsable du traitement, le Responsable du traitement devra veiller &agrave; ne donner acc&egrave;s aux donn&eacute;es &agrave; caract&egrave;re personnel que pendant le laps de temps n&eacute;cessaire aux traitements qu&rsquo;il autorise.</p>
<p><strong>13.7 Respect des directives et audit &agrave; la demande des Clients</strong></p>
<p>Pour d&eacute;montrer le respect des obligations pr&eacute;vues, MJTECH mettra &agrave; disposition du Responsable du traitement du Client qui en fera la demande par courriel, toute la documentation n&eacute;cessaire.</p>
<p>Si malgr&eacute; cette documentation, le Responsable du traitement du Client estime qu&rsquo;il a besoin d&rsquo;informations compl&eacute;mentaires, il devra en informer MJTECH en documentant pr&eacute;cis&eacute;ment sa demande.</p>
<p>MJTECH adressera un devis en fonction du personnel &agrave; affecter &agrave; cette demande et du temps &agrave; passer pour y r&eacute;pondre.</p>
<p>La prestation sera alors r&eacute;alis&eacute;e dans les meilleurs d&eacute;lais d&egrave;s l&rsquo;acceptation du devis.</p>
<p>Si malgr&eacute; les compl&eacute;ments d&rsquo;informations apport&eacute;s par MJTECH, le Client estime qu&rsquo;il doit effectuer un audit, il devra en faire la demande aupr&egrave;s de MJTECH par lettre recommand&eacute;e avec accus&eacute; de r&eacute;ception en expliquant pr&eacute;cis&eacute;ment les raisons de sa demande et en joignant tout justificatif appropri&eacute;.</p>
<p>Les termes de l&rsquo;intervention seront convenus entre MJTECH et le Client &eacute;tant pr&eacute;cis&eacute; que l&rsquo;audit ne pourra d&eacute;buter dans un d&eacute;lai inf&eacute;rieur &agrave; 30 (trente) jours apr&egrave;s la demande du Client.</p>
<p>L&rsquo;audit pourra &ecirc;tre r&eacute;alis&eacute; par le Responsable du traitement du Client ou par toute personne qu&rsquo;il aura mandat&eacute;. Le mandataire devra &ecirc;tre accept&eacute; par MJTECH et devra en tout &eacute;tat de cause disposer des comp&eacute;tences n&eacute;cessaires et ne pas &ecirc;tre concurrent directement ou indirectement de MJTECH ou des soci&eacute;t&eacute;s de son groupe.</p>
<p>Tous les frais et d&eacute;bours occasionn&eacute;s par l&rsquo;audit seront &agrave; la charge exclusive du Client. Avant le d&eacute;but de l&rsquo;audit, MJTECH remettra au Client le tarif de chaque membre de son personnel susceptible de devoir intervenir lors de l&rsquo;audit. A la fin de l&rsquo;audit, MJTECH remettra une facture au Client sur la base des temps pass&eacute;s par les membres de son personnel et des d&eacute;bours engag&eacute;s en produisant les justificatifs.</p>
<p>L&rsquo;audit ne pourra &ecirc;tre r&eacute;alis&eacute; que pendant les heures d&rsquo;ouverture normales de MJTECH et ne devra pas perturber son activit&eacute;.</p>
<p>Durant sa pr&eacute;sence dans les locaux de MJTECH, l&rsquo;auditeur sera accompagn&eacute; en permanence par un membre du personnel de MJTECH.</p>
<p>En outre, la pr&eacute;sence de l&rsquo;auditeur dans les locaux de MJTECH ne devra pas exc&eacute;der une semaine.</p>
<p>L&rsquo;auditeur ne pourra pr&eacute;tendre disposer d&rsquo;un acc&egrave;s direct aux serveurs de MJTECH.</p>
<p>L&rsquo;auditeur devra signer un accord de confidentialit&eacute; sp&eacute;cifique avant le d&eacute;but de l&rsquo;audit.</p>
<p>Toutes les informations transmises par MJTECH lors de cet audit seront r&eacute;put&eacute;es confidentielles.</p>
<p>Une copie de tous les documents produits par l&rsquo;auditeur (analyse, rapport, etc.) devra &ecirc;tre adress&eacute;e &agrave; MJTECH et tous ces documents seront r&eacute;put&eacute;s confidentiels.</p>
<p>Le Client pourra demander la r&eacute;alisation d&rsquo;un audit au plus une fois par an.</p>
<p><strong>ARTICLE 14. CONDITIONS FINANCIERES</strong></p>
<p>Pour contracter avec MJTECH, le Client doit r&eacute;gler sa premi&egrave;re commande.</p>
<p>D&egrave;s lors, le Client se voit attribuer un Identifiant lui permettant l&rsquo;acc&egrave;s au Module gratuit. Il pourra alors cr&eacute;er de nouveaux Identifiants afin d&rsquo;inscrire de nouveaux Utilisateurs aux Modules de son choix.</p>
<p>Le mode de facturation se fait ensuite selon le processus d&eacute;crit ci-dessous.</p>
<p><strong>14.1 Facturation</strong></p>
<p>Chaque Module a un co&ucirc;t d&rsquo;abonnement mensuel exprim&eacute; en Dirham. Ce co&ucirc;t est d&eacute;gressif en fonction du nombre d&rsquo;Utilisateurs inscrits au Module par le Client.</p>
<p>Chaque fin de mois, MJTECH &nbsp;&eacute;met une facture correspondant au nombre d&rsquo;utilisateurs inscrits &agrave; chaque module.</p>
<p>Tout Utilisateur inscrit au moins un instant dans le mois est r&eacute;put&eacute; avoir &eacute;t&eacute; inscrit le mois complet.</p>
<p><strong>14.2 Prix des Modules</strong></p>
<p>Le prix des modules est disponible sur le site&nbsp;<a href=\"https://ecole.tayssir.cloud/\">https://ecole.tayssir.cloud</a>.</p>
<p><strong>14.3 Volume minimum</strong></p>
<p>Si pour un mois consid&eacute;r&eacute;, un Client n&rsquo;a inscrit aucun Utilisateur &agrave; un Module Payant, le Client sera factur&eacute; d&rsquo;une somme forfaitaire de 200 DH correspondant au co&ucirc;t de conservation des donn&eacute;es du Client.</p>
<p><strong>14.4 Facturation de prestations compl&eacute;mentaires</strong></p>
<p>Sont exclues du co&ucirc;t d&rsquo;utilisation mensuel des Modules, les prestations suivantes :</p>
<p>- les prestations de formation,</p>
<p>- les prestations d&rsquo;assistance technique,</p>
<p>- les prestations de d&eacute;veloppement compl&eacute;mentaire,</p>
<p>- et plus g&eacute;n&eacute;ralement toutes prestations n&rsquo;entrant pas dans l&rsquo;offre SaaS.</p>
<p>Ces prestations donnent lieu &agrave; un devis et une facturation s&eacute;par&eacute;e.</p>
<p>L&rsquo;adresse de facturation est l&rsquo;adresse du si&egrave;ge social du Client.</p>
<p><strong>14.5. Modalit&eacute;s de paiement</strong></p>
<p>Sauf sp&eacute;cifications contraires les factures &eacute;mises par MJTECH sont payables &agrave; r&eacute;ception.</p>
<p>Lors de l&rsquo;abonnement, le Client doit obligatoirement r&eacute;gler sa premi&egrave;re facture pour avoir acc&egrave;s aux applications MJTECH. Il peut proc&eacute;der au r&egrave;glement en ligne par carte bancaire ou par virement ou encore par ch&egrave;que.</p>
<p>Pour les factures suivantes, elles devront &ecirc;tre r&eacute;gl&eacute;es par virement.</p>
<p>Les abonnements &agrave; un ou plusieurs modules dont la dur&eacute;e est sup&eacute;rieure &agrave; un mois et b&eacute;n&eacute;ficiant d&rsquo;un prix inf&eacute;rieur par rapport &agrave; un abonnement mensuel du fait de cette dur&eacute;e d&rsquo;abonnement, ne peuvent &ecirc;tre r&eacute;sili&eacute;s qu&rsquo;au terme de la p&eacute;riode souscrite.</p>
<p><strong>14.6. D&eacute;faut de paiement</strong></p>
<p>Sans pr&eacute;judice d&rsquo;&eacute;ventuels dommages et int&eacute;r&ecirc;ts, le d&eacute;faut de paiement par le Client d&rsquo;une facture dans un d&eacute;lai de trente (10 jours) apr&egrave;s son &eacute;mission entra&icirc;ne de plein droit &agrave; la discr&eacute;tion du Prestataire, la suspension imm&eacute;diate de l&rsquo;acc&egrave;s aux Applications pour tous les Utilisateurs inscrits par le Client ; dans ce cas pour avoir de nouveau acc&egrave;s aux Applications, le Client devra r&eacute;gler au Prestataire l&rsquo;int&eacute;gralit&eacute; des factures arriv&eacute;es &agrave; &eacute;ch&eacute;ance,</p>
<p>La notification de la r&eacute;siliation du Contrat pourra &ecirc;tre signifi&eacute; au Client par tout moyen, &agrave; la discr&eacute;tion du Prestataire et notamment par lettre simple ou courrier &eacute;lectronique.</p>
<p><strong>ARTICLE 15. PROPRIETE</strong></p>
<p>Le Client est et demeure propri&eacute;taire de l&rsquo;ensemble des Donn&eacute;es qu&rsquo;il utilise via les Applications dans le cadre du Contrat.</p>
<p>Le Prestataire est et demeure titulaire des droits de propri&eacute;t&eacute; relatifs &agrave; tout &eacute;l&eacute;ment des Applications mis &agrave; disposition du Client, ainsi plus g&eacute;n&eacute;ralement que de l&rsquo;infrastructure informatique (logicielle et mat&eacute;rielle) mise en &oelig;uvre ou d&eacute;velopp&eacute;e dans le cadre du Contrat.</p>
<p>Le Client s&rsquo;interdit de reproduire tout &eacute;l&eacute;ment des Applications, ou toute documentation les concernant, par quelque moyen que ce soit, sous quelque forme que ce soit et sur quelque support que ce soit.</p>
<p><strong>ARTICLE 16. REFERENCE COMMERCIALE</strong></p>
<p>MJTECH &nbsp;se r&eacute;serve le droit de mentionner le nom et le logo du Client sur son site Internet, ou dans ses documents de pr&eacute;sentation commerciale et de faire &eacute;tat que le Client utilise un ou plusieurs de ses Produits ; ce que le Client accepte sans aucune contrepartie.</p>
<p><strong>ARTICLE 17. RESPONSABILITE &ndash; FORCE MAJEURE</strong></p>
<p>Chacune des Parties assume la responsabilit&eacute; des cons&eacute;quences r&eacute;sultant de ses fautes, erreurs ou omissions, ainsi que des fautes, erreurs ou omissions de ses sous-traitants &eacute;ventuels et causant un dommage direct &agrave; l\'autre Partie ou &agrave; un tiers.</p>
<p>Il est cependant convenu entre les Parties que :</p>
<p>- les obligations &agrave; la charge du Prestataire constituent des obligations de moyens ;</p>
<p>- le Client est seul responsable des cons&eacute;quences r&eacute;sultant des fautes, erreurs ou omissions des Utilisateurs et causant un dommage direct &agrave; l\'autre Partie.</p>
<p><strong>17.1 Pour les dommages indirects</strong></p>
<p>En cas de faute prouv&eacute;e par le Client dans l&rsquo;ex&eacute;cution de ses prestations par le Prestataire, celui-ci ne sera tenu que de la r&eacute;paration des cons&eacute;quences p&eacute;cuniaires des dommages directs et pr&eacute;visibles du fait de l\'ex&eacute;cution des Applications.</p>
<p>En cons&eacute;quence, le Prestataire ne pourra en aucune circonstance encourir de responsabilit&eacute; au titre des pertes ou dommages indirects ou impr&eacute;visibles du Client ou des tiers, ce qui inclut notamment tout gain manqu&eacute;, perte, inexactitude ou corruption de fichiers ou de Donn&eacute;es, pr&eacute;judice commercial, perte de chiffre d\'affaires ou de b&eacute;n&eacute;fice, perte de client&egrave;le, perte d\'une chance, co&ucirc;t de l&rsquo;obtention d&rsquo;un produit, d&rsquo;un service ou de technologie de substitution, en relation ou provenant de l&rsquo;inex&eacute;cution ou de l&rsquo;ex&eacute;cution fautive des prestations.</p>
<p><strong>17.2 Pour le plafond des dommages directs</strong></p>
<p>Dans tous les cas, le montant de la responsabilit&eacute; du Prestataire est strictement limit&eacute; au remboursement du montant des sommes effectivement pay&eacute;es par le Client &agrave; la date de survenance du fait g&eacute;n&eacute;rateur de responsabilit&eacute;, par poste Utilisateur, par jour d&rsquo;interruption sur la moyenne de consommation des 6 (six) derniers mois.</p>
<p>Le Prestataire ne saurait, en outre, &ecirc;tre tenu responsable de la destruction accidentelle des Donn&eacute;es par le Client ou un tiers ayant acc&eacute;d&eacute; aux Applications au moyen des Identifiants remis au Client et/ou cr&eacute;&eacute;s et/ou modifi&eacute; par lui ou l&rsquo;un de ses Utilisateurs ayant acc&egrave;s &agrave; ces fonctionnalit&eacute;s dans les Applications.</p>
<p><strong>17.3 Force majeure</strong></p>
<p>Le Prestataire ne pourra en aucun cas &ecirc;tre tenu pour responsable de tout dommage en cas de pr&eacute;judice caus&eacute; par une interruption ou une baisse de service de l&rsquo;op&eacute;rateur de t&eacute;l&eacute;communications, du fournisseur d&rsquo;&eacute;lectricit&eacute; ou en cas de force majeure.</p>
<p>Il ne pourra &ecirc;tre tenue pour responsable d&rsquo;un manquement quelconque &agrave; ses obligations dans le cadre du Contrat, si un tel manquement r&eacute;sulte d&rsquo;une d&eacute;cision gouvernementale, en ce compris tout retrait ou suspension d&rsquo;autorisations quelles qu&rsquo;elles soient, d&rsquo;une gr&egrave;ve totale ou partielle, interne ou externe &agrave; l&rsquo;entreprise, d&rsquo;un incendie, d&rsquo;une catastrophe naturelle, d&rsquo;un &eacute;tat de guerre d&rsquo;une interruption totale ou partielle ou d&rsquo;un blocage des r&eacute;seaux de t&eacute;l&eacute;communications ou &eacute;lectrique, d&rsquo;acte de piratage informatique ou plus g&eacute;n&eacute;ralement tout autre &eacute;v&eacute;nement de force majeure pr&eacute;sentant les caract&eacute;ristiques d&eacute;finies par la jurisprudence.</p>
<p>La Partie constatant l&rsquo;&eacute;v&eacute;nement devra sans d&eacute;lai informer l&rsquo;autre partie de son impossibilit&eacute; &agrave; ex&eacute;cuter sa prestation.</p>
<p>A l&rsquo;exception de ce qui est pr&eacute;vu &agrave; l&rsquo;<strong>annexe 2</strong>&nbsp;du pr&eacute;sent Contrat, la suspension des obligations ou le retard ne pourra en aucun cas &ecirc;tre une cause de responsabilit&eacute; pour non-ex&eacute;cution de l&rsquo;obligation en cause, ni induire le versement de dommages et int&eacute;r&ecirc;ts ou p&eacute;nalit&eacute;s de retard.</p>
<p><strong>ARTICLE 18. ASSURANCES</strong></p>
<p>Le Prestataire d&eacute;clare qu&rsquo;il a souscrit les assurances n&eacute;cessaires afin de couvrir les risques li&eacute;s &agrave; l&rsquo;exercice de son activit&eacute;.</p>
<p><strong>ARTICLE 19. RESILIATION</strong></p>
<p>En cas de manquement par l&rsquo;une des Parties &agrave; l&rsquo;une quelconque de ses obligations contractuelles, le Contrat pourra &ecirc;tre r&eacute;sili&eacute; de plein droit par l&rsquo;autre Partie trente (30) jours apr&egrave;s la demande par mail, t&eacute;l&eacute;phone ou toutes les moyennes possibles.</p>
<p>La r&eacute;siliation par le Prestataire peut &eacute;galement &ecirc;tre d&eacute;clench&eacute;e selon les conditions d&eacute;crite &agrave; l&rsquo;article 14.6.</p>
<p>La r&eacute;siliation par le Client doit se faire au sein de l&rsquo;application &agrave; l&rsquo;aide de l&rsquo;option &laquo; D&eacute;sabonnement &raquo;. Le d&eacute;sabonnement prend effet le jour m&ecirc;me. Tout mois commenc&eacute; est d&ucirc; en entier donc la derni&egrave;re facture qui sera adress&eacute;e au Client sera celle du mois en cours.</p>
<p>Le d&eacute;sabonnement ou la r&eacute;siliation du Contrat, quelle qu&rsquo;en soit la cause, d&eacute;gage MJTECH de toute responsabilit&eacute; quant &agrave; la sauvegarde des donn&eacute;es du Client. Il appartient donc au Client de r&eacute;aliser des sauvegardes r&eacute;guli&egrave;res de ses donn&eacute;es &agrave; l&rsquo;aide des diff&eacute;rentes proc&eacute;dures d&rsquo;export de l&rsquo;application et notamment avant de se d&eacute;sabonner.</p>
<p>Dans l&rsquo;hypoth&egrave;se d&rsquo;une r&eacute;siliation, le Client cessera d&rsquo;utiliser tous codes d&rsquo;acc&egrave;s et n&rsquo;aura plus acc&egrave;s aux Applications.</p>
<p><strong>ARTICLE 20. RESILIATION POUR CAUSE DE BAISSE DE PERFORMANCE</strong></p>
<p>Les applications propos&eacute;es par le Prestataire peuvent ne pas supporter certains volumes de donn&eacute;es.</p>
<p>Si des ralentissements significatifs sont constat&eacute;s (soit au niveau de l&rsquo;utilisation des applications, soit au niveau des sauvegardes) du fait d&rsquo;un volume trop important de donn&eacute;es saisies ou import&eacute;es par le Client, MJTECH contactera le Client afin de trouver un moyen pour &eacute;viter ces ralentissements soit en &eacute;tudiant avec le Client comment r&eacute;duire la quantit&eacute; de donn&eacute;es ou en proposant au Client d&rsquo;installer son abonnement sur une instance d&eacute;di&eacute;e moyennant une facturation compl&eacute;mentaire.</p>
<p>Si aucun accord n&rsquo;est trouv&eacute; entre le Prestataire et le Client, le Prestataire pourra r&eacute;silier le Contrat de plein droit afin de garantir &agrave; ses autres clients un bon fonctionnement de ses applications.</p>
<p>La notification de la r&eacute;siliation du Contrat pourra &ecirc;tre signifi&eacute;e au Client par tout moyen, &agrave; la discr&eacute;tion du Prestataire et notamment par lettre simple ou courrier &eacute;lectronique et aura un effet imm&eacute;diat.</p>
<p>Le Prestataire s&rsquo;assurera de disposer d&rsquo;une sauvegarde des donn&eacute;es du Client qu&rsquo;il tiendra &agrave; sa disposition pendant un d&eacute;lai de trois mois apr&egrave;s la r&eacute;siliation.</p>
<p><strong>ARTICLE 21. REVERSIBILITE</strong></p>
<p>En cas de cessation de la relation contractuelle, quelle qu&rsquo;en soit la cause, le Prestataire s&rsquo;oblige au respect du plan de r&eacute;versibilit&eacute; tel que d&eacute;crit &agrave; l&rsquo;<strong>annexe 3</strong>.</p>
<p><strong>ARTICLE 22. NON-SOLLICITATION DE PERSONNEL</strong></p>
<p>Chacune des Parties renonce &agrave; engager ou &agrave; faire travailler, directement ou par personne interpos&eacute;e, tout salari&eacute; de l\'autre Partie, sans accord expr&egrave;s et pr&eacute;alable de cette derni&egrave;re. Cette renonciation est valable pendant toute la dur&eacute;e du Contrat et pendant les 12 (douze) mois qui suivront sa cessation.</p>
<p>Dans le cas o&ugrave; l\'une des Parties ne respecterait pas cette obligation, elle s\'engage &agrave; d&eacute;dommager l\'autre Partie en lui versant imm&eacute;diatement et sur simple demande, une somme forfaitaire &eacute;gale &agrave; 6 (six) fois la r&eacute;mun&eacute;ration brute mensuelle du salari&eacute; au moment de son d&eacute;part.</p>
<p><strong>ARTICLE 23. CONFIDENTIALITE</strong></p>
<p>Chacune des Parties s&rsquo;oblige (et le Client se porte fort pour les Utilisateurs) &agrave; (i) tenir confidentielles toutes les informations qu&rsquo;elle recevra de l&rsquo;autre Partie, et notamment &agrave; (ii) ne pas divulguer les informations confidentielles de l&rsquo;autre Partie &agrave; un tiers quelconque, autre que des employ&eacute;s ou agents ayant besoin de les conna&icirc;tre ; et (iii) n&rsquo;utiliser les informations confidentielles de l&rsquo;autre Partie qu&rsquo;&agrave; l&rsquo;effet d&rsquo;exercer ses droits et de remplir ses obligations aux termes du Contrat.</p>
<p>Nonobstant ce qui pr&eacute;c&egrave;de, aucune des Parties n&rsquo;aura d&rsquo;obligation quelconque &agrave; l&rsquo;&eacute;gard d&rsquo;informations qui (i) seraient tomb&eacute;es ou tomberaient dans le domaine public ind&eacute;pendamment d&rsquo;une faute par la Partie les recevant, (ii) seraient d&eacute;velopp&eacute;es &agrave; titre ind&eacute;pendant par la Partie les recevant, (iii) seraient connues de la Partie les recevant avant que l&rsquo;autre Partie ne les lui divulgue, (iv) seraient l&eacute;gitimement re&ccedil;ues d&rsquo;un tiers non soumis &agrave; une obligation de confidentialit&eacute;, ou (v) devraient &ecirc;tre divulgu&eacute;es en vertu de la loi ou sur ordre d&rsquo;un tribunal (auquel cas elles ne devront &ecirc;tre divulgu&eacute;es que dans la mesure requise et apr&egrave;s en avoir pr&eacute;venu par &eacute;crit la Partie les ayant fournies).</p>
<p>Les obligations des Parties &agrave; l&rsquo;&eacute;gard des informations confidentielles demeureront en vigueur pendant toute la dur&eacute;e du Contrat et aussi longtemps, apr&egrave;s son terme, que les informations concern&eacute;es demeureront confidentielles pour la Partie les divulguant et, en toute hypoth&egrave;se, pendant une p&eacute;riode de 3 (trois) ans apr&egrave;s le terme du Contrat.</p>
<p>Les Parties s&rsquo;engagent par ailleurs &agrave; faire respecter ces dispositions par leur personnel, et par tout pr&eacute;pos&eacute; ou tiers qui pourrait intervenir &agrave; quelque titre que ce soit dans le cadre du Contrat.</p>
<p><strong>Droit applicable :</strong></p>
<p>Le Contrat est soumis au droit marocain, &agrave; l\'exclusion de toute autre l&eacute;gislation.</p>
<p>La langue du pr&eacute;sent Contrat est le fran&ccedil;ais et en cas de traduction multilingue, la version fran&ccedil;aise du contrat primera sur les autres versions.</p>
<p>&nbsp;</p>
<p><strong>Annexe 1 : Pr&eacute;requis mat&eacute;riel et r&eacute;seau</strong></p>
<p>Pour utiliser les Applications propos&eacute;es par MJTECH, le Client doit disposer des &eacute;l&eacute;ments suivants :</p>
<p>- d&rsquo;un ordinateur fixe, d&rsquo;un ordinateur portable ou d&rsquo;une tablette lui permettant de se connecter &agrave; Internet et disposant d&rsquo;un &eacute;cran dont la r&eacute;solution est au minimum de 768 x 1024 pixel ; en de&ccedil;&agrave; de cette r&eacute;solution, MJTECH ne garantit pas un parfait affichage des donn&eacute;es de ses Applications,</p>
<p>- d&rsquo;une connexion Internet avec une bande passante descendante d&rsquo;au moins 512 kbits par seconde par Utilisateur,</p>
<p>- d&rsquo;un navigateur internet r&eacute;cent permettant :</p>
<p>* l&rsquo;interpr&eacute;tation du langage HTML 5,</p>
<p>* l&rsquo;utilisation des cookies,</p>
<p>* d&rsquo;un param&eacute;trage permettant l&rsquo;ex&eacute;cution des scripts JavaScript,</p>
<p>* d&rsquo;un syst&egrave;me autorisant l&rsquo;acc&egrave;s, en mode http et HTTPS.</p>
<p><strong>Annexe 2 : Charte Qualit&eacute; (SLA)</strong></p>
<p>Le Prestataire s&rsquo;engage &agrave; respecter la Charte Qualit&eacute; et notamment les points suivants qui sont le gage de la qualit&eacute; de sa prestation, savoir :</p>
<ol>
<li><strong>A) DISPONIBILITE</strong></li>
</ol>
<p><strong>1) Taux de disponibilit&eacute;</strong></p>
<p>Le Prestataire s&rsquo;engage &agrave; mettre en place des contr&ocirc;les efficaces de nature &agrave; procurer une assurance raisonnable que le Client peut acc&eacute;der et utiliser les Solutions concern&eacute;es aux heures d&eacute;termin&eacute;es au Contrat ; c&rsquo;est-&agrave;-dire 7 jours sur 7 et 24 heures sur 24 (y compris dimanches et jours f&eacute;ri&eacute;s), hors p&eacute;riodes de maintenance.</p>
<p>Le Prestataire garantit un taux de disponibilit&eacute; de 99,8 % ce qui repr&eacute;sente un maximum d&rsquo;indisponibilit&eacute; de 2 mn 52.8 s par jour, 20 mn 9.6 s par semaine, 1 h 27mn 39.5 s par mois et 17 h 31mn 53.9 s par an.</p>
<p><strong>2) D&eacute;lais d&rsquo;interruption</strong></p>
<p>Des interventions de maintenance peuvent &ecirc;tre programm&eacute;es par le Prestataire &agrave; tout moment de la journ&eacute;e en cas de force majeure mais le Prestataire s&rsquo;engage &agrave; faire le maximum pour que toutes les op&eacute;rations de maintenance soient r&eacute;alis&eacute;es &agrave; partir de 21 h 00 (heure maroc) et jusqu&rsquo;&agrave; 6 h du matin au plus tard, les mardis et jeudis.</p>
<p>Pour les cas de force majeure, chaque Client sera pr&eacute;venu par e-mail ou par la messagerie interne aux applications MJTECH dans les meilleurs d&eacute;lais ; pour les autres cas de maintenance, chaque Client sera pr&eacute;venu par e-mail ou par la messagerie internet aux applications au moins 2 jours avant l&rsquo;intervention.</p>
<p><strong>3) D&eacute;lais de correction des anomalies</strong></p>
<ol>
<li>a) D&eacute;faillance applicative</li>
</ol>
<p>En cas de signification par un utilisateur d&rsquo;une d&eacute;faillance applicative (bug logiciel), le Prestataire s&rsquo;engage &agrave; rechercher et contr&ocirc;ler les causes du dysfonctionnement dans un d&eacute;lai de 48 heures ouvr&eacute;es.</p>
<p>Le Prestataire informera le Client du r&eacute;sultat de ses investigations et le d&eacute;lai probable de correction en fonction de la criticit&eacute; du probl&egrave;me.</p>
<p>Le Prestataire s&rsquo;engage &agrave; faire tout son possible pour que la d&eacute;faillance logicielle soit corrig&eacute;e dans un d&eacute;lai de 72 heures ouvr&eacute;es.</p>
<ol>
<li>b) D&eacute;faillance technique</li>
</ol>
<p>Certains types de d&eacute;faillances techniques sont ind&eacute;tectables par les utilisateurs (et n&rsquo;engendrent donc aucune interruption de service) du fait de la redondance des syst&egrave;mes (par exemple un crash de disque dur est trait&eacute; par le syst&egrave;me de redondance).</p>
<p>Dans le cas du crash d&rsquo;un serveur, les sauvegardes quotidiennes effectu&eacute;es par l&rsquo;h&eacute;bergeur (de 20 heures &agrave; 4 heures du matin) sont restaurables dans un d&eacute;lai de 20 minutes &agrave; 2 heures.</p>
<p><strong>4) S&eacute;curit&eacute; (syst&egrave;mes redondants)</strong></p>
<p>Les serveurs du Prestataire sont h&eacute;berg&eacute;s chez un h&eacute;bergeur certifi&eacute; ISO 27000 et ISO 27001 offrant une redondance des syst&egrave;mes d&rsquo;alimentation en &eacute;nergie, en climatisation et en T&eacute;l&eacute;com.</p>
<p>Des techniciens sont pr&eacute;sents sur le site 24h/24, 7j/7, 365j/an.</p>
<p><strong>5) P&eacute;nalit&eacute;s</strong></p>
<p>En cas de non-respect au cours d&rsquo;un mois des engagements de disponibilit&eacute;, le montant des p&eacute;nalit&eacute;s dues pour un mois est plafonn&eacute; &agrave; 20 % du montant de la facture du Client pour ce mois.</p>
<p><strong>Modalit&eacute;s de calcul des p&eacute;nalit&eacute;s :</strong></p>
<p>Le &laquo; taux d&rsquo;indisponibilit&eacute; &raquo; est calcul&eacute; mensuellement de la mani&egrave;re suivante :</p>
<p>Taux d&rsquo;indisponibilit&eacute; = Temps d&rsquo;indisponibilit&eacute; / Temps total th&eacute;orique * 100</p>
<p>Le &laquo; temps d&rsquo;indisponibilit&eacute; &raquo; correspond au temps pendant lequel le service a &eacute;t&eacute; indisponible et que les infrastructures du Prestataire sont en cause. Il ne comprend pas les temps de maintenance programm&eacute;s ni les temps d&rsquo;indisponibilit&eacute; dus &agrave; une cause de force majeure.</p>
<p>Le &laquo; temps total th&eacute;orique &raquo; correspond &agrave; la p&eacute;riode totale d&rsquo;utilisation possible du service dans le mois donn&eacute; d&eacute;duction faite des temps de maintenance programm&eacute;s.</p>
<p>Le Client pourra r&eacute;clamer une indemnit&eacute; pour un mois donn&eacute; &agrave; condition d&rsquo;en faire la demande dans les trente jours suivant le dernier jour du mois de r&eacute;f&eacute;rence.</p>
<p>Cette indemnit&eacute; sera calcul&eacute;e en fonction du taux de disponibilit&eacute; et de la facturation du mois de r&eacute;f&eacute;rence et sera vers&eacute;e sous forme d&rsquo;avoir.</p>
<p>Si le taux d&rsquo;indisponibilit&eacute; est compris entre 0 % et 0,2 %, le Client ne pourra pr&eacute;tendre &agrave; aucune indemnit&eacute;.</p>
<p>Si le taux d&rsquo;indisponibilit&eacute; est compris entre 0,21 et 0,5 %, le Client pourra pr&eacute;tendre au versement d&rsquo;une indemnit&eacute; correspondant &agrave; 3 % du montant de la facturation du mois de r&eacute;f&eacute;rence.</p>
<p>Si le taux d&rsquo;indisponibilit&eacute; est compris entre 0,51 % et 1 %, le Client t pourra pr&eacute;tendre au versement d&rsquo;une indemnit&eacute; correspondant &agrave; 8 % du montant de la facturation du mois de r&eacute;f&eacute;rence.</p>
<p>Si le taux d&rsquo;indisponibilit&eacute; est compris entre 1,01 % et 1,5 %, le Client pourra pr&eacute;tendre au versement d&rsquo;une indemnit&eacute; correspondant &agrave; 13 % du montant de la facturation du mois de r&eacute;f&eacute;rence.</p>
<p>Si le taux d&rsquo;indisponibilit&eacute; est sup&eacute;rieur &agrave; 1,5 %, le Client pourra pr&eacute;tendre au versement d&rsquo;une indemnit&eacute; correspondant &agrave; 20 % du montant de la facturation du mois de r&eacute;f&eacute;rence.</p>
<p><strong>7) Reporting</strong></p>
<p>Le Prestataire &eacute;tablit mensuellement un rapport fond&eacute; sur les indicateurs mis &agrave; sa disposition par l&rsquo;h&eacute;bergeur. Ce rapport est disponible aupr&egrave;s du prestataire sur simple demande par e-mail.</p>
<ol>
<li><strong>B) S&Eacute;CURIT&Eacute; ET CONFIDENTIALIT&Eacute;</strong></li>
</ol>
<p>Les applications sont accessibles apr&egrave;s authentification par les Identifiants de connexion de chaque utilisateur.</p>
<p>Les transferts de donn&eacute;es entre les serveurs du Prestataire et le navigateur de l&rsquo;utilisateur sont effectu&eacute;s de mani&egrave;re crypt&eacute;e &agrave; l&rsquo;aide du protocole SSL 256 bits.</p>
<ol>
<li><strong>C) INT&Eacute;GRIT&Eacute;</strong></li>
</ol>
<p>Le Prestataire s&rsquo;engage &agrave; mettre en place des contr&ocirc;les efficaces de nature &agrave; procurer une assurance raisonnable que les applications mises &agrave; disposition des Clients traitent les donn&eacute;es qui lui sont confi&eacute;es sans risques d&rsquo;omission, alt&eacute;ration, d&eacute;formation ou toutes autres formes d&rsquo;anomalies susceptibles de nuire &agrave; l&rsquo;int&eacute;grit&eacute; des r&eacute;sultats issus de ces applications et que les traitements sont en conformit&eacute; avec la r&eacute;glementation l&eacute;gale qui leur sont applicables, et que les donn&eacute;es et traitements sont accessibles pour les contr&ocirc;les et audits ext&eacute;rieurs qui pourraient &ecirc;tre diligent&eacute;s.</p>
<p>L&rsquo;int&eacute;grit&eacute; du traitement s&rsquo;&eacute;tend &agrave; toute composante du syst&egrave;me et &agrave; toutes les phases du traitement (entr&eacute;e de donn&eacute;es, transmission, traitement, stockage et sortie des donn&eacute;es). Ces contr&ocirc;les consistent en des contr&ocirc;les de coh&eacute;rence des traitements, la d&eacute;tection et la gestion des anomalies ainsi que l&rsquo;information des Utilisateurs relativement &agrave; tout risque de non-conformit&eacute; associ&eacute;e.</p>
<ol>
<li><strong>D) SAUVEGARDES ET DELAIS DE CONSERVATION</strong></li>
</ol>
<p>Il existe plusieurs niveaux de sauvegarde :</p>
<p>1) Les sauvegardes des serveurs effectu&eacute;es par l&rsquo;h&eacute;bergeur du Prestataire</p>
<p>Les serveurs dans leur int&eacute;gralit&eacute; sont sauvegard&eacute;s par l&rsquo;h&eacute;bergeur tous les jours de 20 heures &agrave; 4 heures du matin (image int&eacute;grale des serveurs ou Snapshot) et sont restaurables dans un d&eacute;lai de 20 minutes &agrave; 2 heures. Ces sauvegardes sont conserv&eacute;es 5 jours.</p>
<p>2) Les sauvegardes effectu&eacute;es par le Prestataire</p>
<p>Les sauvegardes des bases de donn&eacute;es et fichiers des Clients sont effectu&eacute;es quotidiennement (&agrave; partir d&rsquo;1 heure du matin) et les sauvegardes quotidiennes sont conserv&eacute;es 30 jours.</p>
<p>De plus, une sauvegarde est effectu&eacute;e de mani&egrave;re hebdomadaire et est conserv&eacute;e 3 mois, une autre sauvegarde est effectu&eacute;e mensuellement et est conserv&eacute;e un an et une derni&egrave;re sauvegarde est effectu&eacute;e annuellement, le 31 d&eacute;cembre, et est conserv&eacute;e dix ans.</p>
<p>Les donn&eacute;es d&rsquo;un client dont le contrat a &eacute;t&eacute; r&eacute;sili&eacute; peuvent &ecirc;tre d&eacute;truites d&egrave;s le jour de la r&eacute;siliation.</p>
<p>Il est donc pr&eacute;cis&eacute; que si un client s&rsquo;est abonn&eacute; et d&eacute;sabonn&eacute; dans la m&ecirc;me ann&eacute;e civile, ses donn&eacute;es ne seront conserv&eacute;es qu&rsquo;une ann&eacute;e ce qui correspond &agrave; la dur&eacute;e de conservation des sauvegardes mensuelles.</p>
<p>Le Client a la possibilit&eacute; de g&eacute;n&eacute;rer lui-m&ecirc;me des sauvegardes internes en dupliquant les donn&eacute;es des soci&eacute;t&eacute;s g&eacute;r&eacute;es dans l&rsquo;application ou des dossiers annuels de ces soci&eacute;t&eacute;s. L&rsquo;utilisation de ce type de sauvegarde n&rsquo;entra&icirc;ne aucune manipulation particuli&egrave;re pour les restaurer et y acc&eacute;der.</p>
<p>La restauration (&agrave; la demande du Client suite &agrave; une mauvaise manipulation de sa part) d&rsquo;une sauvegarde effectu&eacute;e par le Prestataire dans le cadre de la sauvegarde g&eacute;n&eacute;rale de toutes les donn&eacute;es h&eacute;berg&eacute;es entra&icirc;nera une facturation compl&eacute;mentaire de 500 DH H.T. par dossier annuel restaur&eacute;, et sera effectu&eacute;e dans un d&eacute;lai de 48 heures ouvr&eacute;es.</p>
<p><strong>Annexe 3 : Plan de r&eacute;versibilit&eacute; d&eacute;taill&eacute;</strong></p>
<p>Le Client devra formuler la notification de r&eacute;versibilit&eacute; au Prestataire par lettre recommand&eacute;e avec accus&eacute; de r&eacute;ception dans un d&eacute;lai de 3 mois apr&egrave;s la fin de son abonnement ou de sa derni&egrave;re connexion aux services du Prestataire.</p>
<p>Le prestataire s&rsquo;engage &agrave; restituer gratuitement et dans un d&eacute;lai maximum de 21 jours, l&rsquo;int&eacute;gralit&eacute; des donn&eacute;es sous forme de fichiers Excel &trade; ou de fichiers textes selon le souhait du Client.</p>
<p>Le Client collaborera activement avec le Prestataire afin de faciliter la r&eacute;cup&eacute;ration des donn&eacute;es.</p>
<p>A la demande du Client, le Prestataire pourra effectuer des prestations d&rsquo;assistance technique compl&eacute;mentaires au Client et/ou au tiers d&eacute;sign&eacute; par lui, dans le cadre de la r&eacute;versibilit&eacute;.</p>
<p>Ces prestations d\'assistance seront factur&eacute;es au tarif horaire de 200 DH H.T.</p>
<p><strong>Annexe 4 : Sp&eacute;cificit&eacute;s des Conditions G&eacute;n&eacute;rales de Vente li&eacute;es aux prestations de formation</strong></p>
<ol>
<li><strong>A) CONTRACTUALISATION</strong></li>
</ol>
<p>Chaque prestation de formation fait l&rsquo;objet d&rsquo;un devis sp&eacute;cifique &eacute;mis par MJTECH.</p>
<p>Le Client devra avoir fourni &agrave; MJTECH les &eacute;l&eacute;ments suivants 72 h avant le d&eacute;but de la formation :</p>
<p>- le devis sign&eacute; stipulant que le Client a bien pris connaissance des pr&eacute;sentes CGV et plus particuli&egrave;rement de l&rsquo;Annexe 4,</p>
<p>- le r&egrave;glement de la totalit&eacute; du devis,</p>
<p>- la liste des participants (ci-apr&egrave;s d&eacute;nomm&eacute;s &laquo; Stagiaires &raquo;).</p>
<p>Le devis comprendra une provision pour frais de d&eacute;placement. A l&rsquo;issue de la formation, si les frais ont d&eacute;pass&eacute; le montant de la provision, une facture compl&eacute;mentaire sera adress&eacute;e au Client.</p>
<p>Ces frais comprennent :</p>
<p>- les frais de d&eacute;placement du formateur (prioritairement effectu&eacute;s avec les transports en commun &agrave; chaque fois que c&rsquo;est possible),</p>
<p>- les frais d&rsquo;h&eacute;bergement du formateur, le cas &eacute;ch&eacute;ant,</p>
<p>- les frais de restauration du formateur.</p>
<ol>
<li><strong>B) PRESENCE</strong></li>
</ol>
<p>Il appartient au Client de v&eacute;rifier que les stagiaires qu&rsquo;il inscrit &agrave; la formation ont le niveau suffisant pour y participer.</p>
<p>Le Client s&rsquo;engage &agrave; ce que les stagiaires signent la feuille de pr&eacute;sence au d&eacute;but du stage.</p>
<p>L&rsquo;absence d&rsquo;un ou plusieurs stagiaires &agrave; la formation n&rsquo;entrainera pas de r&eacute;duction du prix de la formation.</p>
<ol>
<li><strong>C) INFRASTRUCTURE</strong></li>
</ol>
<p>Pour les formations qui sont dispens&eacute;es dans les locaux du Client, il appartient &agrave; ce dernier de s&rsquo;assurer qu&rsquo;il dispose bien de l&rsquo;infrastructure et du mat&eacute;riel n&eacute;cessaires pour accueillir le formateur et les stagiaires &agrave; la date convenue.</p>
<ol>
<li><strong>D) RESTRICTION</strong></li>
</ol>
<p>Pour des raisons de qualit&eacute; d&rsquo;&eacute;coute et de participation, aucune formation ne sera dispens&eacute;e &agrave; un groupe comptant plus de 12 personnes.</p>
<ol>
<li><strong>E) FRAIS D&rsquo;ANNULATION</strong></li>
</ol>
<p>Le Client qui souhaite annuler une formation peut le faire par tout moyen. La confirmation de l&rsquo;annulation sera effective &agrave; la r&eacute;ception par le Client d&rsquo;un e-mail de confirmation par MJTECH.</p>
<p>En cas d&rsquo;annulation d&rsquo;une formation, des frais seront retenus selon le bar&egrave;me suivant :</p>
<p>- 100 % si l&rsquo;annulation intervient moins de 5 jours avant la date de la formation,</p>
<p>- 50 % si l&rsquo;annulation intervient entre 5 et 10 jours avant la date de la formation,</p>
<p>- 20 % si l&rsquo;annulation intervient entre 10 jours et un mois avant la date de la formation,</p>
<p>- aucun si l&rsquo;annulation intervient avant un mois avant le d&eacute;but du stage.</p>\";}','2022-09-24 17:54:26','2022-12-03 04:57:54');
INSERT INTO settings VALUES('62','about_content','a:1:{s:9:\"Français\";s:678:\"<p>L&rsquo;agence web <strong>MJTECH&nbsp;</strong> est bas&eacute;e au&nbsp;Maroc dans la ville de Rabat. Nous impl&eacute;mentons des strat&eacute;gies digitales telles que&nbsp;: la&nbsp;Cr&eacute;ation de Site Web, le r&eacute;f&eacute;rencement naturel&nbsp;et payant, le developpement des application m&eacute;tier web et mobile. Nous sommes une&nbsp;agence web&nbsp;qui se distingue par sa large gamme de services et&nbsp;strat&eacute;gies cr&eacute;atives, mais surtout par la qualit&eacute; de&nbsp;nos r&eacute;alisations. Nous accompagnons et &eacute;duquons nos clients pour qu&rsquo;ils tirent le meilleur profit des solutions que nous b&acirc;tissons avec eux.</p>\";}','2022-09-28 04:41:43','2022-09-28 09:00:09');
INSERT INTO settings VALUES('63','about_image','file_1664340901.png','2022-09-28 04:53:37','2022-09-28 04:55:01');
INSERT INTO settings VALUES('64','home_banner_image','file_1664342218.png','2022-09-28 05:11:35','2022-09-28 05:16:58');
INSERT INTO settings VALUES('65','sub_banner_image','file_1664342218.png','2022-09-28 05:16:58','2022-09-28 05:16:58');



DROP TABLE IF EXISTS social_google_accounts;

CREATE TABLE `social_google_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS staff_roles;

CREATE TABLE `staff_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS suppliers;

CREATE TABLE `suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS task_statuses;

CREATE TABLE `task_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS tasks;

CREATE TABLE `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `project_id` bigint NOT NULL,
  `milestone_id` bigint DEFAULT NULL,
  `priority` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status_id` bigint NOT NULL,
  `assigned_user_id` bigint DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS taxs;

CREATE TABLE `taxs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS timesheets;

CREATE TABLE `timesheets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_hour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `project_id` bigint NOT NULL,
  `task_id` bigint NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transactions;

CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint NOT NULL,
  `chart_id` bigint NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `purchase_id` bigint DEFAULT NULL,
  `purchase_return_id` bigint DEFAULT NULL,
  `project_id` bigint DEFAULT NULL,
  `payment_method_id` bigint NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','admin','mj2tech@gmail.com','','2022-06-26 16:27:54','$2y$10$axW5ZlJJrWLv7fGK.wiSR.TM2DLGqM7lFK4dvNtPjOgmCf1sFJi3K','admin','','default.png','1','Français','','kXGh1rHKXusmURZJVOLoP5U4xzpPhFDtmirv52h4biW2scrzIs8QXWIDEDaI','2022-06-26 16:27:54','2022-06-26 23:26:36');
INSERT INTO users VALUES('4','serab','serabts@gmail.com','','','$2y$10$yAu1MSi.eJgCSWogu5o3Me44DUuJrSgUyqJB2urtNelp9Zh499OcW','client','','default.png','1','','','','2022-07-06 12:41:55','2022-07-06 12:41:55');
INSERT INTO users VALUES('16','taha','ghitajaafary@gmai.com','','','$2y$10$H9K.ibgPN.DFU49Y/xaezuWLouFNAOzCsLQLZbk.olwB8ABLVGMNS','client','','default.png','1','','','','2022-10-04 15:24:53','2022-10-04 15:24:53');
INSERT INTO users VALUES('18','aa','aa@aa.com','','','$2y$10$bKTM98XIaJGVInIEE3GVJu1FprjJT5CsSQ3ix2sd06lBwa1zb98Ti','client','','default.png','1','','','','2022-10-07 21:46:12','2022-10-07 21:46:12');
INSERT INTO users VALUES('31','el ouraou','frerenet@gmail.com','','2022-10-14 14:47:40','$2y$10$4fCWzEqqy2B0hd4drJ7ThuJDETkeLYQScvtf4M4eQwUTkirfastLG','user','','default.png','1','','27','','2022-10-14 14:45:37','2022-10-14 14:47:40');
INSERT INTO users VALUES('35','zzzz','mustaphajaafary@gmail.com','','2022-10-14 23:26:09','$2y$10$lLuz5D.Jww/H5eB8VWPclumySlOpy4sfdqm/YxBcdeQpa55FodCCa','user','','default.png','1','','31','JcrUQXyDVZsbB2XFkfIl5jLhIC2ZE8n1EsUmT6DX68wMMWIWlLHosOxF42Gl','2022-10-14 23:18:23','2022-10-18 14:34:54');
INSERT INTO users VALUES('36','tayssir','tayssir@tata.com','','','$2y$10$gswlq7TpUikPjXwsp7a8cOAhPgWBfvpmc20YzEWLCoM0./hGjqLTa','user','','default.png','1','','32','','2022-10-27 14:25:10','2022-10-27 14:25:10');
INSERT INTO users VALUES('37','HAFID','infohafide@gmail.com','','2022-11-01 17:47:05','$2y$10$2KXH3fLQVPGVvEkdWpCJFuC.AWB/Gk4Qj1gIMuQ.y7fabTxu2th5a','user','','default.png','1','','33','','2022-11-01 17:44:46','2022-11-01 17:47:05');



