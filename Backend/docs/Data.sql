-- Adminer 4.8.1 MySQL 10.11.6-MariaDB-1:10.11.6+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `image` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66F675F31B` (`author_id`),
  CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `article` (`id`, `author_id`, `title`, `content`, `created_at`, `updated_at`, `image`) VALUES
(1,	1,	'Continuer la course',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet posuere libero quis tincidunt. Nam rhoncus rhoncus erat non luctus. Phasellus quis convallis leo. Nulla non nisi purus. Sed eu felis tortor. Donec orci orci, sodales et pretium non, ornare nec eros. Vivamus blandit mi non tellus finibus, vitae aliquet ipsum mattis. Suspendisse mollis ligula vitae ipsum mattis lobortis. Pellentesque mattis elit nec facilisis rhoncus.\r\n\r\nNulla vel eros eget metus finibus blandit non ac elit. Quisque nec euismod justo. Cras libero massa, rutrum ac ante eget, dignissim vehicula sem. Morbi vel dapibus ligula. Aliquam efficitur massa volutpat, molestie dui accumsan, lobortis lectus. Nunc pulvinar et risus in placerat. Aliquam at justo a purus ornare consequat at ut mauris. Vestibulum tempor blandit dolor, ac volutpat tellus varius ultricies. Ut pulvinar eros et nulla venenatis bibendum. Nunc eu elit sit amet nisl malesuada tristique.\r\n\r\nPhasellus blandit dui sit amet est vulputate semper. Nunc mattis, neque ac hendrerit maximus, turpis turpis blandit odio, eu elementum risus augue eu nunc. Vestibulum maximus pulvinar ligula eget pellentesque. Ut id est a diam consequat semper vitae et justo. Maecenas iaculis malesuada rhoncus. Morbi posuere lacus quis arcu egestas sagittis. Curabitur maximus at enim ac lacinia.\r\n\r\n',	'2024-05-15 11:48:55',	NULL,	'https://st.depositphotos.com/2146559/4611/i/450/depositphotos_46110259-stock-photo-runner-athlete-running-on-road.jpg'),
(2,	2,	'Voyages ! Voyages',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet posuere libero quis tincidunt. Nam rhoncus rhoncus erat non luctus. Phasellus quis convallis leo. Nulla non nisi purus. Sed eu felis tortor. Donec orci orci, sodales et pretium non, ornare nec eros. Vivamus blandit mi non tellus finibus, vitae aliquet ipsum mattis. Suspendisse mollis ligula vitae ipsum mattis lobortis. Pellentesque mattis elit nec facilisis rhoncus.\r\n\r\nNulla vel eros eget metus finibus blandit non ac elit. Quisque nec euismod justo. Cras libero massa, rutrum ac ante eget, dignissim vehicula sem. Morbi vel dapibus ligula. Aliquam efficitur massa volutpat, molestie dui accumsan, lobortis lectus. Nunc pulvinar et risus in placerat. Aliquam at justo a purus ornare consequat at ut mauris. Vestibulum tempor blandit dolor, ac volutpat tellus varius ultricies. Ut pulvinar eros et nulla venenatis bibendum. Nunc eu elit sit amet nisl malesuada tristique.\r\n\r\nPhasellus blandit dui sit amet est vulputate semper. Nunc mattis, neque ac hendrerit maximus, turpis turpis blandit odio, eu elementum risus augue eu nunc. Vestibulum maximus pulvinar ligula eget pellentesque. Ut id est a diam consequat semper vitae et justo. Maecenas iaculis malesuada rhoncus. Morbi posuere lacus quis arcu egestas sagittis. Curabitur maximus at enim ac lacinia.\r\n\r\n',	'2024-05-15 11:50:06',	NULL,	'https://images.assetsdelivery.com/compings_v2/anyaivanova/anyaivanova2305/anyaivanova230502890.jpg'),
(3,	3,	'Parler de la maladie à son enfant',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet posuere libero quis tincidunt. Nam rhoncus rhoncus erat non luctus. Phasellus quis convallis leo. Nulla non nisi purus. Sed eu felis tortor. Donec orci orci, sodales et pretium non, ornare nec eros. Vivamus blandit mi non tellus finibus, vitae aliquet ipsum mattis. Suspendisse mollis ligula vitae ipsum mattis lobortis. Pellentesque mattis elit nec facilisis rhoncus.\r\n\r\nNulla vel eros eget metus finibus blandit non ac elit. Quisque nec euismod justo. Cras libero massa, rutrum ac ante eget, dignissim vehicula sem. Morbi vel dapibus ligula. Aliquam efficitur massa volutpat, molestie dui accumsan, lobortis lectus. Nunc pulvinar et risus in placerat. Aliquam at justo a purus ornare consequat at ut mauris. Vestibulum tempor blandit dolor, ac volutpat tellus varius ultricies. Ut pulvinar eros et nulla venenatis bibendum. Nunc eu elit sit amet nisl malesuada tristique.\r\n\r\nPhasellus blandit dui sit amet est vulputate semper. Nunc mattis, neque ac hendrerit maximus, turpis turpis blandit odio, eu elementum risus augue eu nunc. Vestibulum maximus pulvinar ligula eget pellentesque. Ut id est a diam consequat semper vitae et justo. Maecenas iaculis malesuada rhoncus. Morbi posuere lacus quis arcu egestas sagittis. Curabitur maximus at enim ac lacinia.\r\n\r\n',	'2024-05-15 11:51:05',	NULL,	'https://fotomelia.com/wp-content/uploads/edd/2015/05/banque-d-images-photos-gratuites-libres-de-droits-creative-commons71-1560x1170.jpg'),
(4,	3,	'S\'évader par le jeu vidéo',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean aliquet posuere libero quis tincidunt. Nam rhoncus rhoncus erat non luctus. Phasellus quis convallis leo. Nulla non nisi purus. Sed eu felis tortor. Donec orci orci, sodales et pretium non, ornare nec eros. Vivamus blandit mi non tellus finibus, vitae aliquet ipsum mattis. Suspendisse mollis ligula vitae ipsum mattis lobortis. Pellentesque mattis elit nec facilisis rhoncus.\r\n\r\nNulla vel eros eget metus finibus blandit non ac elit. Quisque nec euismod justo. Cras libero massa, rutrum ac ante eget, dignissim vehicula sem. Morbi vel dapibus ligula. Aliquam efficitur massa volutpat, molestie dui accumsan, lobortis lectus. Nunc pulvinar et risus in placerat. Aliquam at justo a purus ornare consequat at ut mauris. Vestibulum tempor blandit dolor, ac volutpat tellus varius ultricies. Ut pulvinar eros et nulla venenatis bibendum. Nunc eu elit sit amet nisl malesuada tristique.\r\n\r\nPhasellus blandit dui sit amet est vulputate semper. Nunc mattis, neque ac hendrerit maximus, turpis turpis blandit odio, eu elementum risus augue eu nunc. Vestibulum maximus pulvinar ligula eget pellentesque. Ut id est a diam consequat semper vitae et justo. Maecenas iaculis malesuada rhoncus. Morbi posuere lacus quis arcu egestas sagittis. Curabitur maximus at enim ac lacinia.\r\nPellentesque convallis lectus tellus, eu lacinia velit aliquet sit amet. Mauris semper lectus at sodales ullamcorper. Integer in enim eget diam rutrum tristique. Proin sit amet vestibulum ex. Maecenas pellentesque sit amet nibh ac venenatis. Vestibulum a auctor enim, quis dignissim lorem. Quisque ullamcorper posuere diam id finibus. Vivamus iaculis, tellus eu hendrerit sollicitudin, mauris diam egestas sapien, nec lacinia nisl magna et nulla. Morbi vitae justo semper elit imperdiet ullamcorper. In vel leo quis quam vulputate consequat a non leo. Proin nec urna eget odio dapibus pulvinar.\r\n\r\n\r\n',	'2024-05-15 11:51:05',	NULL,	'https://www.shutterstock.com/image-photo/girl-headphones-plays-video-game-260nw-1691902219.jpg');

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `author` (`id`, `name`, `email`) VALUES
(1,	'Eliott B.B.',	'eliottbb@orange.fr'),
(2,	'Vincent Cordollier',	'vincentc@gmail.com'),
(3,	'Marween Silver',	'silver.marween@hotmail.fr');

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `category` (`id`, `name`) VALUES
(1,	'Guérison'),
(2,	'Quotidien'),
(3,	'Santé'),
(4,	'Parentalité'),
(5,	'Rechute'),
(6,	'Activité');

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE `category_article` (
  `category_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`article_id`),
  KEY `IDX_C5E24E1812469DE2` (`category_id`),
  KEY `IDX_C5E24E187294869C` (`article_id`),
  CONSTRAINT `FK_C5E24E1812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C5E24E187294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `category_article` (`category_id`, `article_id`) VALUES
(1,	2),
(2,	1),
(2,	4),
(3,	1),
(3,	4),
(4,	2),
(4,	3),
(5,	3),
(6,	1),
(6,	4);

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240515094146',	'2024-05-15 09:42:39',	272);

-- 2024-05-15 09:56:12