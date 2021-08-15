SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
USE 'ffxiv2';

INSERT INTO `etags` (`item`, `etag`) VALUES
('distances_arr', '20180929121118'),
('mobs_arr', '20180929121118'),
('mobs_hw', '20190303134627'),
('distances_hw', '20190303134627'),
('mobs_sb', '2020020272511'),
('distances_sb', '2020020272511'),
('aeth_arr', '20170712174317'),
('aeth_hw', '2017100974106'),
('aeth_sb', '2020020272510'),
('fates_arr', '20170712174317'),
('region_arr', '20170712174317'),
('zones_arr', '20170712174317'),
('zones_hw', '2017100974106'),
('zones_sb', '2020020272512'),
('zones_shb', '2020020272512'),
('distances_shb', '2020020272512'),
('aeth_shb', '2020020272510'),
('mobs_shb', '2020020273245');

COMMIT;