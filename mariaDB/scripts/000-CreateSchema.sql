SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `ffxiv2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ffxiv2`;

DELIMITER //
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_etag`(IN `i` VARCHAR(20))
BEGIN
	DECLARE e VARCHAR(14) DEFAULT DATE_FORMAT( NOW(), '%Y%m%d%k%i%s' );
	INSERT INTO `etags` (`item`, `etag`) VALUES (i, e) 
		ON DUPLICATE KEY UPDATE `etag` = e;
END//
DELIMITER ;

-- Atheryte tables
CREATE TABLE `aetherytes_arr` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text NOT NULL,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED NOT NULL,
  `y` decimal(3,1) UNSIGNED NOT NULL,
  `cost` decimal(3,1) UNSIGNED NOT NULL DEFAULT '0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `aeth_arr_del` AFTER DELETE ON `aetherytes_arr` FOR EACH ROW BEGIN
	CALL update_etag('distances_arr');
	CALL update_etag('aeth_arr');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_arr_ins` AFTER INSERT ON `aetherytes_arr` FOR EACH ROW BEGIN
	CALL update_etag('distances_arr');
	CALL update_etag('aeth_arr');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_arr_upd` AFTER UPDATE ON `aetherytes_arr` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.cost <> OLD.cost OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_arr');
    END IF;
	CALL update_etag('aeth_arr');
END
$$
DELIMITER ;

CREATE TABLE `aetherytes_hw` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text NOT NULL,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED NOT NULL,
  `y` decimal(3,1) UNSIGNED NOT NULL,
  `cost` decimal(3,1) UNSIGNED NOT NULL DEFAULT '0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `aeth_hw_del` AFTER DELETE ON `aetherytes_hw` FOR EACH ROW BEGIN
	CALL update_etag('distances_hw');
	CALL update_etag('aeth_hw');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_hw_ins` AFTER INSERT ON `aetherytes_hw` FOR EACH ROW BEGIN
	CALL update_etag('distances_hw');
	CALL update_etag('aeth_hw');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_hw_upd` AFTER UPDATE ON `aetherytes_hw` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.cost <> OLD.cost OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_hw');
    END IF;
	CALL update_etag('aeth_hw');
END
$$
DELIMITER ;


CREATE TABLE `aetherytes_sb` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED NOT NULL,
  `y` decimal(3,1) UNSIGNED NOT NULL,
  `cost` decimal(3,1) UNSIGNED NOT NULL DEFAULT '0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `aeth_sb_del` AFTER DELETE ON `aetherytes_sb` FOR EACH ROW BEGIN
	CALL update_etag('distances_sb');
	CALL update_etag('aeth_sb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_sb_ins` AFTER INSERT ON `aetherytes_sb` FOR EACH ROW BEGIN
	CALL update_etag('distances_sb');
	CALL update_etag('aeth_sb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_sb_upd` AFTER UPDATE ON `aetherytes_sb` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.cost <> OLD.cost OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_sb');
    END IF;
	CALL update_etag('aeth_sb');
END
$$
DELIMITER ;


CREATE TABLE `aetherytes_shb` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text NOT NULL,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED NOT NULL,
  `y` decimal(3,1) UNSIGNED NOT NULL,
  `z` decimal(3,1) DEFAULT NULL,
  `cost` decimal(3,1) UNSIGNED NOT NULL DEFAULT '0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DELIMITER $$
CREATE TRIGGER `aeth_shb_del` AFTER DELETE ON `aetherytes_shb` FOR EACH ROW BEGIN
	CALL update_etag('distances_shb');
	CALL update_etag('aeth_shb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_shb_ins` AFTER INSERT ON `aetherytes_shb` FOR EACH ROW BEGIN
	CALL update_etag('distances_shb');
	CALL update_etag('aeth_shb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aeth_shb_upd` AFTER UPDATE ON `aetherytes_shb` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.cost <> OLD.cost OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_shb');
    END IF;
	CALL update_etag('aeth_shb');
END
$$
DELIMITER ;

-- etags
CREATE TABLE `etags` (
  `item` varchar(20) NOT NULL,
  `etag` varchar(14) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- fates
CREATE TABLE `fates_arr` (
  `id` int(10) NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- mobs

CREATE TABLE `mobs_arr` (
  `id` int(10) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED DEFAULT NULL,
  `y` decimal(3,1) UNSIGNED DEFAULT NULL,
  `lvl` tinyint(3) DEFAULT NULL,
  `slain` tinyint(2) DEFAULT NULL,
  `is_fate` tinyint(1) DEFAULT '0',
  `id_fate` smallint(5) UNSIGNED DEFAULT NULL,
  `is_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_multiple` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `mob_arr_del` AFTER DELETE ON `mobs_arr` FOR EACH ROW BEGIN
	CALL update_etag('distances_arr');
	CALL update_etag('mobs_arr');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_arr_ins` AFTER INSERT ON `mobs_arr` FOR EACH ROW BEGIN
	CALL update_etag('distances_arr');
	CALL update_etag('mobs_arr');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_arr_upd` AFTER UPDATE ON `mobs_arr` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.id_zone <> OLD.is_visible OR NEW.is_visible <> OLD.id_zone THEN
		CALL update_etag('distances_arr');
    END IF;
	CALL update_etag('mobs_arr');
END
$$
DELIMITER ;

CREATE TABLE `mobs_hw` (
  `id` int(10) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED NOT NULL,
  `y` decimal(3,1) UNSIGNED NOT NULL,
  `lvl` tinyint(3) DEFAULT NULL,
  `slain` tinyint(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DELIMITER $$
CREATE TRIGGER `mob_hw_del` AFTER DELETE ON `mobs_hw` FOR EACH ROW BEGIN
	CALL update_etag('distances_hw');
	CALL update_etag('mobs_hw');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_hw_ins` AFTER INSERT ON `mobs_hw` FOR EACH ROW BEGIN
	CALL update_etag('distances_hw');
	CALL update_etag('mobs_hw');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_hw_upd` AFTER UPDATE ON `mobs_hw` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_hw');
    END IF;
	CALL update_etag('mobs_hw');
END
$$
DELIMITER ;

CREATE TABLE `mobs_sb` (
  `id` int(10) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED NOT NULL,
  `y` decimal(3,1) UNSIGNED NOT NULL,
  `lvl` tinyint(3) DEFAULT NULL,
  `slain` tinyint(2) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DELIMITER $$
CREATE TRIGGER `mob_sb_del` AFTER DELETE ON `mobs_sb` FOR EACH ROW BEGIN
	CALL update_etag('distances_sb');
	CALL update_etag('mobs_sb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_sb_ins` AFTER INSERT ON `mobs_sb` FOR EACH ROW BEGIN
	CALL update_etag('distances_sb');
	CALL update_etag('mobs_sb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_sb_upd` AFTER UPDATE ON `mobs_sb` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_sb');
    END IF;
	CALL update_etag('mobs_sb');
END
$$
DELIMITER ;

CREATE TABLE `mobs_shb` (
  `id` int(10) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `id_zone` tinyint(4) NOT NULL,
  `x` decimal(3,1) UNSIGNED DEFAULT NULL,
  `y` decimal(3,1) UNSIGNED DEFAULT NULL,
  `z` decimal(3,1) DEFAULT NULL,
  `lvl` tinyint(3) DEFAULT NULL,
  `slain` tinyint(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `mob_shb_del` AFTER DELETE ON `mobs_shb` FOR EACH ROW BEGIN
	CALL update_etag('distances_shb');
	CALL update_etag('mobs_shb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_shb_ins` AFTER INSERT ON `mobs_shb` FOR EACH ROW BEGIN
	CALL update_etag('distances_shb');
	CALL update_etag('mobs_shb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mob_shb_upd` AFTER UPDATE ON `mobs_shb` FOR EACH ROW BEGIN
	IF NEW.x <> OLD.x OR NEW.y <> OLD.y OR NEW.id_zone <> OLD.id_zone THEN
		CALL update_etag('distances_shb');
    END IF;
	CALL update_etag('mobs_shb');
END
$$
DELIMITER ;

-- region

CREATE TABLE `region_arr` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `zones_arr` (
  `id` tinyint(4) NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `size_x` decimal(3,1) UNSIGNED NOT NULL DEFAULT '41.9',
  `size_y` decimal(3,1) UNSIGNED NOT NULL DEFAULT '41.9',
  `id_region` tinyint(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `zones_arr_del` AFTER DELETE ON `zones_arr` FOR EACH ROW BEGIN
	CALL update_etag('zones_arr');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_arr_ins` AFTER INSERT ON `zones_arr` FOR EACH ROW BEGIN
	CALL update_etag('zones_arr');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_arr_upd` AFTER UPDATE ON `zones_arr` FOR EACH ROW BEGIN
	CALL update_etag('zones_arr');
END
$$
DELIMITER ;

CREATE TABLE `zones_hw` (
  `id` tinyint(4) NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `size_x` decimal(3,1) UNSIGNED NOT NULL,
  `size_y` decimal(3,1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `zones_hw_del` AFTER DELETE ON `zones_hw` FOR EACH ROW BEGIN
	CALL update_etag('zones_hw');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_hw_ins` AFTER INSERT ON `zones_hw` FOR EACH ROW BEGIN
	CALL update_etag('zones_hw');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_hw_upd` AFTER UPDATE ON `zones_hw` FOR EACH ROW BEGIN
	CALL update_etag('zones_hw');
END
$$
DELIMITER ;


CREATE TABLE `zones_sb` (
  `id` tinyint(4) NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `size_x` decimal(3,1) UNSIGNED NOT NULL,
  `size_y` decimal(3,1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `zones_sb_del` AFTER DELETE ON `zones_sb` FOR EACH ROW BEGIN
	CALL update_etag('zones_sb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_sb_ins` AFTER INSERT ON `zones_sb` FOR EACH ROW BEGIN
	CALL update_etag('zones_sb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_sb_upd` AFTER UPDATE ON `zones_sb` FOR EACH ROW BEGIN
	CALL update_etag('zones_sb');
END
$$
DELIMITER ;

CREATE TABLE `zones_shb` (
  `id` tinyint(4) NOT NULL,
  `xivdb_id` int(10) DEFAULT NULL,
  `name` text,
  `name_en` text,
  `name_fr` text,
  `name_de` text,
  `name_jp` text,
  `name_ch` text,
  `size_x` decimal(3,1) UNSIGNED NOT NULL DEFAULT '41.0',
  `size_y` decimal(3,1) UNSIGNED NOT NULL DEFAULT '41.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$
CREATE TRIGGER `zones_shb_del` AFTER DELETE ON `zones_shb` FOR EACH ROW BEGIN
	CALL update_etag('zones_shb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_shb_ins` AFTER INSERT ON `zones_shb` FOR EACH ROW BEGIN
	CALL update_etag('zones_shb');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `zones_shb_upd` AFTER UPDATE ON `zones_shb` FOR EACH ROW BEGIN
	CALL update_etag('zones_shb');
END
$$
DELIMITER ;

COMMIT;