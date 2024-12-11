DROP TABLE IF EXISTS accounts;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS activity_logs;

CREATE TABLE `activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chart_of_accounts;

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_group_users;

CREATE TABLE `chat_group_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_groups;

CREATE TABLE `chat_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_messages;

CREATE TABLE `chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_email_subscribers;

CREATE TABLE `cm_email_subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_faqs;

CREATE TABLE `cm_faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_features;

CREATE TABLE `cm_features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_features VALUES('1','<i class=\'lni lni-package\'></i>','Easy Accounting','Manage Account without any accounting knowledge','','');
INSERT INTO cm_features VALUES('2','<i class=\'lni lni-files\'></i>','Invoice','Create professional Invoice and accept online payments','','');
INSERT INTO cm_features VALUES('3','<i class=\'lni lni-user\'></i>','CRM','Contacts with Contact Group and Rich Customer Portal','','');
INSERT INTO cm_features VALUES('4','<i class=\'lni lni-phone-set\'></i>','Leads','Manage leads from different lead sources with kanban view','','');
INSERT INTO cm_features VALUES('5','<i class=\'lni lni-briefcase\'></i>','Projects','Manage different types of projects with milestone','','');
INSERT INTO cm_features VALUES('6','<i class=\'lni lni-alarm\'></i>','Tasks','Manage tasks with kanban view and assign task to staff','','');
INSERT INTO cm_features VALUES('7','<i class=\'lni lni-empty-file\'></i>','Quotation','Create Professional Quotation for getting customer attention','','');
INSERT INTO cm_features VALUES('8','<i class=\'lni lni-facebook-messenger\'></i>','Live Chat','Real time Chat with staffs, customers and private groups','','');
INSERT INTO cm_features VALUES('9','<i class=\'lni lni-credit-cards\'></i>','Online Payments','Accept Online Payments from Clients','','');



DROP TABLE IF EXISTS companies;

CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `package_id` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS company_email_template;

CREATE TABLE `company_email_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS company_settings;

CREATE TABLE `company_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS contact_groups;

CREATE TABLE `contact_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS currency_rates;

CREATE TABLE `currency_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO email_templates VALUES('1','registration','Registration Sucessfully','<div style=\"padding: 15px 30px;\">
						 <h2 style=\"color: #555555;\">Registration Successful</h2>
						 <p style=\"color: #555555;\">Hi {name},<br /><span style=\"color: #555555;\">Welcome to ElitKit and thank you for joining with us. You can now sign in to your account using your email and password.<br /><br />Regards<br />Tricky Code<br /></span></p>
						 </div>','','');
INSERT INTO email_templates VALUES('2','premium_membership','Premium Membership','<div style=\"padding: 15px 30px;\">
						<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">ElitKit Premium Subscription</h2>
						<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
						<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>Congratulations</strong> your paymnet was made sucessfully. Your current membership is valid <strong>until</strong> <strong>{valid_to}</strong></span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>.</strong>&nbsp;</span></p>
						<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
						</div>','','');
INSERT INTO email_templates VALUES('3','alert_notification','ElitKit Renewals','<div style=\"padding: 15px 30px;\">
							<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Account Renew Notification</h2>
							<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
							<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Your package is due to <strong>expire on {valid_to}</strong> s</span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">o you will need to renew by then to keep your account active.</span></p>
							<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Regards</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
							</div>','','');



DROP TABLE IF EXISTS failed_jobs;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_dir` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS files;

CREATE TABLE `files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS group_chat_message_status;

CREATE TABLE `group_chat_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS group_chat_messages;

CREATE TABLE `group_chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `sender_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_item_taxes;

CREATE TABLE `invoice_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `invoice_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_items;

CREATE TABLE `invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_templates;

CREATE TABLE `invoice_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `related_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS items;

CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS lead_sources;

CREATE TABLE `lead_sources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS lead_statuses;

CREATE TABLE `lead_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS leads;

CREATE TABLE `leads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_lead` int(11) DEFAULT NULL,
  `lead_status_id` bigint(20) NOT NULL,
  `lead_source_id` bigint(20) NOT NULL,
  `assigned_user_id` bigint(20) NOT NULL,
  `created_user_id` bigint(20) NOT NULL,
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
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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



DROP TABLE IF EXISTS notes;

CREATE TABLE `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS notifications;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS packages;

CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `others` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO packages VALUES('1','Basic','10.00','99.00','a:2:{s:7:\"monthly\";s:1:\"3\";s:6:\"yearly\";s:2:\"10\";}','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"30\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','','','','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','0','','','');
INSERT INTO packages VALUES('2','Standard','25.00','199.00','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:2:\"50\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','1','','','');
INSERT INTO packages VALUES('3','Business Plus','40.00','399.00','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','0','','','');



DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_histories;

CREATE TABLE `payment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS personal_access_tokens;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `product_cost` decimal(10,2) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS project_members;

CREATE TABLE `project_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS project_milestones;

CREATE TABLE `project_milestones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_date` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS projects;

CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `progress` int(11) DEFAULT NULL,
  `billing_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_rate` decimal(10,2) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_order_item_taxes;

CREATE TABLE `purchase_order_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_order_items;

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_orders;

CREATE TABLE `purchase_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_tax_id` bigint(20) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_discount` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return;

CREATE TABLE `purchase_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_item_taxes;

CREATE TABLE `purchase_return_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` bigint(20) NOT NULL,
  `purchase_return_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_items;

CREATE TABLE `purchase_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_item_taxes;

CREATE TABLE `quotation_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint(20) NOT NULL,
  `quotation_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_items;

CREATE TABLE `quotation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotations;

CREATE TABLE `quotations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS repeating_transactions;

CREATE TABLE `repeating_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `trans_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return;

CREATE TABLE `sales_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_item_taxes;

CREATE TABLE `sales_return_item_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint(20) NOT NULL,
  `sales_return_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_items;

CREATE TABLE `sales_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS services;

CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES('1','mail_type','mail','','');
INSERT INTO settings VALUES('2','backend_direction','ltr','','2022-06-26 18:30:58');
INSERT INTO settings VALUES('3','membership_system','enabled','','2022-06-26 18:31:36');
INSERT INTO settings VALUES('4','trial_period','7','','2022-06-26 18:31:36');
INSERT INTO settings VALUES('5','allow_singup','yes','','2022-06-26 18:31:36');
INSERT INTO settings VALUES('6','email_verification','disabled','','2022-06-26 18:31:36');
INSERT INTO settings VALUES('7','hero_title','Start Your Business With Elit Kit','','');
INSERT INTO settings VALUES('8','hero_sub_title','A simple, easy to customize, and powerful business platform for managing and tracking Projects, Tasks, Invoices, Quotations, Leads, Customers, Transactions and many more!','','');
INSERT INTO settings VALUES('9','meta_keywords','invoice, projects, tasks, accounting, quotation, crm, business, erp, accounting software, live chat','','');
INSERT INTO settings VALUES('10','meta_description','A simple, easy to customize, and powerful business platform for managing and tracking Projects, Tasks, Invoices, Quotations, Leads, Customers, Transactions and many more!','','');
INSERT INTO settings VALUES('11','company_name','MJTECH','2022-06-26 17:28:42','2022-06-26 18:30:26');
INSERT INTO settings VALUES('12','site_title','TAYSSIR DIGITAL SCHOOL','2022-06-26 17:28:42','2022-06-26 18:30:26');
INSERT INTO settings VALUES('13','phone','00212666187309','2022-06-26 17:28:42','2022-06-26 18:30:26');
INSERT INTO settings VALUES('14','email','mj2tech@gmail.com','2022-06-26 17:28:42','2022-06-26 18:30:26');
INSERT INTO settings VALUES('15','timezone','Africa/Casablanca','2022-06-26 17:28:42','2022-06-26 18:30:26');
INSERT INTO settings VALUES('16','language','English','2022-06-26 18:30:26','2022-06-26 18:30:26');
INSERT INTO settings VALUES('17','address','RABAT','2022-06-26 18:30:26','2022-06-26 18:30:26');
INSERT INTO settings VALUES('18','website_enable','yes','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('19','website_language_dropdown','no','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('20','currency_converter','manual','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('21','fixer_api_key','','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('22','date_format','d-m-Y','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('23','time_format','24','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('24','file_manager_file_type_supported','png,jpg,jpeg','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('25','file_manager_max_upload_size','2','2022-06-26 18:30:58','2022-06-26 18:30:58');
INSERT INTO settings VALUES('26','currency','MAD','2022-06-26 18:31:36','2022-06-26 18:31:36');
INSERT INTO settings VALUES('27','currency_position','right','2022-06-26 18:31:36','2022-06-26 18:31:36');
INSERT INTO settings VALUES('28','paypal_active','No','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('29','paypal_email','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('30','paypal_currency','USD','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('31','stripe_active','No','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('32','stripe_secret_key','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('33','stripe_publishable_key','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('34','stripe_currency','USD','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('35','razorpay_active','No','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('36','razorpay_key_id','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('37','razorpay_secret_key','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('38','razorpay_currency','INR','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('39','paystack_active','No','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('40','paystack_public_key','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('41','paystack_secret_key','','2022-06-26 18:31:55','2022-06-26 18:31:55');
INSERT INTO settings VALUES('42','paystack_currency','GHS','2022-06-26 18:31:55','2022-06-26 18:31:55');



DROP TABLE IF EXISTS social_google_accounts;

CREATE TABLE `social_google_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS staff_roles;

CREATE TABLE `staff_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS suppliers;

CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS task_statuses;

CREATE TABLE `task_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS tasks;

CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `project_id` bigint(20) NOT NULL,
  `milestone_id` bigint(20) DEFAULT NULL,
  `priority` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status_id` bigint(20) NOT NULL,
  `assigned_user_id` bigint(20) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS taxs;

CREATE TABLE `taxs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS timesheets;

CREATE TABLE `timesheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_hour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transactions;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `purchase_return_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','admin','mj2tech@gmail.com','2022-06-26 17:27:54','$2y$10$axW5ZlJJrWLv7fGK.wiSR.TM2DLGqM7lFK4dvNtPjOgmCf1sFJi3K','admin','','default.png','1','','','','2022-06-26 17:27:54','2022-06-26 17:27:54');



