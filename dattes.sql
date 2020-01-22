-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 21 déc. 2019 à 23:36
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `starter`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL,
  `titre_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titre_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_fr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_ar` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `titre_fr`, `titre_ar`, `description_fr`, `description_ar`, `image`, `created`) VALUES
(1, '10ème édition du Salon International des dattes', 'الطبعة العاشرة للمعرض الدولي للتمور', 'C’est à plusieurs kilomètres du centre d’Erfoud, chef-lieu de la région d’Errachidia, que les chapiteaux du salon international des dattes ont été plantés. D’habitude, le salon était organisé à proximité du centre d’Erfoud. Mais pour des raisons de sécurité, les organisateurs ont décidé cette année de le déplacer un peu loin du centre urbain. Jeudi 24 octobre 2019, le ministre de l’agriculture et des pêches maritimes, Aziz Akhannouch, qui est arrivé à l’aéroport d’Errachdia, le même jour à bord de son jet privé en provenance d’Oslo, capitale de la Norvège, où il a participé à une réunion de travail avec son homologue norvégien, venait d’inaugurer, en grande pompe, la l0ème édition du Salon des dattes qui se tient jusqu’à dimanche 27 octobre 2019. Une ouverture qui a eu lieu en présence du Wali de la région de Draa Tafilalet, gouverneur de la province d’Errachidia. Etait également présent le directeur général de l’Agence nationale de développement des zones de l’Oasis et de l’Arganerie, Brahim Hafidi.\r\n En ligne avec les orientations de SM le Roi Mohammed VI, la dixième édition de ce rendez-vous agricole par excellence se tient sous le thème « le palmier dattier, levier de l’emploi et pilier de l’économie oasienne ». Pendant 4 jours, le salon entend souligner le rôle et le poids de la filière dans l’émergence d’une classe moyenne agricole. La création par la filière d’emplois à valeur ajoutée sera ainsi au cœur des discussions.\r\n Plusieurs mesures ont été ainsi mises en place pour mieux structurer la filière. Le Plan Maroc Vert a amené la professionnalisation de cette activité autrefois considérée comme mode de vie de la population oasienne. Aujourd’hui, l’ensemble des intervenants dans l’amont et l’aval de la production de dattes sont regroupés dans le cadre d’une interprofession. Un contrat programme, d’une enveloppe de 8 milliards de dhs a été signé entre l’Etat et cette interprofession sur la période 2010-2020 pour le développement de la filière et pour encadrer l’ensemble des actions menées pour son développement. Plusieurs objectifs de ce contrat-programme ont déjà été atteints, notamment en matière de plantations où l’objectif des 3 millions de pieds sera atteint d’ici la fin 2019, soit un an avant l’échéance.\r\n Au niveau de la production, le Maroc maintient sa place de 12ème plus grand producteur de dattes et conforte son positionnement avec une production prévisionnelle record de 143.000 T pour la campagne 2019-2020, en hausse de 41,3 %  par rapport à la campagne 2018-19.\r\nIl est à souligner qu’une vraie montée en puissance de ces indicateurs est attendue pour 2022 avec l’entrée en production l’ensemble des palmiers plantés.\r\n Les réalisations dans le domaine de la valorisation sont aussi importantes, avec une capacité de conditionnement de près de 25 000 T, pour un objectif à terme de 30 000 T.\r\nLa filière du palmier dattier contribue aujourd’hui à hauteur de 60% dans la formation du revenu agricole au sein des oasis. Elle fournit 3,6 millions de journées de travail pour plus de 2 millions d’habitants.\r\n Le patrimoine phœnicicole national se caractérise en outre par une évolution croissante de la surface cultivée, qui a atteint 61 000 hectares cette année, contre 48 000 ha en 2010.\r\n Porteur de richesses et de potentiels, l’écosystème oasien bénéficie pleinement de l’activité phœnicicole, qui est aujourd’hui le principal pilier de son économie. Elle génère un chiffre d’affaire moyen annuel allant jusqu’à 2 milliards de dirhams et a procuré aux phoeniciculteurs une valeur ajoutée moyenne de 1,42 milliard de dirhams entre 2015 et 2018.\r\nParallèlement au salon international des dattes, M. Akhannouch s’est rendu dans la Palmeraie Traditionnelle, touchée par des incendies cet été, où il a effectué un point d’étape sur l’avancement du programme de nettoyage des touffes dans la zone. Plus de 1,3 million de touffes de palmiers dattiers ont bénéficié de cette opération, soit 75% du programme national de restructuration des palmeraies. M. Akhannouch a également assisté à la présentation d’un programme d’appui aux coopératives de service. Le projet prévoit la génération de plus de 337 000 journées de travail en faveur des jeunes et femmes du Draâ-Tafilalet, et permettra de favoriser la création d’environ plus d’un millier de coopératives d’ici fin 2020. Il est à souligner dans ce sens que le Plan Maroc Vert a fortement favorisé la création des coopératives dans le but d’encadrer les petits agriculteurs dans l’espace oasien permettant ainsi de passer de 1.128  au lancement du PMV en 2008 à près de 5.000 coopératives actuellement.', 'تقع على بعد عدة كيلومترات من وسط أرفود ، عاصمة منطقة الرشيدية ، حيث زرعت عواصم المعرض الدولي للتواريخ. عادة ، تم تنظيم المعرض بالقرب من مركز أرفود. لكن لأسباب أمنية ، قرر المنظمون هذا العام نقله بعيدًا عن المركز الحضري. الخميس ، 24 أكتوبر 2019 ، وزير الزراعة والثروة السمكية ، عزيز أخنوش ، الذي وصل إلى مطار الراشدية ، في نفس اليوم على متن طائرته الخاصة من أوسلو ، عاصمة النرويج ، حيث شارك في اجتماع عمل مع نظيره النرويجي ، افتتح للتو ، مع ضجة كبيرة ، النسخة العاشرة من صالون الصالون للتواريخ التي ستعقد حتى يوم الأحد 27 أكتوبر 2019. تم افتتاح الافتتاح في حضور والي من منطقة درعة تافيلالت ، حاكم محافظة الرشيدية. حضر الحفل المدير العام للوكالة الوطنية لتطوير مناطق الواحات وأرجان ، إبراهيم حفيدي.\r\n تماشياً مع إرشادات صاحب الجلالة الملك محمد السادس ، عقدت النسخة العاشرة من هذا الاجتماع الزراعي بامتياز تحت شعار \"نخيل التمر ، رافعة التوظيف وركن اقتصاد الواحة\". لمدة 4 أيام ، يهدف المعرض إلى تسليط الضوء على دور ووزن القطاع في ظهور طبقة زراعية متوسطة. سيكون خلق وظائف ذات قيمة مضافة من قبل الصناعة في قلب المناقشات.\r\n تم وضع العديد من التدابير لتحسين هيكلة القطاع. أدت خطة المغرب الأخضر إلى إضفاء الطابع الاحترافي على هذا النشاط ، الذي كان يعتبر ذات يوم طريقة حياة لسكان الواحات. اليوم ، يتم تجميع جميع أصحاب المصلحة في الإنتاج النهائي وأسفل الإنتاج معًا كجزء من منظمة مهنية. تم توقيع عقد برنامج بقيمة 8 مليارات درهم بين الدولة وهذه الجمعية المهنية خلال الفترة 2010-2020 لتطوير القطاع والإشراف على جميع الإجراءات التي تم تنفيذها لتطويره. لقد تم بالفعل تحقيق العديد من أهداف هذا البرنامج ، خاصة في مجال المزارع ، حيث سيتم تحقيق هدف 3 ملايين قدم بحلول نهاية عام 2019 ، قبل عام واحد من الموعد المحدد.\r\n فيما يتعلق بالإنتاج ، يحتفظ المغرب بمكانته كأكبر 12 مُنتِج للتواريخ ويعزز موقعه بتوقعات قياسية للإنتاج تبلغ 143000 تي لحملة 2019-2020 ، بزيادة 41.3٪ مقارنة بحملة 2018 -19.\r\nتجدر الإشارة إلى أنه من المتوقع حدوث ارتفاع حقيقي في هذه المؤشرات في عام 2022 مع دخول جميع أشجار النخيل حيز الإنتاج.\r\n إن الإنجازات التي تحققت في مجال تثمين القيمة مهمة أيضًا ، حيث تبلغ سعة التعبئة ما يقرب من 25000 طن ، لتحقيق هدف نهائي قدره 30 000 طن.\r\nاليوم ، تساهم صناعة نخيل التمر بنسبة 60٪ من الدخل الناتج عن الزراعة في الواحات. يوفر 3.6 مليون يوم عمل لأكثر من مليوني شخص.\r\n يتميز تراث النبيذ الوطني أيضًا بتطور متزايد في المساحة المزروعة ، والتي بلغت 61000 هكتار هذا العام ، مقابل 48000 هكتار في عام 2010.\r\n كحامل للثروة والإمكانات ، يستفيد النظام البيئي للواحة بشكل كامل من النشاط الفينيقي ، الذي يعد اليوم الركن الرئيسي لاقتصاده. ويولد معدل مبيعات سنوي يصل إلى ملياري درهم ، وقد أعطى لمتخصصي علم الآثار قيمة متوسطة مضافة قدرها 1.42 مليار درهم بين عامي 2015 و 2018.\r\nبالإضافة إلى معرض التمور الدولي ، قام السيد أخنوش بزيارة \"بالم بالم جروف\" التقليدية التي تأثرت بالحرائق هذا الصيف ، حيث قدم تقريراً مرحلياً عن التقدم المحرز في برنامج تنظيف التوفا في المنطقة. استفاد أكثر من 1.3 مليون خصل من أشجار النخيل من هذه العملية ، أي 75 ٪ من البرنامج الوطني لإعادة هيكلة بستان النخيل. حضر السيد أخنوش أيضًا عرض برنامج دعم الخدمات التعاوني. يتوقع المشروع توليد أكثر من 337000 يوم عمل لشابات وشابات درعة الطفيلة ، وسيشجع على إنشاء أكثر من ألف جمعية تعاونية بحلول نهاية عام 2020. وتجدر الإشارة إلى وبهذا المعنى ، فإن خطة المغرب الأخضر تفضل بشدة إنشاء تعاونيات بهدف الإشراف على صغار المزارعين في منطقة الواحة ، مما يتيح الانتقال من 1188 إلى إطلاق PMV في عام 2008 إلى ما يقرب من 5000 تعاونية في الوقت الحالي.', '35786c0a0e16f66404c2be9a8c212eaf.jpeg', '2019-12-08 12:31:32');

-- --------------------------------------------------------

--
-- Structure de la table `bourse`
--

CREATE TABLE `bourse` (
  `id` int(11) NOT NULL,
  `souk_id` int(11) DEFAULT NULL,
  `variete_id` int(11) DEFAULT NULL,
  `semaine` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `prix` double NOT NULL,
  `unite_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `bourse`
--

INSERT INTO `bourse` (`id`, `souk_id`, `variete_id`, `semaine`, `created`, `prix`, `unite_id`, `categorie_id`) VALUES
(1, 1, 1, '2019-W49', '2019-12-07 17:23:15', 122.14, 5, 4),
(3, 1, 5, '2019-W50', '2019-12-07 17:54:35', 1.22, NULL, NULL),
(4, 1, 1, '2019-W51', '2019-12-14 21:00:31', 1000, NULL, NULL),
(5, 1, 1, '2019-W50', '2019-12-14 21:08:34', 11312, NULL, NULL),
(6, 1, 1, '2019-W50', '2019-12-14 21:09:16', 23233, 5, 7);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `designation_fr`, `designation_ar`) VALUES
(1, 'Extra1', 'اكتسرا 1'),
(2, 'Extra2', 'اكتسرا 2'),
(4, 'Extra3', 'اكتسرا 3'),
(7, 'Extra4', 'اكسترا4'),
(8, 'test', 'تيست'),
(9, 'Extra 33', 'اكسترا33');

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE `commune` (
  `id` int(11) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `commune`
--

INSERT INTO `commune` (`id`, `province_id`, `designation_fr`, `designation_ar`) VALUES
(4, 2, 'Commune1', 'البلدية 1'),
(5, 3, 'Commune2', 'البلدية 2'),
(6, 4, 'Commune3', 'البلدية 3'),
(7, 3, 'Commune4', 'البلدية 4'),
(8, 7, 'Commune5', 'البلدية 5');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id` int(11) NOT NULL,
  `unite_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `commune_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `variete_id` int(11) DEFAULT NULL,
  `acheteur_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `expired` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`id`, `unite_id`, `province_id`, `commune_id`, `categorie_id`, `variete_id`, `acheteur_id`, `created`, `expired`, `is_active`, `quantite`) VALUES
(1, 2, 2, 4, 1, 1, 10, '2019-12-15 21:33:20', '2019-12-22 22:29:53', 1, 5),
(2, 2, 2, 4, 1, 1, 32, '2019-12-19 21:30:47', NULL, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `titre_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titre_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_fr` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_ar` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typeFile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`id`, `titre_fr`, `titre_ar`, `description_fr`, `description_ar`, `file`, `typeFile`, `created`) VALUES
(1, 'aaaaa', 'ششششش', 'djdjdj', 'يييييسسسس', '920df0e27d5586cd850ca5f0521d9259.jpeg', 'image/jpeg', '2019-12-07 22:34:46'),
(4, 'aaaaa', 'سسسسسس', 'djdjdj', 'سييييسيييييي', '695b22af9d765a2fbade35a7d990132f.pdf', 'application/pdf', '2019-12-08 09:53:13');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `nom`, `prenom`, `image`, `role`, `adresse`, `phone`) VALUES
(8, 'admin', 'admin', 'admin@email.com', 'admin@email.com', 1, NULL, '$2y$13$1SB1hMFIFA9zqqCyewHBVu2ZPJ4oV0Fn.Pm7lq6OlrFBdMuKeJCUO', '2019-12-21 22:06:59', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'NOM', 'Prénom', '79d7e1e98bd3d77164a9ab78a694f76a.jpeg', 1, '36, rue imam al boukhari maarif', '0696318051'),
(9, 'offreur1', 'offreur1', 'webmaster@3findustrie.com', 'webmaster@3findustrie.com', 1, NULL, '$2y$13$QZxvUKqb9KrIshFClNJA/OvqKDj1WVvrfm7iS.oupuEdtQ3iu8WZC', '2019-12-15 22:49:28', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'ARBOUH', 'YOUNESS', 'd838489777ffa076269d6b3e7d7c614c.jpeg', 3, '36, rue imam al boukhari maarif', '0696318051'),
(10, 'acheteur1', 'acheteur1', 'sswebmaster@3findustrie.com', 'sswebmaster@3findustrie.com', 1, 'LhfSR39gDQ', '$2y$13$aiKcLe5u87ELkbnqSrYfjOMvZRXeEC3tY8ZtdH2XRII8B83hLI7P.', '2019-12-15 22:22:40', NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(12, 'offreur2', 'offreur2', 'webmastejr@3findustrie.com', 'webmastejr@3findustrie.com', 1, NULL, '$2y$13$wWPMw5y.siWiR3rpI2yqjeMNsz2jbrlBeanZv/9qc.86H.cqBUVn.', '2019-10-27 15:08:16', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 3, '36, rue imam al boukhari maarif', '0696318051'),
(19, 'admin12', 'admin12', 'webmaster1@3findustrie.com', 'webmaster1@3findustrie.com', 0, NULL, '$2y$13$V49fZ5DAwu9AdKjg3ecKf.I5i9Eq8DRm4ssG8oqY35shegZPZ5mR6', NULL, NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_FOURNISSEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 3, '36, rue imam al boukhari maarif', '0696318051'),
(20, 'admin1', 'admin1', 'webmaster41@3findustrie.com', 'webmaster41@3findustrie.com', 1, 'bzEJBv6sIW', '$2y$13$bxk0ok95.j0gzfiVKTqGSuzY0s5TE4NqemF0Mo8gBOxqVwiyk5ve2', NULL, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'ARBOUH', 'YOUNESS', NULL, 1, '36, rue imam al boukhari maarif', '0696318051'),
(21, 'admin3', 'admin3', 'webmastersssss@3findustrie.com', 'webmastersssss@3findustrie.com', 1, 'aBM4Ax11Wo', '$2y$13$cZ.WejGOMDeTLvsu2zPb4e7GJD28zS2nYMLPdTK9yXUIbWs/6WrWG', NULL, NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'admin', 'YOUNESS', 'ceca6f08d162bca52ae43d8ca91f0af7.jpeg', 1, '36, rue imam al boukhari maarif', '0696318051'),
(22, 'unessami', 'unessami', 'youness.arbouh@gmail.com', 'youness.arbouh@gmail.com', 0, NULL, '$2y$13$vhAeGeWcI.m7UGObDYnKuujJGacZRC.r90YofDfWp5RZnktZwiUZ2', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(23, 'passi', 'passi', 'youness.arbouh1@gmail.com', 'youness.arbouh1@gmail.com', 0, NULL, '$2y$13$X2mHffdHFOmUWoAROFttQOVJpBfuStP8aGKXFwkrc4HkgocfnwnVG', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(24, 'admin22', 'admin22', 'webmaste1r@3findustrie.com', 'webmaste1r@3findustrie.com', 1, NULL, '$2y$13$zcumuFtjy9jzwsGVrZqqreTMoyPySkwEx6uoDoua9Lw1dSbsEXSvG', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(25, 'zzzzz', 'zzzzz', 'webzmaster@3findustrie.com', 'webzmaster@3findustrie.com', 0, NULL, '$2y$13$SeBrsYapWFtwMG9WIWRyIuMsj6yty3iLhw0e9OFyWwTrgQ3LeqLz6', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(26, 'sss', 'sss', 'webmssaster@3findustrie.com', 'webmssaster@3findustrie.com', 0, NULL, '$2y$13$kT9HPVblqQi.lmMVMIbYvOQKAcFd7G8BBkgWjeM7wSVgkhe5snmkG', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(27, 'sdkjsdkjks', 'sdkjsdkjks', 'webmaskkter@3findustrie.com', 'webmaskkter@3findustrie.com', 0, NULL, '$2y$13$zJvQKUEPCzVOwvLmVS6lp.N4Tx.6tk.7PghtToOcJvSO.K5npDGxK', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(28, 'admdin22', 'admdin22', 'webmaster@3findustrie.coms', 'webmaster@3findustrie.coms', 1, NULL, '$2y$13$avwuvDaiwRBdWPUhWeTLV.aAogovRmp1DsZkW7OZRfFP8WJT2TULy', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(29, 'aaaaaa', 'aaaaaa', 'webmaster@3findustrie.comaa', 'webmaster@3findustrie.comaa', 0, NULL, '$2y$13$sU9wgODYYS/ox4ELj6.w5uOR6V9YreHtLU8gonBqM3fortqm6.keG', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'kkkkkkk', 'Passi', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(30, 'adminee', 'adminee', 'fffff@3findustrie.com', 'fffff@3findustrie.com', 1, NULL, '$2y$13$Xv7vjqGJpfBGbYsA/FxAr.Dtc9qIaS/8v.Y2ax68Q5sX6DTSIIpu6', '2019-12-21 17:58:36', NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(31, 'admin22d', 'admin22d', 'webmdddaster@3findustrie.com', 'webmdddaster@3findustrie.com', 0, NULL, '$2y$13$HmW0Yl8ALGnw2wGyCkMxuOrIEaIh0nqx97S0o7qBkDS702OoINsM6', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(32, 'adminn', 'adminn', 'webmssasxter@3findustrie.com', 'webmssasxter@3findustrie.com', 1, NULL, '$2y$13$ZEe42d91GHWo/n3YPVa5EONDByx7sQZXXSTUsyT909vfKkVk2bWwG', '2019-12-19 21:24:40', NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(33, 'sssssss', 'sssssss', 'webmastssser@3findustrie.com', 'webmastssser@3findustrie.com', 1, NULL, '$2y$13$aWd9lbMGmulFd9PH8Zg6SO3b2bla.fOPxPeFz6hi8sxy9qExyWgGS', '2019-12-21 17:30:18', NULL, NULL, 'a:0:{}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(34, 'sfsdfsdf', 'sfsdfsdf', 'webmasdfsdfsdfsster@3findustrie.com', 'webmasdfsdfsdfsster@3findustrie.com', 0, NULL, '$2y$13$yhYvLhLr8Xi9ZH4GL8VESuZ0iC1cFYH5.yXGtS2sQy3HdlZpizGSu', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(35, 'aminne', 'aminne', 'webmastedddr@3findustrie.com', 'webmastedddr@3findustrie.com', 0, NULL, '$2y$13$yvojqmOwDbN1DovpZRQR9.00XjMQMoof0pzkIIRaH69pE1q/F7dtO', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(36, 'admin22s', 'admin22s', 'ammm@ddd.dddd', 'ammm@ddd.dddd', 0, NULL, '$2y$13$C2K8revTrv7ALhB8XNEUs.okfMGzGa1l97D1jnNciMby/XDEkCWHu', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(37, 'admina', 'admina', 'webmastsssser@3findustrie.com', 'webmastsssser@3findustrie.com', 0, NULL, '$2y$13$rCO6saiQEvv7ySKkF9jif.A1nFnBSlzzYfr82CICuARhesL3m3IbS', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(38, 'admindssd', 'admindssd', 'webfdfdfdmaster@3findustrie.com', 'webfdfdfdmaster@3findustrie.com', 0, NULL, '$2y$13$AHNLA0gTGCnopOGQpYcQvelDUHEUXn4UL/bSz1jiacg.R6e7ZPA/y', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(39, 'adminssss', 'adminssss', 'webmsssaster@3findustrie.com', 'webmsssaster@3findustrie.com', 0, NULL, '$2y$13$rDAaNNjJSpyHil95ycPcdeG/HGh8tOHSMcFeBfYRHIImlp/4tQHji', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051'),
(40, 'adminas', 'adminas', 'webmastelllr@3findustrie.com', 'webmastelllr@3findustrie.com', 0, NULL, '$2y$13$zjaQhO0qofdzAvucewDGLeMBZCMVLzZr.12GR3gueP7j.h9JpkfKu', NULL, NULL, NULL, 'a:1:{i:0;s:13:\"ROLE_ACHETEUR\";}', 'ARBOUH', 'YOUNESS', NULL, 2, '36, rue imam al boukhari maarif', '0696318051');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id` int(11) NOT NULL,
  `unite_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `variete_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `expired` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `is_vendu` tinyint(1) NOT NULL,
  `province_id` int(11) DEFAULT NULL,
  `commune_id` int(11) DEFAULT NULL,
  `quantite` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `unite_id`, `categorie_id`, `variete_id`, `created`, `expired`, `is_active`, `fournisseur_id`, `is_vendu`, `province_id`, `commune_id`, `quantite`, `image`) VALUES
(1, 2, 2, 1, '2019-10-27 15:39:28', '2019-11-03 15:39:28', 0, 29, 0, 4, 4, 0, NULL),
(2, 2, 2, 1, '2019-10-27 15:41:01', '2019-11-03 15:41:01', 0, 12, 0, 3, 4, 0, NULL),
(4, 2, 2, 1, '2019-11-13 21:36:46', '2019-11-20 21:36:46', 0, 9, 0, 2, 4, 232, NULL),
(5, 2, 1, 1, '2019-11-20 23:43:51', '2019-11-27 23:43:51', 0, 9, 0, 2, 4, 5, NULL),
(6, 2, 1, 1, '2019-12-15 16:04:23', '2019-12-22 18:25:21', 1, 9, 0, 2, 4, 199, NULL),
(7, 2, 1, 1, '2019-12-15 20:45:58', '2019-12-22 20:49:37', 1, 9, 0, 2, 4, 3, 'f316b705ee3e258a301183a1545d83fe.png'),
(8, 2, 1, 1, '2019-12-15 22:34:13', '2019-12-22 22:34:30', 1, 9, 0, 2, 4, 5, '9b3a151585d47f6bb53d0a4862f3674c.png');

-- --------------------------------------------------------

--
-- Structure de la table `operateur`
--

CREATE TABLE `operateur` (
  `id` int(11) NOT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `operateur`
--

INSERT INTO `operateur` (`id`, `designation_fr`, `designation_ar`) VALUES
(1, 'test', 'تيست');

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE `professionnel` (
  `id` int(11) NOT NULL,
  `operateur_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `societe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `professionnel`
--

INSERT INTO `professionnel` (`id`, `operateur_id`, `nom`, `prenom`, `telephone`, `adresse`, `societe`, `province_id`, `email`) VALUES
(1, 1, 'Youness', NULL, '+212696318051', '36, rue imam al boukhari maarif', '3f industrie', NULL, NULL),
(2, 1, 'Youness', 'ARBOUH', '+212696318051', '36, rue imam al boukhari maarif', '3f industrie', 2, 'webmaster@3findustrie.com');

-- --------------------------------------------------------

--
-- Structure de la table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `province`
--

INSERT INTO `province` (`id`, `designation_fr`, `designation_ar`) VALUES
(2, 'Ouarzazate', 'ورزازات'),
(3, 'Tafilalet', 'تفيلالت'),
(4, 'Guelmim', 'كلميم'),
(7, 'Tiznit', 'تزنيت');

-- --------------------------------------------------------

--
-- Structure de la table `souk`
--

CREATE TABLE `souk` (
  `id` int(11) NOT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `souk`
--

INSERT INTO `souk` (`id`, `designation_fr`, `designation_ar`) VALUES
(1, 'Souk el hed', 'سوق الاحد'),
(3, 'Souk el heds', 'سوق الاحد');

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

CREATE TABLE `unite` (
  `id` int(11) NOT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `unite`
--

INSERT INTO `unite` (`id`, `designation_fr`, `designation_ar`) VALUES
(2, 'unite1', 'وحدة 1'),
(3, 'unite2', 'وحدة 2'),
(5, 'unite3', 'وحدة 3');

-- --------------------------------------------------------

--
-- Structure de la table `variete`
--

CREATE TABLE `variete` (
  `id` int(11) NOT NULL,
  `designation_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `singe_fr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `singe_ar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `variete`
--

INSERT INTO `variete` (`id`, `designation_fr`, `designation_ar`, `singe_fr`, `singe_ar`, `image`) VALUES
(1, 'Mejhoul', 'المجهول', '', '', ''),
(4, 'Boufeggous', 'بوفكوس\r\n', '', '', ''),
(5, 'Bouskri', 'بوسكري\r\n', '', '', ''),
(6, 'AZERTY', 'ضصثقف', 'uiopqs', 'عهخحشسي', ''),
(7, 'EZsss', 'ضصثقف', 'uiopqs', 'عهخحشسي', '2f014cc77627b34adfebeacebb7879a8.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bourse`
--
ALTER TABLE `bourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DDC2BC1CFD5BABD8` (`souk_id`),
  ADD KEY `IDX_DDC2BC1C620D5460` (`variete_id`),
  ADD KEY `IDX_DDC2BC1CEC4A74AB` (`unite_id`),
  ADD KEY `IDX_DDC2BC1CBCF5E72D` (`categorie_id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_497DD634898B71A1` (`designation_fr`);

--
-- Index pour la table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E2E2D1EE898B71A1` (`designation_fr`),
  ADD KEY `IDX_E2E2D1EEE946114A` (`province_id`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2694D7A5EC4A74AB` (`unite_id`),
  ADD KEY `IDX_2694D7A5E946114A` (`province_id`),
  ADD KEY `IDX_2694D7A5131A4F72` (`commune_id`),
  ADD KEY `IDX_2694D7A5BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_2694D7A5620D5460` (`variete_id`),
  ADD KEY `IDX_2694D7A596A7BB5F` (`acheteur_id`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AF86866FEC4A74AB` (`unite_id`),
  ADD KEY `IDX_AF86866FBCF5E72D` (`categorie_id`),
  ADD KEY `IDX_AF86866F620D5460` (`variete_id`),
  ADD KEY `IDX_AF86866F670C757F` (`fournisseur_id`),
  ADD KEY `IDX_AF86866FE946114A` (`province_id`),
  ADD KEY `IDX_AF86866F131A4F72` (`commune_id`);

--
-- Index pour la table `operateur`
--
ALTER TABLE `operateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B4B7F99D898B71A1` (`designation_fr`);

--
-- Index pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7A28C10F3F192FC` (`operateur_id`),
  ADD KEY `IDX_7A28C10FE946114A` (`province_id`);

--
-- Index pour la table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4ADAD40B898B71A1` (`designation_fr`);

--
-- Index pour la table `souk`
--
ALTER TABLE `souk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_936D6910898B71A1` (`designation_fr`);

--
-- Index pour la table `unite`
--
ALTER TABLE `unite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D64C118898B71A1` (`designation_fr`);

--
-- Index pour la table `variete`
--
ALTER TABLE `variete`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2CD7CD58898B71A1` (`designation_fr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bourse`
--
ALTER TABLE `bourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `commune`
--
ALTER TABLE `commune`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `operateur`
--
ALTER TABLE `operateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `professionnel`
--
ALTER TABLE `professionnel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `souk`
--
ALTER TABLE `souk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `unite`
--
ALTER TABLE `unite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `variete`
--
ALTER TABLE `variete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bourse`
--
ALTER TABLE `bourse`
  ADD CONSTRAINT `FK_DDC2BC1C620D5460` FOREIGN KEY (`variete_id`) REFERENCES `variete` (`id`),
  ADD CONSTRAINT `FK_DDC2BC1CBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_DDC2BC1CEC4A74AB` FOREIGN KEY (`unite_id`) REFERENCES `unite` (`id`),
  ADD CONSTRAINT `FK_DDC2BC1CFD5BABD8` FOREIGN KEY (`souk_id`) REFERENCES `souk` (`id`);

--
-- Contraintes pour la table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `FK_E2E2D1EEE946114A` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`);

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `FK_2694D7A5131A4F72` FOREIGN KEY (`commune_id`) REFERENCES `commune` (`id`),
  ADD CONSTRAINT `FK_2694D7A5620D5460` FOREIGN KEY (`variete_id`) REFERENCES `variete` (`id`),
  ADD CONSTRAINT `FK_2694D7A596A7BB5F` FOREIGN KEY (`acheteur_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_2694D7A5BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_2694D7A5E946114A` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  ADD CONSTRAINT `FK_2694D7A5EC4A74AB` FOREIGN KEY (`unite_id`) REFERENCES `unite` (`id`);

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `FK_AF86866F131A4F72` FOREIGN KEY (`commune_id`) REFERENCES `commune` (`id`),
  ADD CONSTRAINT `FK_AF86866F620D5460` FOREIGN KEY (`variete_id`) REFERENCES `variete` (`id`),
  ADD CONSTRAINT `FK_AF86866F670C757F` FOREIGN KEY (`fournisseur_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_AF86866FBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_AF86866FE946114A` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  ADD CONSTRAINT `FK_AF86866FEC4A74AB` FOREIGN KEY (`unite_id`) REFERENCES `unite` (`id`);

--
-- Contraintes pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD CONSTRAINT `FK_7A28C10F3F192FC` FOREIGN KEY (`operateur_id`) REFERENCES `operateur` (`id`),
  ADD CONSTRAINT `FK_7A28C10FE946114A` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
