-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 12:23 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mn_restaurant_with`
--

-- --------------------------------------------------------

--
-- Table structure for table `cr_addons`
--

CREATE TABLE `cr_addons` (
  `addon_id` int(11) NOT NULL,
  `addon_name` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `addon_image` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_addons`
--

INSERT INTO `cr_addons` (`addon_id`, `addon_name`, `price`, `description`, `addon_image`, `status`) VALUES
(42, 'Onions', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_42.jpg', 'Active'),
(43, 'Pepper', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_43.jpg', 'Active'),
(44, 'Salt', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_44.jpg', 'Active'),
(45, 'Souce', '20.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_45.jpg', 'Active'),
(46, 'Lemon', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_46.jpg', 'Active'),
(47, 'Jam', '10.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_47.jpg', 'Active'),
(48, 'Kechups', '15.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'addon_48.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_calendar_timezones`
--

CREATE TABLE `cr_calendar_timezones` (
  `CountryCode` char(2) NOT NULL,
  `Coordinates` char(15) NOT NULL,
  `TimeZone` char(32) NOT NULL,
  `Comments` varchar(85) NOT NULL,
  `UTC_offset` char(8) NOT NULL,
  `UTC_DST_offset` char(8) NOT NULL,
  `Notes` varchar(79) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_calendar_timezones`
--

INSERT INTO `cr_calendar_timezones` (`CountryCode`, `Coordinates`, `TimeZone`, `Comments`, `UTC_offset`, `UTC_DST_offset`, `Notes`) VALUES
('CI', '+0519-00402', 'Africa/Abidjan', '', '+00:00', '+00:00', ''),
('GH', '+0533-00013', 'Africa/Accra', '', '+00:00', '+00:00', ''),
('ET', '+0902+03842', 'Africa/Addis_Ababa', '', '+03:00', '+03:00', ''),
('DZ', '+3647+00303', 'Africa/Algiers', '', '+01:00', '+01:00', ''),
('ER', '+1520+03853', 'Africa/Asmara', '', '+03:00', '+03:00', ''),
('', '', 'Africa/Asmera', '', '+03:00', '+03:00', 'Link to Africa/Asmara'),
('ML', '+1239-00800', 'Africa/Bamako', '', '+00:00', '+00:00', ''),
('CF', '+0422+01835', 'Africa/Bangui', '', '+01:00', '+01:00', ''),
('GM', '+1328-01639', 'Africa/Banjul', '', '+00:00', '+00:00', ''),
('GW', '+1151-01535', 'Africa/Bissau', '', '+00:00', '+00:00', ''),
('MW', '-1547+03500', 'Africa/Blantyre', '', '+02:00', '+02:00', ''),
('CG', '-0416+01517', 'Africa/Brazzaville', '', '+01:00', '+01:00', ''),
('BI', '-0323+02922', 'Africa/Bujumbura', '', '+02:00', '+02:00', ''),
('EG', '+3003+03115', 'Africa/Cairo', '', '+02:00', '+02:00', 'DST has been canceled since 2011'),
('MA', '+3339-00735', 'Africa/Casablanca', '', '+00:00', '+01:00', ''),
('ES', '+3553-00519', 'Africa/Ceuta', 'Ceuta & Melilla', '+01:00', '+02:00', ''),
('GN', '+0931-01343', 'Africa/Conakry', '', '+00:00', '+00:00', ''),
('SN', '+1440-01726', 'Africa/Dakar', '', '+00:00', '+00:00', ''),
('TZ', '-0648+03917', 'Africa/Dar_es_Salaam', '', '+03:00', '+03:00', ''),
('DJ', '+1136+04309', 'Africa/Djibouti', '', '+03:00', '+03:00', ''),
('CM', '+0403+00942', 'Africa/Douala', '', '+01:00', '+01:00', ''),
('EH', '+2709-01312', 'Africa/El_Aaiun', '', '+00:00', '+00:00', ''),
('SL', '+0830-01315', 'Africa/Freetown', '', '+00:00', '+00:00', ''),
('BW', '-2439+02555', 'Africa/Gaborone', '', '+02:00', '+02:00', ''),
('ZW', '-1750+03103', 'Africa/Harare', '', '+02:00', '+02:00', ''),
('ZA', '-2615+02800', 'Africa/Johannesburg', '', '+02:00', '+02:00', ''),
('SS', '+0451+03136', 'Africa/Juba', '', '+03:00', '+03:00', ''),
('UG', '+0019+03225', 'Africa/Kampala', '', '+03:00', '+03:00', ''),
('SD', '+1536+03232', 'Africa/Khartoum', '', '+03:00', '+03:00', ''),
('RW', '-0157+03004', 'Africa/Kigali', '', '+02:00', '+02:00', ''),
('CD', '-0418+01518', 'Africa/Kinshasa', 'west Dem. Rep. of Congo', '+01:00', '+01:00', ''),
('NG', '+0627+00324', 'Africa/Lagos', '', '+01:00', '+01:00', ''),
('GA', '+0023+00927', 'Africa/Libreville', '', '+01:00', '+01:00', ''),
('TG', '+0608+00113', 'Africa/Lome', '', '+00:00', '+00:00', ''),
('AO', '-0848+01314', 'Africa/Luanda', '', '+01:00', '+01:00', ''),
('CD', '-1140+02728', 'Africa/Lubumbashi', 'east Dem. Rep. of Congo', '+02:00', '+02:00', ''),
('ZM', '-1525+02817', 'Africa/Lusaka', '', '+02:00', '+02:00', ''),
('GQ', '+0345+00847', 'Africa/Malabo', '', '+01:00', '+01:00', ''),
('MZ', '-2558+03235', 'Africa/Maputo', '', '+02:00', '+02:00', ''),
('LS', '-2928+02730', 'Africa/Maseru', '', '+02:00', '+02:00', ''),
('SZ', '-2618+03106', 'Africa/Mbabane', '', '+02:00', '+02:00', ''),
('SO', '+0204+04522', 'Africa/Mogadishu', '', '+03:00', '+03:00', ''),
('LR', '+0618-01047', 'Africa/Monrovia', '', '+00:00', '+00:00', ''),
('KE', '-0117+03649', 'Africa/Nairobi', '', '+03:00', '+03:00', ''),
('TD', '+1207+01503', 'Africa/Ndjamena', '', '+01:00', '+01:00', ''),
('NE', '+1331+00207', 'Africa/Niamey', '', '+01:00', '+01:00', ''),
('MR', '+1806-01557', 'Africa/Nouakchott', '', '+00:00', '+00:00', ''),
('BF', '+1222-00131', 'Africa/Ouagadougou', '', '+00:00', '+00:00', ''),
('BJ', '+0629+00237', 'Africa/Porto-Novo', '', '+01:00', '+01:00', ''),
('ST', '+0020+00644', 'Africa/Sao_Tome', '', '+00:00', '+00:00', ''),
('', '', 'Africa/Timbuktu', '', '+00:00', '+00:00', 'Link to Africa/Bamako'),
('LY', '+3254+01311', 'Africa/Tripoli', '', '+01:00', '+02:00', ''),
('TN', '+3648+01011', 'Africa/Tunis', '', '+01:00', '+01:00', ''),
('NA', '-2234+01706', 'Africa/Windhoek', '', '+01:00', '+02:00', ''),
('', '', 'AKST9AKDT', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('US', '+515248-1763929', 'America/Adak', 'Aleutian Islands', '−10:00', '−09:00', ''),
('US', '+611305-1495401', 'America/Anchorage', 'Alaska Time', '−09:00', '−08:00', ''),
('AI', '+1812-06304', 'America/Anguilla', '', '−04:00', '−04:00', ''),
('AG', '+1703-06148', 'America/Antigua', '', '−04:00', '−04:00', ''),
('BR', '-0712-04812', 'America/Araguaina', 'Tocantins', '−03:00', '−03:00', ''),
('AR', '-3436-05827', 'America/Argentina/Buenos_Aires', 'Buenos Aires (BA, CF)', '−03:00', '−03:00', ''),
('AR', '-2828-06547', 'America/Argentina/Catamarca', 'Catamarca (CT), Chubut (CH)', '−03:00', '−03:00', ''),
('', '', 'America/Argentina/ComodRivadavia', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('AR', '-3124-06411', 'America/Argentina/Cordoba', 'most locations (CB, CC, CN, ER, FM, MN, SE, SF)', '−03:00', '−03:00', ''),
('AR', '-2411-06518', 'America/Argentina/Jujuy', 'Jujuy (JY)', '−03:00', '−03:00', ''),
('AR', '-2926-06651', 'America/Argentina/La_Rioja', 'La Rioja (LR)', '−03:00', '−03:00', ''),
('AR', '-3253-06849', 'America/Argentina/Mendoza', 'Mendoza (MZ)', '−03:00', '−03:00', ''),
('AR', '-5138-06913', 'America/Argentina/Rio_Gallegos', 'Santa Cruz (SC)', '−03:00', '−03:00', ''),
('AR', '-2447-06525', 'America/Argentina/Salta', '(SA, LP, NQ, RN)', '−03:00', '−03:00', ''),
('AR', '-3132-06831', 'America/Argentina/San_Juan', 'San Juan (SJ)', '−03:00', '−03:00', ''),
('AR', '-3319-06621', 'America/Argentina/San_Luis', 'San Luis (SL)', '−03:00', '−03:00', ''),
('AR', '-2649-06513', 'America/Argentina/Tucuman', 'Tucuman (TM)', '−03:00', '−03:00', ''),
('AR', '-5448-06818', 'America/Argentina/Ushuaia', 'Tierra del Fuego (TF)', '−03:00', '−03:00', ''),
('AW', '+1230-06958', 'America/Aruba', '', '−04:00', '−04:00', ''),
('PY', '-2516-05740', 'America/Asuncion', '', '−04:00', '−03:00', ''),
('CA', '+484531-0913718', 'America/Atikokan', 'Eastern Standard Time - Atikokan, Ontario and Southampton I, Nunavut', '−05:00', '−05:00', ''),
('', '', 'America/Atka', '', '−10:00', '−09:00', 'Link to America/Adak'),
('BR', '-1259-03831', 'America/Bahia', 'Bahia', '−03:00', '−03:00', ''),
('MX', '+2048-10515', 'America/Bahia_Banderas', 'Mexican Central Time - Bahia de Banderas', '−06:00', '−05:00', ''),
('BB', '+1306-05937', 'America/Barbados', '', '−04:00', '−04:00', ''),
('BR', '-0127-04829', 'America/Belem', 'Amapa, E Para', '−03:00', '−03:00', ''),
('BZ', '+1730-08812', 'America/Belize', '', '−06:00', '−06:00', ''),
('CA', '+5125-05707', 'America/Blanc-Sablon', 'Atlantic Standard Time - Quebec - Lower North Shore', '−04:00', '−04:00', ''),
('BR', '+0249-06040', 'America/Boa_Vista', 'Roraima', '−04:00', '−04:00', ''),
('CO', '+0436-07405', 'America/Bogota', '', '−05:00', '−05:00', ''),
('US', '+433649-1161209', 'America/Boise', 'Mountain Time - south Idaho & east Oregon', '−07:00', '−06:00', ''),
('', '', 'America/Buenos_Aires', '', '−03:00', '−03:00', 'Link to America/Argentina/Buenos_Aires'),
('CA', '+690650-1050310', 'America/Cambridge_Bay', 'Mountain Time - west Nunavut', '−07:00', '−06:00', ''),
('BR', '-2027-05437', 'America/Campo_Grande', 'Mato Grosso do Sul', '−04:00', '−03:00', ''),
('MX', '+2105-08646', 'America/Cancun', 'Central Time - Quintana Roo', '−06:00', '−05:00', ''),
('VE', '+1030-06656', 'America/Caracas', '', '−04:30', '−04:30', ''),
('', '', 'America/Catamarca', '', '−03:00', '−03:00', 'Link to America/Argentina/Catamarca'),
('GF', '+0456-05220', 'America/Cayenne', '', '−03:00', '−03:00', ''),
('KY', '+1918-08123', 'America/Cayman', '', '−05:00', '−05:00', ''),
('US', '+415100-0873900', 'America/Chicago', 'Central Time', '−06:00', '−05:00', ''),
('MX', '+2838-10605', 'America/Chihuahua', 'Mexican Mountain Time - Chihuahua away from US border', '−07:00', '−06:00', ''),
('', '', 'America/Coral_Harbour', '', '−05:00', '−05:00', 'Link to America/Atikokan'),
('', '', 'America/Cordoba', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('CR', '+0956-08405', 'America/Costa_Rica', '', '−06:00', '−06:00', ''),
('CA', '+4906-11631', 'America/Creston', 'Mountain Standard Time - Creston, British Columbia', '−07:00', '−07:00', ''),
('BR', '-1535-05605', 'America/Cuiaba', 'Mato Grosso', '−04:00', '−03:00', ''),
('CW', '+1211-06900', 'America/Curacao', '', '−04:00', '−04:00', ''),
('GL', '+7646-01840', 'America/Danmarkshavn', 'east coast, north of Scoresbysund', '+00:00', '+00:00', ''),
('CA', '+6404-13925', 'America/Dawson', 'Pacific Time - north Yukon', '−08:00', '−07:00', ''),
('CA', '+5946-12014', 'America/Dawson_Creek', 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia', '−07:00', '−07:00', ''),
('US', '+394421-1045903', 'America/Denver', 'Mountain Time', '−07:00', '−06:00', ''),
('US', '+421953-0830245', 'America/Detroit', 'Eastern Time - Michigan - most locations', '−05:00', '−04:00', ''),
('DM', '+1518-06124', 'America/Dominica', '', '−04:00', '−04:00', ''),
('CA', '+5333-11328', 'America/Edmonton', 'Mountain Time - Alberta, east British Columbia & west Saskatchewan', '−07:00', '−06:00', ''),
('BR', '-0640-06952', 'America/Eirunepe', 'W Amazonas', '−04:00', '−04:00', ''),
('SV', '+1342-08912', 'America/El_Salvador', '', '−06:00', '−06:00', ''),
('', '', 'America/Ensenada', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('BR', '-0343-03830', 'America/Fortaleza', 'NE Brazil (MA, PI, CE, RN, PB)', '−03:00', '−03:00', ''),
('', '', 'America/Fort_Wayne', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+4612-05957', 'America/Glace_Bay', 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971', '−04:00', '−03:00', ''),
('GL', '+6411-05144', 'America/Godthab', 'most locations', '−03:00', '−02:00', ''),
('CA', '+5320-06025', 'America/Goose_Bay', 'Atlantic Time - Labrador - most locations', '−04:00', '−03:00', ''),
('TC', '+2128-07108', 'America/Grand_Turk', '', '−05:00', '−04:00', ''),
('GD', '+1203-06145', 'America/Grenada', '', '−04:00', '−04:00', ''),
('GP', '+1614-06132', 'America/Guadeloupe', '', '−04:00', '−04:00', ''),
('GT', '+1438-09031', 'America/Guatemala', '', '−06:00', '−06:00', ''),
('EC', '-0210-07950', 'America/Guayaquil', 'mainland', '−05:00', '−05:00', ''),
('GY', '+0648-05810', 'America/Guyana', '', '−04:00', '−04:00', ''),
('CA', '+4439-06336', 'America/Halifax', 'Atlantic Time - Nova Scotia (most places), PEI', '−04:00', '−03:00', ''),
('CU', '+2308-08222', 'America/Havana', '', '−05:00', '−04:00', ''),
('MX', '+2904-11058', 'America/Hermosillo', 'Mountain Standard Time - Sonora', '−07:00', '−07:00', ''),
('US', '+394606-0860929', 'America/Indiana/Indianapolis', 'Eastern Time - Indiana - most locations', '−05:00', '−04:00', ''),
('US', '+411745-0863730', 'America/Indiana/Knox', 'Central Time - Indiana - Starke County', '−06:00', '−05:00', ''),
('US', '+382232-0862041', 'America/Indiana/Marengo', 'Eastern Time - Indiana - Crawford County', '−05:00', '−04:00', ''),
('US', '+382931-0871643', 'America/Indiana/Petersburg', 'Eastern Time - Indiana - Pike County', '−05:00', '−04:00', ''),
('US', '+375711-0864541', 'America/Indiana/Tell_City', 'Central Time - Indiana - Perry County', '−06:00', '−05:00', ''),
('US', '+384452-0850402', 'America/Indiana/Vevay', 'Eastern Time - Indiana - Switzerland County', '−05:00', '−04:00', ''),
('US', '+384038-0873143', 'America/Indiana/Vincennes', 'Eastern Time - Indiana - Daviess, Dubois, Knox & Martin Counties', '−05:00', '−04:00', ''),
('US', '+410305-0863611', 'America/Indiana/Winamac', 'Eastern Time - Indiana - Pulaski County', '−05:00', '−04:00', ''),
('', '', 'America/Indianapolis', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('CA', '+682059-1334300', 'America/Inuvik', 'Mountain Time - west Northwest Territories', '−07:00', '−06:00', ''),
('CA', '+6344-06828', 'America/Iqaluit', 'Eastern Time - east Nunavut - most locations', '−05:00', '−04:00', ''),
('JM', '+1800-07648', 'America/Jamaica', '', '−05:00', '−05:00', ''),
('', '', 'America/Jujuy', '', '−03:00', '−03:00', 'Link to America/Argentina/Jujuy'),
('US', '+581807-1342511', 'America/Juneau', 'Alaska Time - Alaska panhandle', '−09:00', '−08:00', ''),
('US', '+381515-0854534', 'America/Kentucky/Louisville', 'Eastern Time - Kentucky - Louisville area', '−05:00', '−04:00', ''),
('US', '+364947-0845057', 'America/Kentucky/Monticello', 'Eastern Time - Kentucky - Wayne County', '−05:00', '−04:00', ''),
('', '', 'America/Knox_IN', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('BQ', '+120903-0681636', 'America/Kralendijk', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BO', '-1630-06809', 'America/La_Paz', '', '−04:00', '−04:00', ''),
('PE', '-1203-07703', 'America/Lima', '', '−05:00', '−05:00', ''),
('US', '+340308-1181434', 'America/Los_Angeles', 'Pacific Time', '−08:00', '−07:00', ''),
('', '', 'America/Louisville', '', '−05:00', '−04:00', 'Link to America/Kentucky/Louisville'),
('SX', '+180305-0630250', 'America/Lower_Princes', '', '−04:00', '−04:00', 'Link to America/Curacao'),
('BR', '-0940-03543', 'America/Maceio', 'Alagoas, Sergipe', '−03:00', '−03:00', ''),
('NI', '+1209-08617', 'America/Managua', '', '−06:00', '−06:00', ''),
('BR', '-0308-06001', 'America/Manaus', 'E Amazonas', '−04:00', '−04:00', ''),
('MF', '+1804-06305', 'America/Marigot', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('MQ', '+1436-06105', 'America/Martinique', '', '−04:00', '−04:00', ''),
('MX', '+2550-09730', 'America/Matamoros', 'US Central Time - Coahuila, Durango, Nuevo León, Tamaulipas near US border', '−06:00', '−05:00', ''),
('MX', '+2313-10625', 'America/Mazatlan', 'Mountain Time - S Baja, Nayarit, Sinaloa', '−07:00', '−06:00', ''),
('', '', 'America/Mendoza', '', '−03:00', '−03:00', 'Link to America/Argentina/Mendoza'),
('US', '+450628-0873651', 'America/Menominee', 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties', '−06:00', '−05:00', ''),
('MX', '+2058-08937', 'America/Merida', 'Central Time - Campeche, Yucatán', '−06:00', '−05:00', ''),
('US', '+550737-1313435', 'America/Metlakatla', 'Metlakatla Time - Annette Island', '−08:00', '−08:00', ''),
('MX', '+1924-09909', 'America/Mexico_City', 'Central Time - most locations', '−06:00', '−05:00', ''),
('PM', '+4703-05620', 'America/Miquelon', '', '−03:00', '−02:00', ''),
('CA', '+4606-06447', 'America/Moncton', 'Atlantic Time - New Brunswick', '−04:00', '−03:00', ''),
('MX', '+2540-10019', 'America/Monterrey', 'Mexican Central Time - Coahuila, Durango, Nuevo León, Tamaulipas away from US border', '−06:00', '−05:00', ''),
('UY', '-3453-05611', 'America/Montevideo', '', '−03:00', '−02:00', ''),
('CA', '+4531-07334', 'America/Montreal', 'Eastern Time - Quebec - most locations', '−05:00', '−04:00', ''),
('MS', '+1643-06213', 'America/Montserrat', '', '−04:00', '−04:00', ''),
('BS', '+2505-07721', 'America/Nassau', '', '−05:00', '−04:00', ''),
('US', '+404251-0740023', 'America/New_York', 'Eastern Time', '−05:00', '−04:00', ''),
('CA', '+4901-08816', 'America/Nipigon', 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973', '−05:00', '−04:00', ''),
('US', '+643004-1652423', 'America/Nome', 'Alaska Time - west Alaska', '−09:00', '−08:00', ''),
('BR', '-0351-03225', 'America/Noronha', 'Atlantic islands', '−02:00', '−02:00', ''),
('US', '+471551-1014640', 'America/North_Dakota/Beulah', 'Central Time - North Dakota - Mercer County', '−06:00', '−05:00', ''),
('US', '+470659-1011757', 'America/North_Dakota/Center', 'Central Time - North Dakota - Oliver County', '−06:00', '−05:00', ''),
('US', '+465042-1012439', 'America/North_Dakota/New_Salem', 'Central Time - North Dakota - Morton County (except Mandan area)', '−06:00', '−05:00', ''),
('MX', '+2934-10425', 'America/Ojinaga', 'US Mountain Time - Chihuahua near US border', '−07:00', '−06:00', ''),
('PA', '+0858-07932', 'America/Panama', '', '−05:00', '−05:00', ''),
('CA', '+6608-06544', 'America/Pangnirtung', 'Eastern Time - Pangnirtung, Nunavut', '−05:00', '−04:00', ''),
('SR', '+0550-05510', 'America/Paramaribo', '', '−03:00', '−03:00', ''),
('US', '+332654-1120424', 'America/Phoenix', 'Mountain Standard Time - Arizona', '−07:00', '−07:00', ''),
('HT', '+1832-07220', 'America/Port-au-Prince', '', '−05:00', '−04:00', ''),
('', '', 'America/Porto_Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('BR', '-0846-06354', 'America/Porto_Velho', 'Rondonia', '−04:00', '−04:00', ''),
('TT', '+1039-06131', 'America/Port_of_Spain', '', '−04:00', '−04:00', ''),
('PR', '+182806-0660622', 'America/Puerto_Rico', '', '−04:00', '−04:00', ''),
('CA', '+4843-09434', 'America/Rainy_River', 'Central Time - Rainy River & Fort Frances, Ontario', '−06:00', '−05:00', ''),
('CA', '+624900-0920459', 'America/Rankin_Inlet', 'Central Time - central Nunavut', '−06:00', '−05:00', ''),
('BR', '-0803-03454', 'America/Recife', 'Pernambuco', '−03:00', '−03:00', ''),
('CA', '+5024-10439', 'America/Regina', 'Central Standard Time - Saskatchewan - most locations', '−06:00', '−06:00', ''),
('CA', '+744144-0944945', 'America/Resolute', 'Central Standard Time - Resolute, Nunavut', '−06:00', '−05:00', ''),
('BR', '-0958-06748', 'America/Rio_Branco', 'Acre', '−04:00', '−04:00', ''),
('', '', 'America/Rosario', '', '−03:00', '−03:00', 'Link to America/Argentina/Cordoba'),
('BR', '-0226-05452', 'America/Santarem', 'W Para', '−03:00', '−03:00', ''),
('MX', '+3018-11452', 'America/Santa_Isabel', 'Mexican Pacific Time - Baja California away from US border', '−08:00', '−07:00', ''),
('CL', '-3327-07040', 'America/Santiago', 'most locations', '−04:00', '−03:00', ''),
('DO', '+1828-06954', 'America/Santo_Domingo', '', '−04:00', '−04:00', ''),
('BR', '-2332-04637', 'America/Sao_Paulo', 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)', '−03:00', '−02:00', ''),
('GL', '+7029-02158', 'America/Scoresbysund', 'Scoresbysund / Ittoqqortoormiit', '−01:00', '+00:00', ''),
('US', '+364708-1084111', 'America/Shiprock', 'Mountain Time - Navajo', '−07:00', '−06:00', 'Link to America/Denver'),
('US', '+571035-1351807', 'America/Sitka', 'Alaska Time - southeast Alaska panhandle', '−09:00', '−08:00', ''),
('BL', '+1753-06251', 'America/St_Barthelemy', '', '−04:00', '−04:00', 'Link to America/Guadeloupe'),
('CA', '+4734-05243', 'America/St_Johns', 'Newfoundland Time, including SE Labrador', '−03:30', '−02:30', ''),
('KN', '+1718-06243', 'America/St_Kitts', '', '−04:00', '−04:00', ''),
('LC', '+1401-06100', 'America/St_Lucia', '', '−04:00', '−04:00', ''),
('VI', '+1821-06456', 'America/St_Thomas', '', '−04:00', '−04:00', ''),
('VC', '+1309-06114', 'America/St_Vincent', '', '−04:00', '−04:00', ''),
('CA', '+5017-10750', 'America/Swift_Current', 'Central Standard Time - Saskatchewan - midwest', '−06:00', '−06:00', ''),
('HN', '+1406-08713', 'America/Tegucigalpa', '', '−06:00', '−06:00', ''),
('GL', '+7634-06847', 'America/Thule', 'Thule / Pituffik', '−04:00', '−03:00', ''),
('CA', '+4823-08915', 'America/Thunder_Bay', 'Eastern Time - Thunder Bay, Ontario', '−05:00', '−04:00', ''),
('MX', '+3232-11701', 'America/Tijuana', 'US Pacific Time - Baja California near US border', '−08:00', '−07:00', ''),
('CA', '+4339-07923', 'America/Toronto', 'Eastern Time - Ontario - most locations', '−05:00', '−04:00', ''),
('VG', '+1827-06437', 'America/Tortola', '', '−04:00', '−04:00', ''),
('CA', '+4916-12307', 'America/Vancouver', 'Pacific Time - west British Columbia', '−08:00', '−07:00', ''),
('', '', 'America/Virgin', '', '−04:00', '−04:00', 'Link to America/St_Thomas'),
('CA', '+6043-13503', 'America/Whitehorse', 'Pacific Time - south Yukon', '−08:00', '−07:00', ''),
('CA', '+4953-09709', 'America/Winnipeg', 'Central Time - Manitoba & west Ontario', '−06:00', '−05:00', ''),
('US', '+593249-1394338', 'America/Yakutat', 'Alaska Time - Alaska panhandle neck', '−09:00', '−08:00', ''),
('CA', '+6227-11421', 'America/Yellowknife', 'Mountain Time - central Northwest Territories', '−07:00', '−06:00', ''),
('AQ', '-6617+11031', 'Antarctica/Casey', 'Casey Station, Bailey Peninsula', '+11:00', '+08:00', ''),
('AQ', '-6835+07758', 'Antarctica/Davis', 'Davis Station, Vestfold Hills', '+05:00', '+07:00', ''),
('AQ', '-6640+14001', 'Antarctica/DumontDUrville', 'Dumont-d\'Urville Station, Terre Adelie', '+10:00', '+10:00', ''),
('AQ', '-5430+15857', 'Antarctica/Macquarie', 'Macquarie Island Station, Macquarie Island', '+11:00', '+11:00', ''),
('AQ', '-6736+06253', 'Antarctica/Mawson', 'Mawson Station, Holme Bay', '+05:00', '+05:00', ''),
('AQ', '-7750+16636', 'Antarctica/McMurdo', 'McMurdo Station, Ross Island', '+12:00', '+13:00', ''),
('AQ', '-6448-06406', 'Antarctica/Palmer', 'Palmer Station, Anvers Island', '−04:00', '−03:00', ''),
('AQ', '-6734-06808', 'Antarctica/Rothera', 'Rothera Station, Adelaide Island', '−03:00', '−03:00', ''),
('AQ', '-9000+00000', 'Antarctica/South_Pole', 'Amundsen-Scott Station, South Pole', '+12:00', '+13:00', 'Link to Antarctica/McMurdo'),
('AQ', '-690022+0393524', 'Antarctica/Syowa', 'Syowa Station, E Ongul I', '+03:00', '+03:00', ''),
('AQ', '-7824+10654', 'Antarctica/Vostok', 'Vostok Station, Lake Vostok', '+06:00', '+06:00', ''),
('SJ', '+7800+01600', 'Arctic/Longyearbyen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('YE', '+1245+04512', 'Asia/Aden', '', '+03:00', '+03:00', ''),
('KZ', '+4315+07657', 'Asia/Almaty', 'most locations', '+06:00', '+06:00', ''),
('JO', '+3157+03556', 'Asia/Amman', '', '+03:00', '+03:00', ''),
('RU', '+6445+17729', 'Asia/Anadyr', 'Moscow+08 - Bering Sea', '+12:00', '+12:00', ''),
('KZ', '+4431+05016', 'Asia/Aqtau', 'Atyrau (Atirau, Gur\'yev), Mangghystau (Mankistau)', '+05:00', '+05:00', ''),
('KZ', '+5017+05710', 'Asia/Aqtobe', 'Aqtobe (Aktobe)', '+05:00', '+05:00', ''),
('TM', '+3757+05823', 'Asia/Ashgabat', '', '+05:00', '+05:00', ''),
('', '', 'Asia/Ashkhabad', '', '+05:00', '+05:00', 'Link to Asia/Ashgabat'),
('IQ', '+3321+04425', 'Asia/Baghdad', '', '+03:00', '+03:00', ''),
('BH', '+2623+05035', 'Asia/Bahrain', '', '+03:00', '+03:00', ''),
('AZ', '+4023+04951', 'Asia/Baku', '', '+04:00', '+05:00', ''),
('TH', '+1345+10031', 'Asia/Bangkok', '', '+07:00', '+07:00', ''),
('LB', '+3353+03530', 'Asia/Beirut', '', '+02:00', '+03:00', ''),
('KG', '+4254+07436', 'Asia/Bishkek', '', '+06:00', '+06:00', ''),
('BN', '+0456+11455', 'Asia/Brunei', '', '+08:00', '+08:00', ''),
('', '', 'Asia/Calcutta', '', '+05:30', '+05:30', 'Link to Asia/Kolkata'),
('MN', '+4804+11430', 'Asia/Choibalsan', 'Dornod, Sukhbaatar', '+08:00', '+08:00', ''),
('CN', '+2934+10635', 'Asia/Chongqing', 'central China - Sichuan, Yunnan, Guangxi, Shaanxi, Guizhou, etc.', '+08:00', '+08:00', 'Covering historic Kansu-Szechuan time zone.'),
('', '', 'Asia/Chungking', '', '+08:00', '+08:00', 'Link to Asia/Chongqing'),
('LK', '+0656+07951', 'Asia/Colombo', '', '+05:30', '+05:30', ''),
('', '', 'Asia/Dacca', '', '+06:00', '+06:00', 'Link to Asia/Dhaka'),
('SY', '+3330+03618', 'Asia/Damascus', '', '+02:00', '+03:00', ''),
('BD', '+2343+09025', 'Asia/Dhaka', '', '+06:00', '+06:00', ''),
('TL', '-0833+12535', 'Asia/Dili', '', '+09:00', '+09:00', ''),
('AE', '+2518+05518', 'Asia/Dubai', '', '+04:00', '+04:00', ''),
('TJ', '+3835+06848', 'Asia/Dushanbe', '', '+05:00', '+05:00', ''),
('PS', '+3130+03428', 'Asia/Gaza', 'Gaza Strip', '+02:00', '+03:00', ''),
('CN', '+4545+12641', 'Asia/Harbin', 'Heilongjiang (except Mohe), Jilin', '+08:00', '+08:00', 'Covering historic Changpai time zone.'),
('PS', '+313200+0350542', 'Asia/Hebron', 'West Bank', '+02:00', '+03:00', ''),
('HK', '+2217+11409', 'Asia/Hong_Kong', '', '+08:00', '+08:00', ''),
('MN', '+4801+09139', 'Asia/Hovd', 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan', '+07:00', '+07:00', ''),
('VN', '+1045+10640', 'Asia/Ho_Chi_Minh', '', '+07:00', '+07:00', ''),
('RU', '+5216+10420', 'Asia/Irkutsk', 'Moscow+05 - Lake Baikal', '+09:00', '+09:00', ''),
('', '', 'Asia/Istanbul', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('ID', '-0610+10648', 'Asia/Jakarta', 'Java & Sumatra', '+07:00', '+07:00', ''),
('ID', '-0232+14042', 'Asia/Jayapura', 'west New Guinea (Irian Jaya) & Malukus (Moluccas)', '+09:00', '+09:00', ''),
('IL', '+3146+03514', 'Asia/Jerusalem', '', '+02:00', '+03:00', ''),
('AF', '+3431+06912', 'Asia/Kabul', '', '+04:30', '+04:30', ''),
('RU', '+5301+15839', 'Asia/Kamchatka', 'Moscow+08 - Kamchatka', '+12:00', '+12:00', ''),
('PK', '+2452+06703', 'Asia/Karachi', '', '+05:00', '+05:00', ''),
('CN', '+3929+07559', 'Asia/Kashgar', 'west Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Kunlun time zone.'),
('NP', '+2743+08519', 'Asia/Kathmandu', '', '+05:45', '+05:45', ''),
('', '', 'Asia/Katmandu', '', '+05:45', '+05:45', 'Link to Asia/Kathmandu'),
('IN', '+2232+08822', 'Asia/Kolkata', '', '+05:30', '+05:30', 'Note: Different zones in history, see Time in India.'),
('RU', '+5601+09250', 'Asia/Krasnoyarsk', 'Moscow+04 - Yenisei River', '+08:00', '+08:00', ''),
('MY', '+0310+10142', 'Asia/Kuala_Lumpur', 'peninsular Malaysia', '+08:00', '+08:00', ''),
('MY', '+0133+11020', 'Asia/Kuching', 'Sabah & Sarawak', '+08:00', '+08:00', ''),
('KW', '+2920+04759', 'Asia/Kuwait', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Macao', '', '+08:00', '+08:00', 'Link to Asia/Macau'),
('MO', '+2214+11335', 'Asia/Macau', '', '+08:00', '+08:00', ''),
('RU', '+5934+15048', 'Asia/Magadan', 'Moscow+08 - Magadan', '+12:00', '+12:00', ''),
('ID', '-0507+11924', 'Asia/Makassar', 'east & south Borneo, Sulawesi (Celebes), Bali, Nusa Tenggara, west Timor', '+08:00', '+08:00', ''),
('PH', '+1435+12100', 'Asia/Manila', '', '+08:00', '+08:00', ''),
('OM', '+2336+05835', 'Asia/Muscat', '', '+04:00', '+04:00', ''),
('CY', '+3510+03322', 'Asia/Nicosia', '', '+02:00', '+03:00', ''),
('RU', '+5345+08707', 'Asia/Novokuznetsk', 'Moscow+03 - Novokuznetsk', '+07:00', '+07:00', ''),
('RU', '+5502+08255', 'Asia/Novosibirsk', 'Moscow+03 - Novosibirsk', '+07:00', '+07:00', ''),
('RU', '+5500+07324', 'Asia/Omsk', 'Moscow+03 - west Siberia', '+07:00', '+07:00', ''),
('KZ', '+5113+05121', 'Asia/Oral', 'West Kazakhstan', '+05:00', '+05:00', ''),
('KH', '+1133+10455', 'Asia/Phnom_Penh', '', '+07:00', '+07:00', ''),
('ID', '-0002+10920', 'Asia/Pontianak', 'west & central Borneo', '+07:00', '+07:00', ''),
('KP', '+3901+12545', 'Asia/Pyongyang', '', '+09:00', '+09:00', ''),
('QA', '+2517+05132', 'Asia/Qatar', '', '+03:00', '+03:00', ''),
('KZ', '+4448+06528', 'Asia/Qyzylorda', 'Qyzylorda (Kyzylorda, Kzyl-Orda)', '+06:00', '+06:00', ''),
('MM', '+1647+09610', 'Asia/Rangoon', '', '+06:30', '+06:30', ''),
('SA', '+2438+04643', 'Asia/Riyadh', '', '+03:00', '+03:00', ''),
('', '', 'Asia/Saigon', '', '+07:00', '+07:00', 'Link to Asia/Ho_Chi_Minh'),
('RU', '+4658+14242', 'Asia/Sakhalin', 'Moscow+07 - Sakhalin Island', '+11:00', '+11:00', ''),
('UZ', '+3940+06648', 'Asia/Samarkand', 'west Uzbekistan', '+05:00', '+05:00', ''),
('KR', '+3733+12658', 'Asia/Seoul', '', '+09:00', '+09:00', ''),
('CN', '+3114+12128', 'Asia/Shanghai', 'east China - Beijing, Guangdong, Shanghai, etc.', '+08:00', '+08:00', 'Covering historic Chungyuan time zone.'),
('SG', '+0117+10351', 'Asia/Singapore', '', '+08:00', '+08:00', ''),
('TW', '+2503+12130', 'Asia/Taipei', '', '+08:00', '+08:00', ''),
('UZ', '+4120+06918', 'Asia/Tashkent', 'east Uzbekistan', '+05:00', '+05:00', ''),
('GE', '+4143+04449', 'Asia/Tbilisi', '', '+04:00', '+04:00', ''),
('IR', '+3540+05126', 'Asia/Tehran', '', '+03:30', '+04:30', ''),
('', '', 'Asia/Tel_Aviv', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Asia/Thimbu', '', '+06:00', '+06:00', 'Link to Asia/Thimphu'),
('BT', '+2728+08939', 'Asia/Thimphu', '', '+06:00', '+06:00', ''),
('JP', '+353916+1394441', 'Asia/Tokyo', '', '+09:00', '+09:00', ''),
('', '', 'Asia/Ujung_Pandang', '', '+08:00', '+08:00', 'Link to Asia/Makassar'),
('MN', '+4755+10653', 'Asia/Ulaanbaatar', 'most locations', '+08:00', '+08:00', ''),
('', '', 'Asia/Ulan_Bator', '', '+08:00', '+08:00', 'Link to Asia/Ulaanbaatar'),
('CN', '+4348+08735', 'Asia/Urumqi', 'most of Tibet & Xinjiang', '+08:00', '+08:00', 'Covering historic Sinkiang-Tibet time zone.'),
('LA', '+1758+10236', 'Asia/Vientiane', '', '+07:00', '+07:00', ''),
('RU', '+4310+13156', 'Asia/Vladivostok', 'Moscow+07 - Amur River', '+11:00', '+11:00', ''),
('RU', '+6200+12940', 'Asia/Yakutsk', 'Moscow+06 - Lena River', '+10:00', '+10:00', ''),
('RU', '+5651+06036', 'Asia/Yekaterinburg', 'Moscow+02 - Urals', '+06:00', '+06:00', ''),
('AM', '+4011+04430', 'Asia/Yerevan', '', '+04:00', '+04:00', ''),
('PT', '+3744-02540', 'Atlantic/Azores', 'Azores', '−01:00', '+00:00', ''),
('BM', '+3217-06446', 'Atlantic/Bermuda', '', '−04:00', '−03:00', ''),
('ES', '+2806-01524', 'Atlantic/Canary', 'Canary Islands', '+00:00', '+01:00', ''),
('CV', '+1455-02331', 'Atlantic/Cape_Verde', '', '−01:00', '−01:00', ''),
('', '', 'Atlantic/Faeroe', '', '+00:00', '+01:00', 'Link to Atlantic/Faroe'),
('FO', '+6201-00646', 'Atlantic/Faroe', '', '+00:00', '+01:00', ''),
('', '', 'Atlantic/Jan_Mayen', '', '+01:00', '+02:00', 'Link to Europe/Oslo'),
('PT', '+3238-01654', 'Atlantic/Madeira', 'Madeira Islands', '+00:00', '+01:00', ''),
('IS', '+6409-02151', 'Atlantic/Reykjavik', '', '+00:00', '+00:00', ''),
('GS', '-5416-03632', 'Atlantic/South_Georgia', '', '−02:00', '−02:00', ''),
('FK', '-5142-05751', 'Atlantic/Stanley', '', '−03:00', '−03:00', ''),
('SH', '-1555-00542', 'Atlantic/St_Helena', '', '+00:00', '+00:00', ''),
('', '', 'Australia/ACT', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3455+13835', 'Australia/Adelaide', 'South Australia', '+09:30', '+10:30', ''),
('AU', '-2728+15302', 'Australia/Brisbane', 'Queensland - most locations', '+10:00', '+10:00', ''),
('AU', '-3157+14127', 'Australia/Broken_Hill', 'New South Wales - Yancowinna', '+09:30', '+10:30', ''),
('', '', 'Australia/Canberra', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3956+14352', 'Australia/Currie', 'Tasmania - King Island', '+10:00', '+11:00', ''),
('AU', '-1228+13050', 'Australia/Darwin', 'Northern Territory', '+09:30', '+09:30', ''),
('AU', '-3143+12852', 'Australia/Eucla', 'Western Australia - Eucla area', '+08:45', '+08:45', ''),
('AU', '-4253+14719', 'Australia/Hobart', 'Tasmania - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/LHI', '', '+10:30', '+11:00', 'Link to Australia/Lord_Howe'),
('AU', '-2016+14900', 'Australia/Lindeman', 'Queensland - Holiday Islands', '+10:00', '+10:00', ''),
('AU', '-3133+15905', 'Australia/Lord_Howe', 'Lord Howe Island', '+10:30', '+11:00', ''),
('AU', '-3749+14458', 'Australia/Melbourne', 'Victoria', '+10:00', '+11:00', ''),
('', '', 'Australia/North', '', '+09:30', '+09:30', 'Link to Australia/Darwin'),
('', '', 'Australia/NSW', '', '+10:00', '+11:00', 'Link to Australia/Sydney'),
('AU', '-3157+11551', 'Australia/Perth', 'Western Australia - most locations', '+08:00', '+08:00', ''),
('', '', 'Australia/Queensland', '', '+10:00', '+10:00', 'Link to Australia/Brisbane'),
('', '', 'Australia/South', '', '+09:30', '+10:30', 'Link to Australia/Adelaide'),
('AU', '-3352+15113', 'Australia/Sydney', 'New South Wales - most locations', '+10:00', '+11:00', ''),
('', '', 'Australia/Tasmania', '', '+10:00', '+11:00', 'Link to Australia/Hobart'),
('', '', 'Australia/Victoria', '', '+10:00', '+11:00', 'Link to Australia/Melbourne'),
('', '', 'Australia/West', '', '+08:00', '+08:00', 'Link to Australia/Perth'),
('', '', 'Australia/Yancowinna', '', '+09:30', '+10:30', 'Link to Australia/Broken_Hill'),
('', '', 'Brazil/Acre', '', '−04:00', '−04:00', 'Link to America/Rio_Branco'),
('', '', 'Brazil/DeNoronha', '', '−02:00', '−02:00', 'Link to America/Noronha'),
('', '', 'Brazil/East', '', '−03:00', '−02:00', 'Link to America/Sao_Paulo'),
('', '', 'Brazil/West', '', '−04:00', '−04:00', 'Link to America/Manaus'),
('', '', 'Canada/Atlantic', '', '−04:00', '−03:00', 'Link to America/Halifax'),
('', '', 'Canada/Central', '', '−06:00', '−05:00', 'Link to America/Winnipeg'),
('', '', 'Canada/East-Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Eastern', '', '−05:00', '−04:00', 'Link to America/Toronto'),
('', '', 'Canada/Mountain', '', '−07:00', '−06:00', 'Link to America/Edmonton'),
('', '', 'Canada/Newfoundland', '', '−03:30', '−02:30', 'Link to America/St_Johns'),
('', '', 'Canada/Pacific', '', '−08:00', '−07:00', 'Link to America/Vancouver'),
('', '', 'Canada/Saskatchewan', '', '−06:00', '−06:00', 'Link to America/Regina'),
('', '', 'Canada/Yukon', '', '−08:00', '−07:00', 'Link to America/Whitehorse'),
('', '', 'CET', '', '+01:00', '+02:00', ''),
('', '', 'Chile/Continental', '', '−04:00', '−03:00', 'Link to America/Santiago'),
('', '', 'Chile/EasterIsland', '', '−06:00', '−05:00', 'Link to Pacific/Easter'),
('', '', 'CST6CDT', '', '−06:00', '−05:00', ''),
('', '', 'Cuba', '', '−05:00', '−04:00', 'Link to America/Havana'),
('', '', 'EET', '', '+02:00', '+03:00', ''),
('', '', 'Egypt', '', '+02:00', '+02:00', 'Link to Africa/Cairo'),
('', '', 'Eire', '', '+00:00', '+01:00', 'Link to Europe/Dublin'),
('', '', 'EST', '', '−05:00', '−05:00', ''),
('', '', 'EST5EDT', '', '−05:00', '−04:00', ''),
('', '', 'Etc./GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./UTC', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Etc./Zulu', '', '+00:00', '+00:00', 'Link to UTC'),
('NL', '+5222+00454', 'Europe/Amsterdam', '', '+01:00', '+02:00', ''),
('AD', '+4230+00131', 'Europe/Andorra', '', '+01:00', '+02:00', ''),
('GR', '+3758+02343', 'Europe/Athens', '', '+02:00', '+03:00', ''),
('', '', 'Europe/Belfast', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RS', '+4450+02030', 'Europe/Belgrade', '', '+01:00', '+02:00', ''),
('DE', '+5230+01322', 'Europe/Berlin', '', '+01:00', '+02:00', 'In 1945, the Trizone did not follow Berlin\'s switch to DST, see Time in Germany'),
('SK', '+4809+01707', 'Europe/Bratislava', '', '+01:00', '+02:00', 'Link to Europe/Prague'),
('BE', '+5050+00420', 'Europe/Brussels', '', '+01:00', '+02:00', ''),
('RO', '+4426+02606', 'Europe/Bucharest', '', '+02:00', '+03:00', ''),
('HU', '+4730+01905', 'Europe/Budapest', '', '+01:00', '+02:00', ''),
('MD', '+4700+02850', 'Europe/Chisinau', '', '+02:00', '+03:00', ''),
('DK', '+5540+01235', 'Europe/Copenhagen', '', '+01:00', '+02:00', ''),
('IE', '+5320-00615', 'Europe/Dublin', '', '+00:00', '+01:00', ''),
('GI', '+3608-00521', 'Europe/Gibraltar', '', '+01:00', '+02:00', ''),
('GG', '+4927-00232', 'Europe/Guernsey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('FI', '+6010+02458', 'Europe/Helsinki', '', '+02:00', '+03:00', ''),
('IM', '+5409-00428', 'Europe/Isle_of_Man', '', '+00:00', '+01:00', 'Link to Europe/London'),
('TR', '+4101+02858', 'Europe/Istanbul', '', '+02:00', '+03:00', ''),
('JE', '+4912-00207', 'Europe/Jersey', '', '+00:00', '+01:00', 'Link to Europe/London'),
('RU', '+5443+02030', 'Europe/Kaliningrad', 'Moscow-01 - Kaliningrad', '+03:00', '+03:00', ''),
('UA', '+5026+03031', 'Europe/Kiev', 'most locations', '+02:00', '+03:00', ''),
('PT', '+3843-00908', 'Europe/Lisbon', 'mainland', '+00:00', '+01:00', ''),
('SI', '+4603+01431', 'Europe/Ljubljana', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('GB', '+513030-0000731', 'Europe/London', '', '+00:00', '+01:00', ''),
('LU', '+4936+00609', 'Europe/Luxembourg', '', '+01:00', '+02:00', ''),
('ES', '+4024-00341', 'Europe/Madrid', 'mainland', '+01:00', '+02:00', ''),
('MT', '+3554+01431', 'Europe/Malta', '', '+01:00', '+02:00', ''),
('AX', '+6006+01957', 'Europe/Mariehamn', '', '+02:00', '+03:00', 'Link to Europe/Helsinki'),
('BY', '+5354+02734', 'Europe/Minsk', '', '+03:00', '+03:00', ''),
('MC', '+4342+00723', 'Europe/Monaco', '', '+01:00', '+02:00', ''),
('RU', '+5545+03735', 'Europe/Moscow', 'Moscow+00 - west Russia', '+04:00', '+04:00', ''),
('', '', 'Europe/Nicosia', '', '+02:00', '+03:00', 'Link to Asia/Nicosia'),
('NO', '+5955+01045', 'Europe/Oslo', '', '+01:00', '+02:00', ''),
('FR', '+4852+00220', 'Europe/Paris', '', '+01:00', '+02:00', ''),
('ME', '+4226+01916', 'Europe/Podgorica', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('CZ', '+5005+01426', 'Europe/Prague', '', '+01:00', '+02:00', ''),
('LV', '+5657+02406', 'Europe/Riga', '', '+02:00', '+03:00', ''),
('IT', '+4154+01229', 'Europe/Rome', '', '+01:00', '+02:00', ''),
('RU', '+5312+05009', 'Europe/Samara', 'Moscow+00 - Samara, Udmurtia', '+04:00', '+04:00', ''),
('SM', '+4355+01228', 'Europe/San_Marino', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('BA', '+4352+01825', 'Europe/Sarajevo', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4457+03406', 'Europe/Simferopol', 'central Crimea', '+02:00', '+03:00', ''),
('MK', '+4159+02126', 'Europe/Skopje', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('BG', '+4241+02319', 'Europe/Sofia', '', '+02:00', '+03:00', ''),
('SE', '+5920+01803', 'Europe/Stockholm', '', '+01:00', '+02:00', ''),
('EE', '+5925+02445', 'Europe/Tallinn', '', '+02:00', '+03:00', ''),
('AL', '+4120+01950', 'Europe/Tirane', '', '+01:00', '+02:00', ''),
('', '', 'Europe/Tiraspol', '', '+02:00', '+03:00', 'Link to Europe/Chisinau'),
('UA', '+4837+02218', 'Europe/Uzhgorod', 'Ruthenia', '+02:00', '+03:00', ''),
('LI', '+4709+00931', 'Europe/Vaduz', '', '+01:00', '+02:00', ''),
('VA', '+415408+0122711', 'Europe/Vatican', '', '+01:00', '+02:00', 'Link to Europe/Rome'),
('AT', '+4813+01620', 'Europe/Vienna', '', '+01:00', '+02:00', ''),
('LT', '+5441+02519', 'Europe/Vilnius', '', '+02:00', '+03:00', ''),
('RU', '+4844+04425', 'Europe/Volgograd', 'Moscow+00 - Caspian Sea', '+04:00', '+04:00', ''),
('PL', '+5215+02100', 'Europe/Warsaw', '', '+01:00', '+02:00', ''),
('HR', '+4548+01558', 'Europe/Zagreb', '', '+01:00', '+02:00', 'Link to Europe/Belgrade'),
('UA', '+4750+03510', 'Europe/Zaporozhye', 'Zaporozh\'ye, E Lugansk / Zaporizhia, E Luhansk', '+02:00', '+03:00', ''),
('CH', '+4723+00832', 'Europe/Zurich', '', '+01:00', '+02:00', ''),
('', '', 'GB', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GB-Eire', '', '+00:00', '+01:00', 'Link to Europe/London'),
('', '', 'GMT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT+0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT-0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'GMT0', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Greenwich', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Hong Kong', '', '+08:00', '+08:00', 'Link to Asia/Hong_Kong'),
('', '', 'HST', '', '−10:00', '−10:00', ''),
('', '', 'Iceland', '', '+00:00', '+00:00', 'Link to Atlantic/Reykjavik'),
('MG', '-1855+04731', 'Indian/Antananarivo', '', '+03:00', '+03:00', ''),
('IO', '-0720+07225', 'Indian/Chagos', '', '+06:00', '+06:00', ''),
('CX', '-1025+10543', 'Indian/Christmas', '', '+07:00', '+07:00', ''),
('CC', '-1210+09655', 'Indian/Cocos', '', '+06:30', '+06:30', ''),
('KM', '-1141+04316', 'Indian/Comoro', '', '+03:00', '+03:00', ''),
('TF', '-492110+0701303', 'Indian/Kerguelen', '', '+05:00', '+05:00', ''),
('SC', '-0440+05528', 'Indian/Mahe', '', '+04:00', '+04:00', ''),
('MV', '+0410+07330', 'Indian/Maldives', '', '+05:00', '+05:00', ''),
('MU', '-2010+05730', 'Indian/Mauritius', '', '+04:00', '+04:00', ''),
('YT', '-1247+04514', 'Indian/Mayotte', '', '+03:00', '+03:00', ''),
('RE', '-2052+05528', 'Indian/Reunion', '', '+04:00', '+04:00', ''),
('', '', 'Iran', '', '+03:30', '+04:30', 'Link to Asia/Tehran'),
('', '', 'Israel', '', '+02:00', '+03:00', 'Link to Asia/Jerusalem'),
('', '', 'Jamaica', '', '−05:00', '−05:00', 'Link to America/Jamaica'),
('', '', 'Japan', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'JST-9', '', '+09:00', '+09:00', 'Link to Asia/Tokyo'),
('', '', 'Kwajalein', '', '+12:00', '+12:00', 'Link to Pacific/Kwajalein'),
('', '', 'Libya', '', '+02:00', '+02:00', 'Link to Africa/Tripoli'),
('', '', 'MET', '', '+01:00', '+02:00', ''),
('', '', 'Mexico/BajaNorte', '', '−08:00', '−07:00', 'Link to America/Tijuana'),
('', '', 'Mexico/BajaSur', '', '−07:00', '−06:00', 'Link to America/Mazatlan'),
('', '', 'Mexico/General', '', '−06:00', '−05:00', 'Link to America/Mexico_City'),
('', '', 'MST', '', '−07:00', '−07:00', ''),
('', '', 'MST7MDT', '', '−07:00', '−06:00', ''),
('', '', 'Navajo', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'NZ', '', '+12:00', '+13:00', 'Link to Pacific/Auckland'),
('', '', 'NZ-CHAT', '', '+12:45', '+13:45', 'Link to Pacific/Chatham'),
('WS', '-1350-17144', 'Pacific/Apia', '', '+13:00', '+14:00', ''),
('NZ', '-3652+17446', 'Pacific/Auckland', 'most locations', '+12:00', '+13:00', ''),
('NZ', '-4357-17633', 'Pacific/Chatham', 'Chatham Islands', '+12:45', '+13:45', ''),
('FM', '+0725+15147', 'Pacific/Chuuk', 'Chuuk (Truk) and Yap', '+10:00', '+10:00', ''),
('CL', '-2709-10926', 'Pacific/Easter', 'Easter Island & Sala y Gomez', '−06:00', '−05:00', ''),
('VU', '-1740+16825', 'Pacific/Efate', '', '+11:00', '+11:00', ''),
('KI', '-0308-17105', 'Pacific/Enderbury', 'Phoenix Islands', '+13:00', '+13:00', ''),
('TK', '-0922-17114', 'Pacific/Fakaofo', '', '+13:00', '+13:00', ''),
('FJ', '-1808+17825', 'Pacific/Fiji', '', '+12:00', '+13:00', ''),
('TV', '-0831+17913', 'Pacific/Funafuti', '', '+12:00', '+12:00', ''),
('EC', '-0054-08936', 'Pacific/Galapagos', 'Galapagos Islands', '−06:00', '−06:00', ''),
('PF', '-2308-13457', 'Pacific/Gambier', 'Gambier Islands', '−09:00', '−09:00', ''),
('SB', '-0932+16012', 'Pacific/Guadalcanal', '', '+11:00', '+11:00', ''),
('GU', '+1328+14445', 'Pacific/Guam', '', '+10:00', '+10:00', ''),
('US', '+211825-1575130', 'Pacific/Honolulu', 'Hawaii', '−10:00', '−10:00', ''),
('UM', '+1645-16931', 'Pacific/Johnston', 'Johnston Atoll', '−10:00', '−10:00', ''),
('KI', '+0152-15720', 'Pacific/Kiritimati', 'Line Islands', '+14:00', '+14:00', ''),
('FM', '+0519+16259', 'Pacific/Kosrae', 'Kosrae', '+11:00', '+11:00', ''),
('MH', '+0905+16720', 'Pacific/Kwajalein', 'Kwajalein', '+12:00', '+12:00', ''),
('MH', '+0709+17112', 'Pacific/Majuro', 'most locations', '+12:00', '+12:00', ''),
('PF', '-0900-13930', 'Pacific/Marquesas', 'Marquesas Islands', '−09:30', '−09:30', ''),
('UM', '+2813-17722', 'Pacific/Midway', 'Midway Islands', '−11:00', '−11:00', ''),
('NR', '-0031+16655', 'Pacific/Nauru', '', '+12:00', '+12:00', ''),
('NU', '-1901-16955', 'Pacific/Niue', '', '−11:00', '−11:00', ''),
('NF', '-2903+16758', 'Pacific/Norfolk', '', '+11:30', '+11:30', ''),
('NC', '-2216+16627', 'Pacific/Noumea', '', '+11:00', '+11:00', ''),
('AS', '-1416-17042', 'Pacific/Pago_Pago', '', '−11:00', '−11:00', ''),
('PW', '+0720+13429', 'Pacific/Palau', '', '+09:00', '+09:00', ''),
('PN', '-2504-13005', 'Pacific/Pitcairn', '', '−08:00', '−08:00', ''),
('FM', '+0658+15813', 'Pacific/Pohnpei', 'Pohnpei (Ponape)', '+11:00', '+11:00', ''),
('', '', 'Pacific/Ponape', '', '+11:00', '+11:00', 'Link to Pacific/Pohnpei'),
('PG', '-0930+14710', 'Pacific/Port_Moresby', '', '+10:00', '+10:00', ''),
('CK', '-2114-15946', 'Pacific/Rarotonga', '', '−10:00', '−10:00', ''),
('MP', '+1512+14545', 'Pacific/Saipan', '', '+10:00', '+10:00', ''),
('', '', 'Pacific/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('PF', '-1732-14934', 'Pacific/Tahiti', 'Society Islands', '−10:00', '−10:00', ''),
('KI', '+0125+17300', 'Pacific/Tarawa', 'Gilbert Islands', '+12:00', '+12:00', ''),
('TO', '-2110-17510', 'Pacific/Tongatapu', '', '+13:00', '+13:00', ''),
('', '', 'Pacific/Truk', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('UM', '+1917+16637', 'Pacific/Wake', 'Wake Island', '+12:00', '+12:00', ''),
('WF', '-1318-17610', 'Pacific/Wallis', '', '+12:00', '+12:00', ''),
('', '', 'Pacific/Yap', '', '+10:00', '+10:00', 'Link to Pacific/Chuuk'),
('', '', 'Poland', '', '+01:00', '+02:00', 'Link to Europe/Warsaw'),
('', '', 'Portugal', '', '+00:00', '+01:00', 'Link to Europe/Lisbon'),
('', '', 'PRC', '', '+08:00', '+08:00', 'Link to Asia/Shanghai'),
('', '', 'PST8PDT', '', '−08:00', '−07:00', ''),
('', '', 'ROC', '', '+08:00', '+08:00', 'Link to Asia/Taipei'),
('', '', 'ROK', '', '+09:00', '+09:00', 'Link to Asia/Seoul'),
('', '', 'Singapore', '', '+08:00', '+08:00', 'Link to Asia/Singapore'),
('', '', 'Turkey', '', '+02:00', '+03:00', 'Link to Europe/Istanbul'),
('', '', 'UCT', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'Universal', '', '+00:00', '+00:00', 'Link to UTC'),
('', '', 'US/Alaska', '', '−09:00', '−08:00', 'Link to America/Anchorage'),
('', '', 'US/Aleutian', '', '−10:00', '−09:00', 'Link to America/Adak'),
('', '', 'US/Arizona', '', '−07:00', '−07:00', 'Link to America/Phoenix'),
('', '', 'US/Central', '', '−06:00', '−05:00', 'Link to America/Chicago'),
('', '', 'US/East-Indiana', '', '−05:00', '−04:00', 'Link to America/Indiana/Indianapolis'),
('', '', 'US/Eastern', '', '−05:00', '−04:00', 'Link to America/New_York'),
('', '', 'US/Hawaii', '', '−10:00', '−10:00', 'Link to Pacific/Honolulu'),
('', '', 'US/Indiana-Starke', '', '−06:00', '−05:00', 'Link to America/Indiana/Knox'),
('', '', 'US/Michigan', '', '−05:00', '−04:00', 'Link to America/Detroit'),
('', '', 'US/Mountain', '', '−07:00', '−06:00', 'Link to America/Denver'),
('', '', 'US/Pacific', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Pacific-New', '', '−08:00', '−07:00', 'Link to America/Los_Angeles'),
('', '', 'US/Samoa', '', '−11:00', '−11:00', 'Link to Pacific/Pago_Pago'),
('', '', 'UTC', '', '+00:00', '+00:00', ''),
('', '', 'W-SU', '', '+04:00', '+04:00', 'Link to Europe/Moscow'),
('', '', 'WET', '', '+00:00', '+01:00', ''),
('', '', 'Zulu', '', '+00:00', '+00:00', 'Link to UTC');

-- --------------------------------------------------------

--
-- Table structure for table `cr_card_images`
--

CREATE TABLE `cr_card_images` (
  `card_image_id` int(11) NOT NULL,
  `image_name` varchar(20) DEFAULT NULL,
  `alt_text` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_card_images`
--

INSERT INTO `cr_card_images` (`card_image_id`, `image_name`, `alt_text`, `status`) VALUES
(2, 'card_226.png', 'hipecard', 'Active'),
(3, 'card_879.png', 'visa', 'Active'),
(4, 'card_941.png', 'Alelo', 'Active'),
(11, 'card_957.png', 'Rupay', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_cities`
--

CREATE TABLE `cr_cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(512) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_cities`
--

INSERT INTO `cr_cities` (`city_id`, `city_name`, `status`) VALUES
(5, 'Delhi', 'Active'),
(6, 'Gurgaon', 'Active'),
(7, 'Noida', 'Active'),
(9, 'Chennai', 'Active'),
(10, 'Bangalore', 'Active'),
(11, 'Shimla', 'Active'),
(12, 'Jaipur', 'Active'),
(13, 'Warangal', 'Active'),
(14, 'Karimnagar', 'Active'),
(15, 'Nizamabad', 'Active'),
(16, 'Nalgonda', 'Active'),
(17, 'Khammam', 'Active'),
(18, 'Adilabad', 'Active'),
(19, 'Mahboobnagar', 'Active'),
(20, 'Medak', 'Active'),
(21, 'Rangareddy', 'Active'),
(22, 'Thirupathi', 'Active'),
(23, 'Vijayawada', 'Active'),
(24, 'Visakhapatnam', 'Active'),
(25, 'Guntur', 'Active'),
(26, 'Nellore', 'Active'),
(27, 'Rajahmundry', 'Active'),
(28, 'Kurnool', 'Active'),
(29, 'Kakinada', 'Active'),
(30, 'Kadapa', 'Inactive'),
(31, 'Anantapur', 'Active'),
(32, 'Eluru', 'Active'),
(33, 'Vizianagara,', 'Active'),
(34, 'Adoni', 'Active'),
(35, 'Ongole', 'Active'),
(36, 'Nandyal', 'Active'),
(37, 'Coimbatore', 'Active'),
(38, 'Madurai', 'Active'),
(39, 'Thiruchirapalli', 'Active'),
(40, 'Tiruppur', 'Active'),
(41, 'Salem', 'Active'),
(42, 'Erode', 'Active'),
(43, 'Tirunelveli', 'Active'),
(44, 'Vellore', 'Active'),
(45, 'Thoothukudi', 'Active'),
(46, 'Thanjavur', 'Active'),
(47, 'Didigul', 'Active'),
(48, 'Kochi', 'Active'),
(49, 'Kozhikode', 'Active'),
(50, 'Thrissur', 'Active'),
(51, 'Malappuram', 'Active'),
(52, 'Thiruvananthapuram', 'Active'),
(53, 'Kannur', 'Active'),
(54, 'Kollam', 'Active'),
(55, 'Cherthala', 'Active'),
(56, 'Kayamkulam', 'Active'),
(57, 'Kottayam', 'Active'),
(58, 'Palakkad', 'Active'),
(59, 'Alappuzha', 'Active'),
(60, 'Ottappalem', 'Active'),
(61, 'Kanhagod', 'Active'),
(62, 'Changanasserry', 'Active'),
(63, 'Chalakkudy', 'Active'),
(64, 'Kothamangalam', 'Active'),
(65, 'Mumbai', 'Active'),
(66, 'Pune', 'Active'),
(67, 'Pimpri Chinchwad', 'Active'),
(68, 'Kalyan-Dombivali', 'Active'),
(69, 'Vasai-Virar', 'Active'),
(70, 'Solapur', 'Active'),
(71, 'Biwandi', 'Active'),
(72, 'Nanded', 'Active'),
(73, 'Kolhapur', 'Active'),
(74, 'Sangli', 'Active'),
(75, 'Jalgaon', 'Active'),
(76, 'Akola', 'Active'),
(77, 'Latur', 'Active'),
(78, 'Dhule', 'Active'),
(79, 'Ahmednagar', 'Active'),
(80, 'Chandrapur', 'Active'),
(81, 'Parbhani', 'Active'),
(82, 'Ujjain', 'Active'),
(83, 'Dewas', 'Active'),
(84, 'Satna', 'Active'),
(85, 'Ratlam', 'Active'),
(86, 'Rewa', 'Active'),
(87, 'Murwara', 'Active'),
(88, 'Singrauli', 'Active'),
(89, 'Burhanpur', 'Active'),
(90, 'Khandwa', 'Active'),
(91, 'Morena', 'Active'),
(92, 'Bhind', 'Active'),
(93, 'Vidisha', 'Active'),
(94, 'Mandsaur', 'Active'),
(95, 'Pithampur', 'Active'),
(96, 'Hoshangabad', 'Active'),
(97, 'Betul', 'Active'),
(98, 'Seoni', 'Active'),
(99, 'Datia', 'Active'),
(100, 'Nagda', 'Active'),
(101, 'Bhubaneshwar', 'Active'),
(102, 'Cuttack', 'Active'),
(103, 'Bramhapur', 'Active'),
(104, 'Puri', 'Active'),
(105, 'Guwahati', 'Active'),
(106, 'Silchar', 'Active'),
(107, 'Dibrugarh', 'Active'),
(108, 'Jorhat', 'Active'),
(109, 'Nagoan', 'Active'),
(110, 'Tinsukia', 'Active'),
(111, 'Bongaigaon', 'Active'),
(112, 'Tezpur', 'Active'),
(113, 'Solan', 'Active'),
(114, 'Dharmsala', 'Active'),
(115, 'Baddi', 'Active'),
(116, 'Nahan', 'Active'),
(117, 'Mandi', 'Active'),
(118, 'Paonta Sahib', 'Active'),
(119, 'Sundar Nagar', 'Active'),
(120, 'Chamba', 'Active'),
(121, 'Kullu', 'Active'),
(122, 'Lucknow', 'Active'),
(123, 'Kanpur', 'Active'),
(124, 'Moradabad', 'Active'),
(125, 'Saharanpur', 'Active'),
(126, 'Muzzaffarnagar', 'Active'),
(127, 'Mathura', 'Active'),
(128, 'Maunath Bhanjan', 'Active'),
(129, 'Hapur', 'Active'),
(130, 'Etawah', 'Active'),
(131, 'Sambhal', 'Active'),
(132, 'Fatehpur', 'Active'),
(133, 'Raebareli', 'Active'),
(134, 'Bahraich', 'Active'),
(135, 'Unnao', 'Active'),
(136, 'Jaunpur', 'Active'),
(137, 'Lalitpur', 'Active'),
(138, 'Deoria', 'Active'),
(139, 'Basti', 'Active'),
(140, 'Chandausi', 'Active'),
(141, 'Akbarpur', 'Active'),
(142, 'Shikohabad', 'Active'),
(143, 'Shamli', 'Active'),
(144, 'Khair', 'Active'),
(145, 'Kasgunj', 'Active'),
(146, 'Bihar Sharif', 'Active'),
(147, 'Arrah', 'Active'),
(148, 'Begusarai', 'Active'),
(149, 'Munger', 'Active'),
(150, 'Saharsa', 'Active'),
(151, 'Sasaram', 'Active'),
(152, 'Hajipur', 'Active'),
(153, 'Dehri', 'Active'),
(154, 'Siwan', 'Active'),
(155, 'Motihari', 'Active'),
(156, 'Bagaha', 'Active'),
(157, 'Kishanganj', 'Active'),
(158, 'Jamalpur', 'Active'),
(159, 'Jehanabad', 'Active'),
(160, 'Aurangabad', 'Active'),
(161, 'Tawang', 'Active'),
(162, 'Ziro', 'Active'),
(163, 'Deomali', 'Active'),
(164, 'Pasighat', 'Active'),
(165, 'Bomdila', 'Active'),
(166, 'Malinithan', 'Active'),
(167, 'Hazaribagh', 'Active'),
(168, 'Jamshedpur', 'Active'),
(169, 'Ghatshila', 'Active'),
(170, 'Bokaro', 'Active'),
(171, 'Deoghar', 'Active'),
(172, 'Dumka', 'Active'),
(173, 'Gomoh', 'Active'),
(174, 'Ghorabandha', 'Active'),
(175, 'Gidi', 'Active'),
(176, 'Rajnandgaon', 'Active'),
(177, 'Raipur', 'Active'),
(178, 'Bhilai', 'Active'),
(179, 'Kawardha', 'Active'),
(180, 'Dongarghar', 'Active'),
(181, 'Ratanpur', 'Active'),
(182, 'Jagdalpur', 'Active'),
(183, 'Dantewada', 'Active'),
(184, 'Bilaspur City', 'Active'),
(185, 'Bade Bachali', 'Active'),
(186, 'Bag Bahara', 'Active'),
(187, 'Basna', 'Active'),
(188, 'Bodri', 'Active'),
(189, 'Dalli Rajhara', 'Active'),
(190, 'Chharchha  ', 'Active'),
(191, 'Chhuikhadan  ', 'Active'),
(192, ' Deori  ', 'Active'),
(193, 'Dongargaon', 'Active'),
(194, 'Jhagrakhand', 'Active'),
(195, 'Kirandul', 'Active'),
(196, 'Margoa', 'Active'),
(197, 'Pernem', 'Active'),
(198, 'Curti', 'Active'),
(199, ' Curchorem Cacora  ', 'Active'),
(200, 'Chicalim  ', 'Active'),
(201, 'Davorlim  ', 'Active'),
(202, 'Guirim  ', 'Active'),
(203, 'Panaji', 'Active'),
(204, 'Marmagao  ', 'Active'),
(205, 'Bishnupur', 'Active'),
(206, 'Churachandpur', 'Active'),
(207, ' Moirang  ', 'Active'),
(208, 'Moreh  ', 'Active'),
(209, ' Ukhrul ', 'Active'),
(210, 'Jiribam ', 'Active'),
(211, 'Mayang Imphal  ', 'Active'),
(212, 'Khongman  ', 'Active'),
(213, 'Naoriya Pakhanglakpa  ', 'Active'),
(214, 'Nambol  ', 'Active'),
(215, ' Ningthoukhong  ', 'Active'),
(216, 'Mamit', 'Active'),
(217, 'Khawzawl  ', 'Active'),
(218, 'Khawhai  ', 'Active'),
(219, 'Lunglei  ', 'Active'),
(220, 'Lawngtlai  ', 'Active'),
(221, 'Barrackpur', 'Active'),
(222, 'Murshidabad ', 'Active'),
(223, ' Cooch Behar ', 'Active'),
(224, ' Asansol', 'Active'),
(225, '  Dakshin Baguan', 'Active'),
(226, '  Bawali ', 'Active'),
(227, '  Jalpaiguri  ', 'Active'),
(228, ' Howrah  ', 'Active'),
(229, 'Mayapur  ', 'Active'),
(230, 'Geonkhali  ', 'Active'),
(231, ' Dakshin Jhapardaha ', 'Active'),
(232, ' Dalkhola ', 'Active'),
(233, 'Dalurband ', 'Active'),
(234, 'Chhora  ', 'Active'),
(235, ' Deuli  ', 'Active'),
(236, 'Dhulian  ', 'Active'),
(237, 'Guskara  ', 'Active'),
(238, 'Junagadh ', 'Active'),
(239, 'Botad  ', 'Active'),
(240, 'Chandkheda  ', 'Active'),
(241, 'Chandlodiya  ', 'Active'),
(242, 'Chanod  ', 'Active'),
(243, ' Dahegam  ', 'Active'),
(244, 'Dahod  ', 'Active'),
(245, 'Damnagar  ', 'Active'),
(246, 'Chhota Udaipur  ', 'Active'),
(247, 'Chikhli  ', 'Active'),
(248, 'Deesa  ', 'Active'),
(249, 'Devgadh Baria  ', 'Active'),
(250, 'Dhola  ', 'Active'),
(251, 'Dholka  ', 'Active'),
(252, 'Dhoraji  ', 'Active'),
(253, 'Dhrol  ', 'Active'),
(254, 'Freelandgunj  ', 'Active'),
(255, ' Gadhada  ', 'Active'),
(256, ' Gandevi  ', 'Active'),
(257, 'Ghatlodiya ', 'Active'),
(258, 'Badrinathpuri ', 'Active'),
(259, 'Almora', 'Active'),
(260, ' Landour', 'Active'),
(261, '  Dharchula  ', 'Active'),
(262, 'Bageshwar ', 'Active'),
(263, 'Champawat  ', 'Active'),
(264, 'Pauri Garhwal', 'Active'),
(265, 'Jyotirmath', 'Active'),
(266, ' Kedarnath  ', 'Active'),
(267, 'Tehri  ', 'Active'),
(268, 'Uttarakashi  ', 'Active'),
(269, '  Askot', 'Active'),
(270, '  Barkot  ', 'Active'),
(271, 'Bugyal  ', 'Active'),
(272, 'Dev Prayag  ', 'Active'),
(273, 'Dineshpur  ', 'Active'),
(274, 'Dogadda  ', 'Active'),
(275, 'Doiwala  ', 'Active'),
(276, 'Dwarahat  ', 'Active'),
(277, 'Gadarpur  ', 'Active'),
(278, 'Gochar  ', 'Active'),
(279, 'Kachnal Gosain  ', 'Active'),
(280, ' Laksar  ', 'Active'),
(281, 'Kela Khera  ', 'Active'),
(282, 'Manglaur  ', 'Active'),
(283, 'Khatima  ', 'Active'),
(284, 'Kashirampur', 'Active'),
(285, '  Kichha  ', 'Active'),
(286, 'Kaladungi  ', 'Active'),
(287, 'Narendra Nagar  ', 'Active'),
(288, 'Ghezing  ', 'Active'),
(289, 'Mangan  ', 'Active'),
(290, 'Namchi  ', 'Active'),
(291, 'Rabdentse', 'Active'),
(292, ' Udaipur', 'Active'),
(293, 'Jaisalmer ', 'Active'),
(294, 'Ajmer ', 'Active'),
(295, '  Chittorgarh City', 'Active'),
(296, 'Jodhpur', 'Active'),
(297, ' Bundi', 'Active'),
(298, 'Alwar ', 'Active'),
(299, 'Bikaner ', 'Active'),
(300, 'Pushkar ', 'Active'),
(301, 'Kota', 'Active'),
(302, 'Nawalgarh ', 'Active'),
(303, 'Mandawa', 'Active'),
(304, ' Osian  ', 'Active'),
(305, 'Sirohi ', 'Active'),
(306, 'Jobner  ', 'Active'),
(307, 'Lakheri  ', 'Active'),
(308, 'Laxmangarh ', 'Active'),
(309, 'Ladnu ', 'Active'),
(310, 'Lalsot  ', 'Active'),
(311, 'Kaithoon  ', 'Active'),
(312, ' Kekri  ', 'Active'),
(313, 'Malpura  ', 'Active'),
(314, 'Mandalgarh  ', 'Active'),
(315, ' Khairthal  ', 'Active'),
(316, 'Manohar Thana  ', 'Active'),
(317, 'Kumbhkot  ', 'Active'),
(318, 'Merta ', 'Active'),
(319, 'Mukandgarh  ', 'Active'),
(320, 'Nainwa  ', 'Active'),
(321, 'Kapasan  ', 'Active'),
(322, 'Kaprain  ', 'Active'),
(323, 'Kiranipura  ', 'Active'),
(324, 'Kishangarh Renwal  ', 'Active'),
(325, 'Kherli  ', 'Active'),
(326, 'Kherwara Chhaoni  ', 'Active'),
(327, 'Kuchaman  ', 'Active'),
(328, 'Kuchera  ', 'Active'),
(329, 'Sriganganagar  ', 'Active'),
(330, 'Sanganer  ', 'Active'),
(331, 'Behror  ', 'Active'),
(332, 'Jamwa Ramgarh  ', 'Active'),
(333, 'Beawar  ', 'Active'),
(334, 'Mysore ', 'Active'),
(335, 'Hampi  ', 'Active'),
(336, 'Chikballapur ', 'Active'),
(337, 'Bijapur ', 'Active'),
(338, ' Madikeri', 'Active'),
(339, 'Ullal', 'Active'),
(340, 'Balligavi  ', 'Active'),
(341, 'Yellapur  ', 'Active'),
(342, 'Somwarpet  ', 'Active'),
(343, 'Virajpet  ', 'Active'),
(344, 'Shimoga  ', 'Active'),
(345, 'Karwar  ', 'Active'),
(346, 'Udupi  ', 'Active'),
(347, 'Vijayanagara  ', 'Active'),
(348, 'Annigeri  ', 'Active'),
(349, 'Hassan  ', 'Active'),
(350, 'Hospet  ', 'Active'),
(351, 'Bidar  ', 'Active'),
(352, 'Gulbarga  ', 'Active'),
(353, 'Belur  ', 'Active'),
(354, 'Belgaum  ', 'Active'),
(355, 'Bagalkot  ', 'Active'),
(356, ' Basavakalyan  ', 'Active'),
(357, 'Basavana Bagevadi ', 'Active'),
(358, 'Devanahalli  ', 'Active'),
(359, 'Dharwad  ', 'Active'),
(360, 'Dod Ballapur  ', 'Active'),
(361, 'Hebbalu  ', 'Active'),
(362, ' Hindalgi  ', 'Active'),
(363, 'Malavalli  ', 'Active'),
(364, ' Kudligi  ', 'Active'),
(365, 'Khanapur  ', 'Active'),
(366, 'Kundgol  ', 'Active'),
(367, 'Kunigal  ', 'Active'),
(368, 'Krishnarajasagara  ', 'Active'),
(369, 'Krishnarajpet  ', 'Active'),
(370, 'Narasimharajapura  ', 'Active'),
(371, 'Naregal  ', 'Active'),
(372, ' Nipani  ', 'Active'),
(373, 'Venur  ', 'Active'),
(374, '  Yamuna Nagar', 'Active'),
(375, ' Barwala  ', 'Active'),
(376, 'Bawani Khera  ', 'Active'),
(377, 'Buria  ', 'Active'),
(378, 'Chhachhrauli  ', 'Active'),
(379, 'Dharuhera  ', 'Active'),
(380, ' Farrukhnagar  ', 'Active'),
(381, 'Ganaur  ', 'Active'),
(382, ' Gharaunda  ', 'Active'),
(383, 'Gohana  ', 'Active'),
(384, 'Haileymandi  ', 'Active'),
(385, 'Hassanpur  ', 'Active'),
(386, 'Ladwa  ', 'Active'),
(387, 'Mandi Dabwali  ', 'Active'),
(388, 'Mustafabad  ', 'Active'),
(389, 'Kardhan  ', 'Active'),
(390, 'Kalan Wali  ', 'Active'),
(391, 'Naraingarh  ', 'Active'),
(392, 'Narnaul  ', 'Active'),
(393, 'Narnaund  ', 'Active'),
(394, 'Agroha  ', 'Active'),
(395, 'Kurukshetra  ', 'Active'),
(397, 'Babiyal ', 'Active'),
(398, ' Ladakh', 'Active'),
(399, 'Kargil ', 'Active'),
(400, 'Basholi  ', 'Active'),
(401, 'Bijbehara  ', 'Active'),
(402, ' Gulmarg  ', 'Active'),
(403, 'Poonch', 'Active'),
(404, 'Dras  ', 'Active'),
(405, 'Katra  ', 'Active'),
(406, '  Pahalgam  ', 'Active'),
(407, ' Sonamarg  ', 'Active'),
(408, 'Akhnoor  ', 'Active'),
(409, 'Badami Bagh  ', 'Active'),
(410, 'Bari Brahmana  ', 'Active'),
(411, 'Charari Sharief  ', 'Active'),
(412, ' Chenani  ', 'Active'),
(413, ' Duru Verinag  ', 'Active'),
(414, 'Ganderbal ', 'Active'),
(415, 'Gho Manhasan  ', 'Active'),
(416, 'Hajan  ', 'Active'),
(417, 'Gorah Salathian  ', 'Active'),
(418, 'Handwara  ', 'Active'),
(419, 'Hiranagar  ', 'Active'),
(420, 'Kukernag  ', 'Active'),
(421, ' Kunzer  ', 'Active'),
(422, 'Kupwara  ', 'Active'),
(423, 'Kishtwar  ', 'Active'),
(424, '  Khour  ', 'Active'),
(425, 'Khrew', 'Active'),
(426, 'Panamik  ', 'Active'),
(427, 'Stok  ', 'Active'),
(428, 'Shey  ', 'Active'),
(429, 'Tikse  ', 'Active'),
(430, 'Matho  ', 'Active'),
(431, 'Hemis  ', 'Active'),
(432, 'Sumtsek  ', 'Active'),
(433, 'Lamayuru  ', 'Active'),
(434, 'Phyang  ', 'Active'),
(435, ' Spitok  ', 'Active'),
(436, 'Kumarghat  ', 'Active'),
(437, 'Unakoti  ', 'Active'),
(438, 'Badharghat  ', 'Active'),
(439, 'Dharmanagar  ', 'Active'),
(440, 'Gakulnagar', 'Active'),
(441, 'Kunjaban  ', 'Active'),
(442, 'Mokokchung', 'Active'),
(443, 'Amarpur  ', 'Active'),
(444, 'Sabroom  ', 'Active'),
(445, 'Mon', 'Active'),
(446, 'Belonia  ', 'Active'),
(447, 'Kailashahar  ', 'Active'),
(448, '  Cherrapunj', 'Active'),
(449, '  Mairang  ', 'Active'),
(450, '  Nongthymmai  ', 'Active'),
(451, 'Wokha', 'Active'),
(452, 'Baghmara  ', 'Active'),
(453, 'Sohra  ', 'Active'),
(454, 'Pathankot', 'Active'),
(455, 'Varanasi ', 'Active'),
(456, 'Ludhiana', 'Active'),
(457, ' Kausambi ', 'Active'),
(458, ' Jhansi  ', 'Active'),
(459, 'Batala', 'Active'),
(460, 'Bansi  ', 'Active'),
(461, ' Itaunja  ', 'Active'),
(462, 'Garhshanker  ', 'Active'),
(463, 'Muktsar  ', 'Active'),
(464, ' Moonak  ', 'Active'),
(465, 'Kot Fatta  ', 'Active'),
(466, 'Gurdaspur', 'Active'),
(467, 'Ghanaur  ', 'Active'),
(468, 'Gidderbaha  ', 'Active'),
(469, 'Moga', 'Active'),
(470, 'Budhlada  ', 'Active'),
(471, 'Ahmedgarh  ', 'Active'),
(472, 'Bariwala  ', 'Active'),
(473, 'Beas  ', 'Active'),
(474, 'Khanna  ', 'Active'),
(475, 'Jandiala Guru  ', 'Active'),
(476, 'Amloh  ', 'Active'),
(477, 'Mukerian  ', 'Active'),
(478, 'Dera Bassi  ', 'Active'),
(479, 'Dharamkot  ', 'Active'),
(480, 'Firozpur ', 'Active'),
(481, ' Majitha  ', 'Active'),
(482, 'Dirba  ', 'Active'),
(483, 'Faridkot  ', 'Active'),
(484, 'Khanauri  ', 'Active'),
(485, 'Jhusi  ', 'Active'),
(486, 'Hargaon  ', 'Active'),
(487, 'Sankasya  ', 'Active'),
(488, 'Maudaha  ', 'Active'),
(489, 'Kailashpur  ', 'Active'),
(490, 'Milak  ', 'Active'),
(491, 'Khaga  ', 'Active'),
(492, '  Indore', 'Active'),
(493, 'Indore', 'Active'),
(494, 'Jabalpur ', 'Active'),
(495, ' Hindoria  ', 'Active'),
(496, 'Joura  ', 'Active'),
(497, 'Anuppur  ', 'Active'),
(498, 'Khetia  ', 'Active'),
(500, 'Marredpally', 'Active'),
(503, 'Secunderabad', 'Active'),
(505, 'Bapatla', 'Active'),
(506, 'repalle', 'Inactive'),
(507, 'Egmore', 'Active'),
(508, 'Nagapatnam', 'Active'),
(511, 'Sidipeta', 'Inactive'),
(514, 'Bengaluru', 'Active'),
(515, 'Surabaya', 'Active'),
(516, 'Update City', 'Active'),
(517, 'Malkajgiri', 'Active'),
(519, 'Jamal', 'Active'),
(520, 'Katre', 'Active'),
(521, 'utarkand', 'Active'),
(522, 'malkarram', 'Active'),
(523, 'test1', 'Active'),
(525, 'Test City ', 'Active'),
(526, 'Boston', 'Active'),
(527, 'Denver', 'Active'),
(528, 'Brisbane', 'Active'),
(529, 'Hyderabad', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_country`
--

CREATE TABLE `cr_country` (
  `id` int(11) UNSIGNED NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_country`
--

INSERT INTO `cr_country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `cr_currency`
--

CREATE TABLE `cr_currency` (
  `currency_code_alpha` char(3) NOT NULL,
  `currency_code_numeric` varchar(3) DEFAULT NULL,
  `currency_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cr_currency`
--

INSERT INTO `cr_currency` (`currency_code_alpha`, `currency_code_numeric`, `currency_name`) VALUES
('AFN', '971', 'Afghani'),
('DZD', '12', 'Algerian Dinar'),
('ARS', '32', 'Argentine Peso'),
('AMD', '51', 'Armenian Dram'),
('AWG', '533', 'Aruban Guilder'),
('AUD', '36', 'Australian Dollar'),
('AZN', '944', 'Azerbaijanian Manat'),
('BSD', '44', 'Bahamian Dollar'),
('BHD', '48', 'Bahraini Dinar'),
('THB', '764', 'Baht'),
('PAB', '590', 'Balboa'),
('BBD', '52', 'Barbados Dollar'),
('BYR', '974', 'Belarussian Ruble'),
('BZD', '84', 'Belize Dollar'),
('BMD', '60', 'Bermudian Dollar (customarily known as Bermuda Dollar)'),
('VEF', '937', 'Bolivar Fuerte'),
('BOB', '68', 'Boliviano'),
('XBA', '955', 'Bond Markets Units European Composite Unit (EURCO)'),
('BRL', '986', 'Brazilian Real'),
('BND', '96', 'Brunei Dollar'),
('BGN', '975', 'Bulgarian Lev'),
('BIF', '108', 'Burundi Franc'),
('CAD', '124', 'Canadian Dollar'),
('CVE', '132', 'Cape Verde Escudo'),
('KYD', '136', 'Cayman Islands Dollar'),
('GHS', '936', 'Cedi'),
('XOF', '952', 'CFA Franc BCEAO'),
('XAF', '950', 'CFA Franc BEAC'),
('XPF', '953', 'CFP Franc'),
('CLP', '152', 'Chilean Peso'),
('XTS', '963', 'Codes specifically reserved for testing purposes'),
('COP', '170', 'Colombian Peso'),
('KMF', '174', 'Comoro Franc'),
('CDF', '976', 'Congolese Franc'),
('BAM', '977', 'Convertible Marks'),
('NIO', '558', 'Cordoba Oro'),
('CRC', '188', 'Costa Rican Colon'),
('HRK', '191', 'Croatian Kuna'),
('CUP', '192', 'Cuban Peso'),
('CZK', '203', 'Czech Koruna'),
('GMD', '270', 'Dalasi'),
('DKK', '208', 'Danish Krone'),
('MKD', '807', 'Denar'),
('DJF', '262', 'Djibouti Franc'),
('STD', '678', 'Dobra'),
('DOP', '214', 'Dominican Peso'),
('VND', '704', 'Dong'),
('XCD', '951', 'East Caribbean Dollar'),
('EGP', '818', 'Egyptian Pound'),
('SVC', '222', 'El Salvador Colon'),
('ETB', '230', 'Ethiopian Birr'),
('EUR', '978', 'Euro'),
('XBB', '956', 'European Monetary Unit (E.M.U.-6)'),
('XBD', '958', 'European Unit of Account 17 (E.U.A.-17)'),
('XBC', '957', 'European Unit of Account 9 (E.U.A.-9)'),
('FKP', '238', 'Falkland Islands Pound'),
('FJD', '242', 'Fiji Dollar'),
('HUF', '348', 'Forint'),
('GIP', '292', 'Gibraltar Pound'),
('XAU', '959', 'Gold'),
('HTG', '332', 'Gourde'),
('PYG', '600', 'Guarani'),
('GNF', '324', 'Guinea Franc'),
('GWP', '624', 'Guinea-Bissau Peso'),
('GYD', '328', 'Guyana Dollar'),
('HKD', '344', 'Hong Kong Dollar'),
('UAH', '980', 'Hryvnia'),
('ISK', '352', 'Iceland Krona'),
('INR', '356', 'Indian Rupee'),
('IRR', '364', 'Iranian Rial'),
('IQD', '368', 'Iraqi Dinar'),
('JMD', '388', 'Jamaican Dollar'),
('JOD', '400', 'Jordanian Dinar'),
('KES', '404', 'Kenyan Shilling'),
('PGK', '598', 'Kina'),
('LAK', '418', 'Kip'),
('EEK', '233', 'Kroon'),
('KWD', '414', 'Kuwaiti Dinar'),
('MWK', '454', 'Kwacha'),
('AOA', '973', 'Kwanza'),
('MMK', '104', 'Kyat'),
('GEL', '981', 'Lari'),
('LVL', '428', 'Latvian Lats'),
('LBP', '422', 'Lebanese Pound'),
('ALL', '8', 'Lek'),
('HNL', '340', 'Lempira'),
('SLL', '694', 'Leone'),
('LRD', '430', 'Liberian Dollar'),
('LYD', '434', 'Libyan Dinar'),
('SZL', '748', 'Lilangeni'),
('LTL', '440', 'Lithuanian Litas'),
('LSL', '426', 'Loti'),
('MGA', '969', 'Malagasy Ariary'),
('MYR', '458', 'Malaysian Ringgit'),
('TMT', '934', 'Manat'),
('MUR', '480', 'Mauritius Rupee'),
('MZN', '943', 'Metical'),
('MXN', '484', 'Mexican Peso'),
('MXV', '979', 'Mexican Unidad de Inversion (UDI)'),
('MDL', '498', 'Moldovan Leu'),
('MAD', '504', 'Moroccan Dirham'),
('BOV', '984', 'Mvdol'),
('NGN', '566', 'Naira'),
('ERN', '232', 'Nakfa'),
('NAD', '516', 'Namibia Dollar'),
('NPR', '524', 'Nepalese Rupee'),
('ANG', '532', 'Netherlands Antillian Guilder'),
('ILS', '376', 'New Israeli Sheqel'),
('RON', '946', 'New Leu'),
('TWD', '901', 'New Taiwan Dollar'),
('NZD', '554', 'New Zealand Dollar'),
('BTN', '64', 'Ngultrum'),
('KPW', '408', 'North Korean Won'),
('NOK', '578', 'Norwegian Krone'),
('PEN', '604', 'Nuevo Sol'),
('MRO', '478', 'Ouguiya'),
('TOP', '776', 'Pa\'anga'),
('PKR', '586', 'Pakistan Rupee'),
('XPD', '964', 'Palladium'),
('MOP', '446', 'Pataca'),
('CUC', '931', 'Peso Convertible'),
('UYU', '858', 'Peso Uruguayo'),
('PHP', '608', 'Philippine Peso'),
('XPT', '962', 'Platinum'),
('GBP', '826', 'Pound Sterling'),
('BWP', '72', 'Pula'),
('QAR', '634', 'Qatari Rial'),
('GTQ', '320', 'Quetzal'),
('ZAR', '710', 'Rand'),
('OMR', '512', 'Rial Omani'),
('KHR', '116', 'Riel'),
('MVR', '462', 'Rufiyaa'),
('IDR', '360', 'Rupiah'),
('RUB', '643', 'Russian Ruble'),
('RWF', '646', 'Rwanda Franc'),
('SHP', '654', 'Saint Helena Pound'),
('SAR', '682', 'Saudi Riyal'),
('XDR', '960', 'SDR'),
('RSD', '941', 'Serbian Dinar'),
('SCR', '690', 'Seychelles Rupee'),
('XAG', '961', 'Silver'),
('SGD', '702', 'Singapore Dollar'),
('SBD', '90', 'Solomon Islands Dollar'),
('KGS', '417', 'Som'),
('SOS', '706', 'Somali Shilling'),
('TJS', '972', 'Somoni'),
('LKR', '144', 'Sri Lanka Rupee'),
('SDG', '938', 'Sudanese Pound'),
('SRD', '968', 'Surinam Dollar'),
('SEK', '752', 'Swedish Krona'),
('CHF', '756', 'Swiss Franc'),
('SYP', '760', 'Syrian Pound'),
('BDT', '50', 'Taka'),
('WST', '882', 'Tala'),
('TZS', '834', 'Tanzanian Shilling'),
('KZT', '398', 'Tenge'),
('XXX', '999', 'Codes assigned for transactions where no currency is involved'),
('TTD', '780', 'Trinidad and Tobago Dollar'),
('MNT', '496', 'Tugrik'),
('TND', '788', 'Tunisian Dinar'),
('TRY', '949', 'Turkish Lira'),
('AED', '784', 'UAE Dirham'),
('UGX', '800', 'Uganda Shilling'),
('XFU', NULL, 'UIC-Franc'),
('COU', '970', 'Unidad de Valor Real'),
('CLF', '990', 'Unidades de fomento'),
('UYI', '940', 'Uruguay Peso en Unidades Indexadas'),
('USD', '840', 'US Dollar'),
('USN', '997', 'US Dollar (Next day)'),
('USS', '998', 'US Dollar (Same day)'),
('UZS', '860', 'Uzbekistan Sum'),
('VUV', '548', 'Vatu'),
('CHE', '947', 'WIR Euro'),
('CHW', '948', 'WIR Franc'),
('KRW', '410', 'Won'),
('YER', '886', 'Yemeni Rial'),
('JPY', '392', 'Yen'),
('CNY', '156', 'Yuan Renminbi'),
('ZMK', '894', 'Zambian Kwacha'),
('ZWL', '932', 'Zimbabwe Dollar'),
('PLN', '985', 'Zloty');

-- --------------------------------------------------------

--
-- Table structure for table `cr_email_settings`
--

CREATE TABLE `cr_email_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `smtp_host` varchar(512) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `smtp_user` varchar(512) NOT NULL,
  `smtp_password` varchar(512) NOT NULL,
  `api_key` varchar(512) NOT NULL,
  `mail_config` enum('webmail','mandrill') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_email_settings`
--

INSERT INTO `cr_email_settings` (`id`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_password`, `api_key`, `mail_config`) VALUES
(1, 'your sever smtp host', 587, 'your server smtp user', '123456789', '', 'webmail');

-- --------------------------------------------------------

--
-- Table structure for table `cr_email_templates`
--

CREATE TABLE `cr_email_templates` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(512) NOT NULL,
  `email_template` varchar(10000) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_email_templates`
--

INSERT INTO `cr_email_templates` (`id`, `subject`, `email_template`, `status`) VALUES
(7, 'registration', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER__NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Registered in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>Your credentials</strong></p>\r\n\r\n<p>Email<strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;__EMAIL__</strong></p>\r\n\r\n<p>Password<strong>&nbsp; __PASSWORD__</strong></p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>Please click this link for <strong>__ACCOUNT_ACTIVATOIN_LINK__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__IOS__</strong>&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active'),
(8, 'fb_google_registration_template', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__SITE_LOGO__</strong> &nbsp; &nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __USER_NAME__&nbsp;,</strong></p>\r\n\r\n<p>You have Successfully Registered in <strong>__SITE_TITLE__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp;: &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Password : <strong>__PASSWORD__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; __IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong>&nbsp;| Restaurant System</p>\r\n', 'Active'),
(57, 'when_user_order_booked_template_mail_to_user', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to&nbsp;__SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dear <strong>__USER_NAME__</strong>,&nbsp;</p>\r\n\r\n<p>You have successfully Booked an order in&nbsp;<strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Message &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__CUSTOMER_MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(58, 'when_user_order_booked_template_mail_to_admin', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome&nbsp;to __SITE_TITLE__ </strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Dear Admin,&nbsp;</p>\r\n\r\n<p><strong>__USER_NAME__&nbsp;</strong>has&nbsp;successfully Booked an order</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__USER_NAME__</strong></p>\r\n\r\n<p>Email &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p>Phone &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PHONE__</strong></p>\r\n\r\n<p>House number&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__HOUSE__NO__</strong></p>\r\n\r\n<p>Street &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__STREET__NAME__</strong></p>\r\n\r\n<p>Landmark &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__LAND_MARK__</strong></p>\r\n\r\n<p>Locality &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__LOCALITY__</strong></p>\r\n\r\n<p>City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__CITY__</strong></p>\r\n\r\n<p>PINCode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__PIN_CODE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Customer Message &nbsp; &nbsp;<strong>__CUSTOMER_MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are really excited that you decide to try our services,welcome and thank you for the trust!!</p>\r\n\r\n<p>For any assistance or questions&nbsp;feel free to contact us at <strong>__CONTACT_US__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>&nbsp;&nbsp;&nbsp; __IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurent System</p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(59, 'order_status_changed', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>__SITE_LOGO__</strong>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Welcome&nbsp;to&nbsp;__SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __NAME__</strong><strong> </strong><strong>,</strong></p>\r\n\r\n<p>Your Order No <strong>__ORDER__NO__ &nbsp;</strong>status has changed</p>\r\n\r\n<p><strong>ORDER DETAILS</strong></p>\r\n\r\n<p>No of Items Booked &nbsp; &nbsp;&nbsp;<strong>__NO_OF_ITEMS__</strong></p>\r\n\r\n<p>Order Booked Time &nbsp; &nbsp;&nbsp;<strong>__ORDER_TIME__</strong></p>\r\n\r\n<p>Total Cost &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__TOTAL_COST__</strong></p>\r\n\r\n<p>Payment Mode &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__PAYMENT_MODE__</strong></p>\r\n\r\n<p>Message<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__MESSAGE__</strong></p>\r\n\r\n<p>Status &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__STATUS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For any assistance or questions, feel free to contact us at <strong>__CONTACT__EMAIL__</strong>&nbsp; or call us at <strong>__CONTACT__NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(60, 'order_cancelled', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>__SITE_LOGO__</strong>&nbsp; &nbsp;&nbsp;</p>\r\n\r\n<h2><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dear __NAME__</strong><strong> </strong><strong>,</strong></p>\r\n\r\n<p><strong>__ITEM_NAME__&nbsp;</strong>is deleted form Order <strong>__ORDER_NO__ </strong>, for details please login and check the order history.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>For any assistance or questions, feel free to contact us at <strong>__CONTACT__EMAIL__</strong>&nbsp; or call us at <strong>__CONTACT__NO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__ANDROID__</strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__IOS__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\nCustomer Support</p>\r\n\r\n<p><strong>__SITE_TITLE__</strong></p>\r\n\r\n<p><strong>__COPY_RIGHTS__</strong></p>\r\n', 'Active'),
(61, 'forgot_password', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>A new password was requested for the user <strong>__EMAIL__</strong>,&nbsp;</p>\r\n\r\n<p>Please click on the link to set your&nbsp;password&nbsp;___RESET_YOUR_PASSWORD___</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n', 'Active'),
(62, 'contact_query', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong>__SITE_LOGO__</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<h2><strong>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome to __SITE_TITLE__</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hello Admin,</p>\r\n\r\n<p><strong>__USER__</strong>&nbsp;would like to contact you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>USER DETAILS</strong></p>\r\n\r\n<p><strong>Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong><strong>__USER_NAME__</strong></p>\r\n\r\n<p><strong>Email</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>__EMAIL__</strong></p>\r\n\r\n<p><strong>Subject</strong>&nbsp; &nbsp; &nbsp;&nbsp;<strong>__SUBJECT__</strong></p>\r\n\r\n<p><strong>Message</strong>&nbsp;&nbsp; &nbsp;&nbsp;<strong>__MESSAGE__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Regards,</strong>&nbsp;<br />\r\n<br />\r\n<strong>__SITE_TITLE__</strong> | Restaurant System</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_faqs`
--

CREATE TABLE `cr_faqs` (
  `id` int(11) UNSIGNED NOT NULL,
  `fc_id` int(11) DEFAULT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_faqs`
--

INSERT INTO `cr_faqs` (`id`, `fc_id`, `question`, `answer`, `status`) VALUES
(1, 1, 'What time is breakfast served from?', 'Breakfast is served from gate opening time until 10:45am', 'Active'),
(2, 2, 'Can a coupon code from Coupons by Restaurant.com be used more than one time?', 'Each coupon code offered through Coupons by Restaurant.com has its own unique terms of use.  Therefore, some of the coupon codes can be used multiple times and others could be restricted to one time per customer. Please refer to the terms and conditions', 'Active'),
(3, 2, 'What can I do if a code that I found on Coupons by Restaurant.com does not work?', 'We apologize for this experience. The coupon codes and offers featured on Coupons by Restaurant.com are managed by each individual merchant. Before reporting a coupon code not working, please check to see that your shopping cart meets the terms of use for the coupon code on the merchant’s website. You can contact the merchant if you believe the coupon code should work to rectify.', 'Active'),
(4, 2, 'Can I Order Only using my points', 'Yes.', 'Active'),
(7, 1, 'Test Question', 'Test Question ', 'Active'),
(8, 2, 'How Can I Use Points?', 'You gifted +20 Points for Registration.', 'Active'),
(9, 2, 'Can I Pay with my Credit Card ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\r\n', 'Active'),
(10, 1, 'How to book an order for my friend ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(11, 3, 'How can I Cancel my Order ?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(12, 1, 'My Delivered food is not good, How to Report?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took ', 'Active'),
(13, 4, 'Demo Bill', 'mgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnAmgXdN7rZnA', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_faq_categories`
--

CREATE TABLE `cr_faq_categories` (
  `fc_id` int(11) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_faq_categories`
--

INSERT INTO `cr_faq_categories` (`fc_id`, `category`, `status`, `created`, `updated`) VALUES
(1, 'General', 'Active', NULL, '2017-10-04 18:45:46'),
(2, 'Trust & Safety', 'Active', '2017-10-04 18:46:38', NULL),
(3, 'Services', 'Active', '2017-10-04 18:46:46', NULL),
(4, 'Billing', 'Active', '2017-10-04 18:46:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_groups`
--

CREATE TABLE `cr_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_groups`
--

INSERT INTO `cr_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'user', 'General User'),
(3, 'kitchen_manager', 'Kitchen Manager'),
(4, 'delivery_manager', 'Delivery Manager');

-- --------------------------------------------------------

--
-- Table structure for table `cr_items`
--

CREATE TABLE `cr_items` (
  `item_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_cost` decimal(10,2) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `item_image_name` varchar(50) DEFAULT NULL,
  `item_description` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `is_most_selling_item` enum('Yes','No') NOT NULL DEFAULT 'No',
  `product_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_items`
--

INSERT INTO `cr_items` (`item_id`, `menu_id`, `item_name`, `item_cost`, `item_type_id`, `item_image_name`, `item_description`, `status`, `is_most_selling_item`, `product_id`) VALUES
(8, 5, 'Cream Of Tomato Soup', '125.00', 1, 'item_8.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '4chdlezzqBwUdW3T'),
(9, 5, 'Sweet Corn Vegetable Soup', '125.00', 1, 'item_9.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'uFXoNlxfVHIb0Isu'),
(10, 5, 'Hot-N-Sour Vegetable Soup', '125.00', 1, 'item_10.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'lPOMuDCaFyvjLo25'),
(11, 5, 'Clear Chicken Noodle Soup', '134.00', 1, 'item_11.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'tPj70XdLflnVuVGV'),
(12, 5, 'Cream Of Chicken Soup', '124.00', 1, 'item_12.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'lUiVYlwdaiCmN5i7'),
(13, 5, 'Sweet Corn Chicken Soup', '134.00', 1, 'item_13.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'LI4BfXNA81VsMcEy'),
(16, 8, 'Gobi Manchurian', '221.00', 1, 'item_16.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'WzcVY97XmB2T11yQ'),
(18, 8, 'Baby Corn Manchurian', '229.00', 1, 'item_18.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'JBcUwv2OPHuISRXo'),
(24, 8, 'Chicken Drum Sticks', '309.00', 1, 'item_24.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'Hz9gz73b9wv0ojGx'),
(31, 8, 'Chicken Spring Roll', '175.00', 1, 'item_31.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'ljHYUAmkHXtZpGEw'),
(33, 8, 'Apollo Fish', '358.00', 1, 'item_33.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '6ESwBMNB892mi8ZK'),
(35, 8, 'Chicken 65', '309.00', 1, 'item_35.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'ihi2hKdoiNENTI9Q'),
(37, 6, 'Vegetable Biryani', '200.00', 1, 'item_37.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'VGNjD2OjjeRLT79Q'),
(41, 6, 'Mutton Biryani', '300.00', 1, 'item_41.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'gyse1KZw8E3PwzSI'),
(85, 11, 'Masala Kulcha', '67.00', 1, 'item_85.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'mlYrtjJ2W9Ma5cQJ'),
(86, 11, 'Butter Naan', '67.00', 1, 'item_86.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '8dg5DI0zqcESjauL'),
(89, 11, 'Pineapple Raita', '84.00', 1, 'item_89.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'BI2usCnFBzf7SvGR'),
(91, 11, 'Roasted Papad', '38.00', 3, 'item_91.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'PnMTwDIdfNvFogRp'),
(92, 11, 'Fruit Chat Salad', '75.00', 1, 'item_92.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'oKaWMDcO37MLtTd9'),
(93, 11, 'Russian Salad', '75.00', 1, 'item_93.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '7qSttbNOp8UTfl9J'),
(94, 11, 'Green Salad', '50.00', 1, 'item_94.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'wZg9d8OX6ajqtCpr'),
(95, 11, 'Cucumber Salad', '50.00', 1, 'item_95.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 's8abanqGmAZHmYRY'),
(99, 12, 'Sweet-N-Sour Prawns', '378.00', 1, 'item_99.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'yxYSwmptCOZwQFd9'),
(100, 12, 'Ginger Fish', '350.00', 1, 'item_100.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'E4afhHlKIBSvZjKO'),
(102, 12, 'Chicken Soft Noodles', '184.00', 2, 'item_102.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'XigKKL4MaU9qZcpe'),
(104, 12, 'Chicken Fried Rice', '184.00', 1, 'item_104.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'WGA4OlFWmXIC7SQV'),
(106, 12, 'Egg Fried Rice', '184.00', 1, 'item_106.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '0xfA9aNZuMGKowoB'),
(107, 12, 'Veg Soft Noodles', '184.00', 1, 'item_107.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '3o6HQBe3Zm5W4Msv'),
(108, 12, 'Veg Hakka Noodles', '184.00', 1, 'item_108.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '9Ov9o8YYLei0RM1K'),
(109, 12, 'Veg Fried Rice', '184.00', 1, 'item_109.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', '1xRIywBOZ6kTJSEJ'),
(111, 14, 'Qubani Ka Meetha', '125.00', 3, 'item_111.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'yuKC6iEOwFGb8Z2U'),
(113, 14, 'Gajara Ka Halwa', '84.00', 3, 'item_113.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'ej3OvQ0dWXtei0xX'),
(121, 14, 'Pineapple With Vanilla', '150.00', 3, 'item_121.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'k8ZhhdwTj2uhSn2w'),
(122, 14, 'Vainilla Hot Chocolate', '150.00', 3, 'item_122.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Active', 'No', 'MvB8C1bYOL2xBpKm'),
(127, 14, 'Strawberry Icream', '125.00', 3, 'item_127.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'njKKD6emzPJH2B3F'),
(128, 14, 'Butterscotch', '125.00', 3, 'item_128.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'x4DzweNBqFyrv8UY'),
(129, 14, 'Fruit Salad', '125.00', 3, 'item_129.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'hejlaDNQTXXLYRQL'),
(130, 13, 'Pineapple ', '84.00', 3, 'item_130.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been tkju', 'Active', 'No', 'g0ILzhjACH0TUsdM'),
(132, 13, 'Sweet Lime', '84.00', 1, 'item_132.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'fvUUiVi7SJRbcVk9'),
(133, 13, 'Chocolate Milkshake', '84.00', 3, 'item_133.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'MtKCQtCT13mLmGXI'),
(134, 13, 'Strawberry Milkshake', '84.00', 3, 'item_134.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', '2scaDBXVLoxnAYnN'),
(135, 13, 'Butterscotch Milkshake', '84.00', 3, 'item_135.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'HxPYhSrYLUkyb86T'),
(137, 13, 'Cold Coffee', '84.00', 3, 'item_137.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'qYtuaHGlw3PwS29a'),
(141, 13, 'Fanta', '42.00', 3, 'item_141.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', 'qPyNhgmt1NhSLdl2'),
(142, 13, 'Maaza', '42.00', 3, 'item_142.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'No', '2VmTcs5PmKB4DBUu'),
(148, 10, 'Chicken Curry', '90.00', 1, 'item_148.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'u12PIIrYQvNXPMCR'),
(149, 10, 'Paneer', '120.00', 1, 'item_149.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'tj1bkFrzYLXzoMdZ'),
(152, 21, 'Country Special', '200.00', 1, 'item_152.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'BD5cHIsafGm4X2Gj'),
(153, 21, 'Peppy Paneer', '200.00', 1, 'item_153.jpg', 'Chunky paneer with crisp capsicum and spicy red pepper - quite a mouthful!', 'Active', 'No', 'NHiCWhhqVvvHSPbU'),
(154, 21, 'Chicken Mexicana', '250.00', 1, 'item_154.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'SWxafg1Bmd5AWCjj'),
(167, 13, 'Orange', '84.00', 3, 'item_167.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the', 'Active', 'Yes', 'RI8ypkihxFz9jb1b'),
(856760, 8, 'Paneer Butter Masala', '200.00', 1, 'item_856760.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MSCOeQQcPIEyGe9o'),
(856761, 6, 'Keema Biryani Recipe', '300.00', 41, 'item_856761.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '5fs9X6i7b0IuxIAU'),
(856762, 6, 'Chicken Reshmi Biryani Recipe', '250.00', 41, 'item_856762.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '6syy3Ok1SeGFTZNP'),
(856763, 6, 'Malabar Biriyani', '400.00', 41, 'item_856763.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', '56OS2xQTnZEbhFvd'),
(856764, 6, 'Bombay Biryani', '500.00', 41, 'item_856764.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'xjSrx3jGXpLqFZ6A'),
(856765, 6, 'Sindhi Biryani', '350.00', 41, 'item_856765.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'VLTN8jhm8mDfrz9f'),
(856766, 21, 'Margherita ', '200.00', 1, 'item_856766.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'KHmgpJMA57HONjig'),
(856767, 21, 'Farm House', '300.00', 1, 'item_856767.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '5W6a2xbfRXfnZENj'),
(856768, 21, 'Fresh Veggie', '250.00', 1, 'item_856768.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MzG19S24QAIdjr9f'),
(856769, 21, 'Barbeque Chicken', '300.00', 41, 'item_856769.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'D666uYbBv6pLB2vO'),
(856770, 21, 'Cheese Pepperoni', '300.00', 1, 'item_856770.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'r2GrK8lb9u4ib4Ee'),
(856771, 8, ' Hot Chocolate', '100.00', 1, 'item_856771.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wdvPMqey1gs4iCoz'),
(856772, 13, 'Green Tea', '100.00', 1, 'item_856772.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'Lno1NMYBSNB1o2Tb'),
(856773, 13, 'Beetroot Pomegranate  Juice', '200.00', 1, 'item_856773.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'WEqiuLXlsFgQHLGT'),
(856775, 10, 'Egg Curry', '100.00', 1, 'item_856775.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'ufKUl2K9EhystRHx'),
(856776, 10, 'Potato Stew', '100.00', 1, 'item_856776.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'nv9IHk2OXBlXLQG5'),
(856777, 10, 'Lima Beans Curry', '149.00', 1, 'item_856777.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wRQXKaWO7L6rdDfH'),
(856778, 10, 'Butter Chicken', '159.00', 41, 'item_856778.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'zeP6EHLcJxzUD6Pz'),
(856779, 10, 'Beetroot Curry', '149.00', 1, 'item_856779.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'NgNX6kl4vimPlHWb'),
(856780, 14, 'Orange Cake', '99.00', 1, 'item_856780.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'MUB8zO9fUxNFwhdT'),
(856781, 6, 'Egg biryani', '159.00', 1, 'item_856781.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'YRMMKvSibeOg3LgO'),
(856782, 5, 'French Fish Soup', '149.00', 41, 'item_856782.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'wmKKO7oofrQsmypx'),
(856783, 5, 'Potato and Corn Soup', '119.00', 1, 'item_856783.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', '6jzb7Dc54yoHQs5D'),
(856784, 10, 'Cheese Balls', '99.00', 1, 'item_856784.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'Yes', 'BhhjsBOQOSdibcyn'),
(856785, 41, 'Red Bull', '100.00', 3, 'item_856785.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Active', 'No', 'T8L5C2h9TFjYzqsg'),
(856786, 13, 'Sports drink', '300.00', 1, 'item_856786.jpg', 'Find the great collection of 191 beverages recipes and dishes ', 'Active', 'Yes', 'pYawpIPbtfcAIAUK'),
(856787, 13, 'Kiwi Margarita', '260.00', 1, 'item_856787.jpg', 'sfsdfsdfsadfsdfsdff', 'Active', 'Yes', 'raSGg6TZOWvy0AOK'),
(856788, 21, 'Paneer Vegorama', '49.00', 1, 'item_856788.jpg', 'test ', 'Active', 'Yes', 'BT0AOyoC58Ls9M9b'),
(856789, 21, 'Triple Chicken Feast', '57.00', 1, 'item_856789.jpg', 'test', 'Active', 'Yes', 'IrezVOPlCCcqoqNW'),
(856790, 21, 'Chicken Italiano', '57.00', 1, 'item_856790.jpg', 'test', 'Active', 'Yes', 'YVEiJqgTYhPLpZJb'),
(856791, 21, 'Country Feast', '67.00', 1, 'item_856791.jpg', 'test', 'Active', 'Yes', 'du9tZP4PMPHVrdID');

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_addons`
--

CREATE TABLE `cr_item_addons` (
  `item_addon_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_item_addons`
--

INSERT INTO `cr_item_addons` (`item_addon_id`, `item_id`, `addon_id`) VALUES
(219, 41, 42),
(220, 41, 43),
(221, 41, 44),
(222, 41, 46),
(223, 37, 43),
(224, 37, 44),
(225, 856781, 42),
(226, 856781, 43),
(227, 856781, 45),
(228, 856781, 46),
(229, 856787, 43),
(230, 856787, 45),
(231, 856787, 46),
(232, 135, 46),
(233, 135, 47);

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_options`
--

CREATE TABLE `cr_item_options` (
  `item_option_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_item_options`
--

INSERT INTO `cr_item_options` (`item_option_id`, `item_id`, `option_id`, `price`) VALUES
(4, 152, 4, '300.00'),
(6, 152, 14, '100.00'),
(18, 41, 19, '500.00'),
(19, 41, 4, '200.00'),
(20, 37, 4, '200.00'),
(21, 37, 14, '100.00'),
(31, 856781, 4, '200.00'),
(32, 856781, 19, '350.00'),
(33, 856781, 20, '450.00'),
(34, 856765, 4, '300.00'),
(35, 856765, 37, '100.00'),
(36, 856764, 4, '300.00'),
(37, 856764, 14, '100.00'),
(38, 149, 37, '200.00'),
(39, 149, 9, '300.00'),
(40, 856785, 38, '50.00'),
(41, 856787, 4, '280.00'),
(42, 856787, 9, '270.00'),
(43, 135, 21, '160.00'),
(44, 135, 4, '140.00'),
(45, 135, 37, '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_types`
--

CREATE TABLE `cr_item_types` (
  `item_type_id` int(11) NOT NULL,
  `item_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_item_types`
--

INSERT INTO `cr_item_types` (`item_type_id`, `item_type`) VALUES
(1, 'Veg'),
(3, 'Other'),
(41, 'Non-Veg');

-- --------------------------------------------------------

--
-- Table structure for table `cr_languagewords`
--

CREATE TABLE `cr_languagewords` (
  `lang_id` bigint(22) NOT NULL,
  `phrase_for` enum('App','Web') NOT NULL DEFAULT 'Web',
  `lang_key` varchar(512) DEFAULT NULL,
  `english` longtext,
  `arabic` longtext,
  `dutch` longtext,
  `portuguese` longtext,
  `telugu` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_languagewords`
--

INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`, `arabic`, `dutch`, `portuguese`, `telugu`) VALUES
(0, 'Web', 'Fast Delivery', 'Fast Delivery', NULL, NULL, NULL, NULL),
(2, 'Web', 'hello', 'Hello', 'مرحبا', 'hoe gaat het met jou', 'Olá', NULL),
(6, 'Web', 'admin_dashboard', 'Admin Dashboard', 'لوحة تحكم المشرف', 'Bảng điều khiển quản trị', 'Admin Dashboard', NULL),
(7, 'Web', 'profile', 'Profile', 'الملف الشخصي', 'profiel', 'Perfil', NULL),
(8, 'Web', 'sign_out', 'Sign Out', 'خروج', 'Đăng Out', 'Sair', NULL),
(9, 'Web', 'home', 'Home', 'الصفحة الرئيسية', 'thuis', 'Casa', NULL),
(10, 'Web', 'users', 'Users', 'المستخدمين', 'người dùng', 'Comercial', NULL),
(11, 'Web', 'view_all_users', 'View All Users', 'عرض جميع المستخدمين', 'Bekijk alle gebruikers', 'Ver todos os usuários', NULL),
(15, 'Web', 'create', 'Create', 'خلق', 'creëren', 'Crio', NULL),
(37, 'Web', 'pages', 'Pages', 'صفحات', 'trang', 'Páginas', NULL),
(38, 'Web', 'dynamic_pages', 'Dynamic pages', 'الصفحات الديناميكية', 'Dynamische pagina\'s', 'Páginas dinâmicas', NULL),
(39, 'Web', 'faqs', 'FAQs', 'أسئلة وأجوبة', 'Veelgestelde vragen', 'FAQs', NULL),
(41, 'Web', 'email_templates', 'Email Templates', 'قوالب البريد الإلكتروني', 'Email Templates', 'Modelos de e-mail', NULL),
(42, 'App', 'language_settings', 'Language Settings', 'اعدادات اللغة', 'Taalinstellingen', 'Configurações de linguagem', NULL),
(43, 'App', 'view_languages', 'View Languages', 'عرض اللغات', 'Xem Ngôn ngữ', 'Ver idiomas', NULL),
(44, 'App', 'add_language', 'Add Language', 'إضافة لغة', 'Taal toevoegen', 'Adicionar idioma', NULL),
(45, 'App', 'view_phrases', 'View Phrases', 'عرض عبارات', 'Bekijk zinnen', 'Ver frases', NULL),
(46, 'App', 'my_profile', 'My Profile', 'ملفي', 'mijn profiel', 'Meu perfil', NULL),
(47, 'App', 'change_password', 'Change Password', 'تغيير كلمة السر', 'Verander wachtwoord', 'Mudar senha', NULL),
(48, 'Web', 'sign_out', 'Sign Out', 'خروج', 'Afmelden', 'Sair', NULL),
(49, 'Web', 'total_payments', 'Total Payments', 'إجمالي الدفعات', 'Tổng thanh toán', 'Pagamentos totais', NULL),
(50, 'Web', 'users_information', 'Users Information', 'معلومات المستخدمين', 'gebruikers Informatie', 'Informações dos usuários', NULL),
(51, 'Web', 'any_other_stats', 'Any other stats', 'أي دول أخرى', 'Alle andere staten', 'Qualquer outro estado', NULL),
(52, 'Web', 'add_new_record', 'Add New Record', 'إضافة سجل جديد', 'Voeg nieuw record toe', 'Adicionar novas informações', NULL),
(53, 'Web', 'delete_selected', 'Delete Selected', 'احذف المختار', 'Verwijder geselecteerde', 'Eliminar Selecionado', NULL),
(54, 'Web', 'delete', 'Delete', 'حذف', 'Verwijder', 'Delete', NULL),
(58, 'Web', 'actions', 'Actions', 'أفعال', 'acties', 'ações', NULL),
(59, 'Web', 'warning', 'Warning', 'تحذير', 'cảnh báo', 'Atenção', NULL),
(60, 'Web', 'are_you_sure_to_delete', 'Are you sure to delete', 'هل انت متأكد من الحذف', 'Weet u zeker dat u wilt verwijderen', 'Tem certeza de excluir', NULL),
(61, 'Web', 'no', 'No', 'لا', 'niet', 'Não', NULL),
(62, 'Web', 'yes', 'Yes', 'نعم فعلا', 'ja', 'sim', NULL),
(63, 'Web', 'are_you_sure_to_delete_selected_records', 'Are you sure to delete selected records', 'هل أنت متأكد من حذف السجلات المحددة', 'Weet u zeker dat u geselecteerde records verwijdert', 'Tem certeza de excluir os registros selecionados', NULL),
(64, 'Web', 'please_select_records_to_be_deleted', 'Please select records to be deleted', 'الرجاء تحديد السجلات المراد حذفها', 'Selecteer records worden gewist', 'Selecione os registros a serem excluídos', NULL),
(65, 'Web', 'Confirm', 'Confirm', 'تؤكد', 'Bevestigen', 'confirme', NULL),
(66, 'Web', 'Are_you_sure_to_activate_selected_records', 'Are you sure to activate selected records', 'هل أنت متأكد من تنشيط السجلات المحددة', 'Weet u zeker dat u geselecteerde records activeert?', 'Tem certeza de ativar os registros selecionados', NULL),
(67, 'Web', 'Please_select_records_to_be_activated', 'Please select records to be activated', 'يرجى تحديد السجلات التي سيتم تنشيطها', 'Selecteer records worden geactiveerd', 'Selecione os registros a serem ativados', NULL),
(68, 'Web', 'are_you_sure_to_deactivate_selected_records', 'Are you sure to deactivate selected records', 'هل أنت متأكد من إلغاء تنشيط السجلات المحددة', 'Weet u zeker dat u de geselecteerde records uitschakelt', 'Tem certeza de desativar registros selecionados', NULL),
(69, 'Web', 'please_select_records_to_be_deactivated', 'Please select records to be deactivated', 'الرجاء تحديد السجلات المراد إبطال مفعولها', 'Vui lòng chọn hồ sơ để bị ngừng hoạt động', 'Selecione os registros a serem desativados', NULL),
(70, 'Web', 'information', 'Information', 'معلومات', 'informatie', 'Em formação', NULL),
(71, 'Web', 'view_details', 'View Details', 'عرض التفاصيل', 'Bekijk details', 'Ver detalhes', NULL),
(72, 'Web', 'edit', 'Edit', 'تصحيح', 'Bewerk', 'Editar', NULL),
(73, 'Web', 'go_to_list', 'Go To List', 'الذهاب إلى القائمة', 'Ga naar lijst', 'Ir para a lista', NULL),
(75, 'Web', 'please_upload_only_jpg_or_png_images', 'Please upload only jpg or png images', 'الرجاء تحميل صور جبغ أو ينغ فقط', 'Hãy tải lên chỉ jpg hoặc png hình ảnh', 'Carregue apenas imagens de jpg ou png', NULL),
(76, 'Web', 'add', 'Add', 'إضافة', 'Toevoegen', 'adicionar', NULL),
(78, 'Web', 'cancel', 'Cancel', 'إلغاء', 'Annuleer', 'Cancelar', NULL),
(79, 'Web', 'please_upload_atleast_one_image', 'Please Upload Atleas One Image', 'يرجى تحميل على الأقل صورة واحدة', 'Upload Atleas Eén beeld', 'Faça o upload de uma imagem pelo menos', NULL),
(80, 'Web', 'all_users', 'All Users', 'جميع المستخدمين', 'Alle gebruikers', 'Todos os usuários', NULL),
(81, 'Web', 'photo', 'Photo', 'صورة فوتوغرافية', 'foto', 'foto', NULL),
(82, 'Web', 'username', 'Username', 'اسم المستخدم', 'gebruikersnaam', 'Nome de usuário', NULL),
(83, 'Web', 'email', 'Email', 'البريد الإلكتروني', 'E-mail', 'O email', NULL),
(84, 'Web', 'phone', 'Phone', 'هاتف', 'điện thoại', 'telefone', NULL),
(85, 'Web', 'date_of_registration', 'Date of registration', 'تاريخ التسجيل', 'Ngày đăng ký', 'Data de registro', NULL),
(86, 'Web', 'address', 'Address', 'عنوان', 'Adres', 'endereço', NULL),
(87, 'Web', 'status', 'Status', 'الحالة', 'tình trạng', 'Status', NULL),
(88, 'Web', 'active', 'Active', 'نشيط', 'Actief', 'ativo', NULL),
(92, 'Web', 'record_added_successfully', 'Record Added Successfully', 'تمت إضافة السجل بنجاح', 'Record succesvol toegevoegd', 'Registro adicionado com sucesso', NULL),
(93, 'Web', 'success', 'Success', 'نجاح', 'succes', 'Sucesso', NULL),
(95, 'Web', 'description', 'Description', 'وصف', 'Beschrijving', 'Descrição', NULL),
(97, 'Web', 'inactive', 'Inactive', 'غير نشط', 'inactief', 'Inativo', NULL),
(100, 'Web', 'user', 'User', 'المستعمل', 'người sử dụng', 'Do utilizador', NULL),
(103, 'Web', 'no_records_available', 'No records available', 'لا توجد سجلات متاحة', 'Geen gegevens beschikbaar', 'Nenhum registro disponível', NULL),
(104, 'Web', 'select_Phone_Code', 'Select Phone Code', 'حدد رمز الهاتف', 'Chọn Mã Điện thoại', 'Selecione o Código do Telefone', NULL),
(105, 'Web', 'Sign_In', 'Sign In', 'تسجيل الدخول', 'Aanmelden', 'Assinar em', NULL),
(106, 'Web', 'With_Your_Account', 'With Your Account', 'مع حسابك', 'Met Your Account', 'Com sua conta', NULL),
(107, 'Web', 'Password', 'Password', 'كلمه السر', 'mật khẩu', 'Senha', NULL),
(108, 'Web', 'Forgot_your_password', 'Forgot your password?', 'نسيت رقمك السري؟', 'Je wachtwoord vergeten?', 'Esqueceu sua senha?', NULL),
(109, 'Web', 'register', 'Register', 'تسجيل', 'Registreren', 'registo', NULL),
(111, 'Web', 'Register_As', 'Register As', 'تسجيل باسم', 'als Register', 'Registre-se como', NULL),
(112, 'Web', 'First_Name', 'First Name', 'الاسم الاول', 'Voornaam', 'Primeiro nome', NULL),
(113, 'Web', 'first_name', 'First Name', 'الاسم الاول', 'Voornaam', 'Primeiro nome', NULL),
(114, 'Web', 'Last_Name', 'Last Name', 'الكنية', 'tên họ', 'Último nome', NULL),
(115, 'Web', 'last_name', 'Last Name', 'الكنية', 'Achternaam', 'Último nome', NULL),
(116, 'Web', 'must_be_at_least', 'Must be at least', 'لا بد أن يكون على الأقل', 'Moet ten minste', 'Deve ser pelo menos', NULL),
(117, 'Web', 'characters', 'Characters', 'الشخصيات', 'nhân vật', 'Personagens', NULL),
(118, 'Web', 'Confirm_Password', 'Confirm Password', 'تأكيد كلمة المرور', 'bevestig wachtwoord', 'Confirme a Senha', NULL),
(119, 'Web', 'confirm_password', 'Confirm Password', 'تأكيد كلمة المرور', 'bevestig wachtwoord', 'Confirme a Senha', NULL),
(120, 'Web', 'pin_code', 'Pin code', 'رمز بين', 'mã pin', 'Código PIN', NULL),
(121, 'Web', 'Phone_Number', 'Phone Number', 'رقم الهاتف', 'Số điện thoại', 'Número de telefone', NULL),
(122, 'Web', 'Create_an_Account', 'Create an Account', 'انشئ حساب', 'Account aanmaken', 'Crie a sua conta aqui', NULL),
(123, 'Web', 'logged_in_successfully', 'Logged in successfully', 'تم تسجيل الدخول بنجاح', 'Đăng nhập thành công', 'Conectado com sucesso', NULL),
(124, 'Web', 'Record_Not_Added', 'Record Not Added', 'سجل لم تتم إضافته', 'Ghi Không thêm', 'Record Not Added', NULL),
(125, 'Web', 'error', 'Error', 'خطأ', 'Fout', 'Erro', NULL),
(126, 'Web', 'Record_Deleted_Successfully', 'Record Deleted Successfully', 'تم حذف السجل بنجاح', 'Succesvol verwijderd Record', 'Registro excluído com sucesso', NULL),
(128, 'Web', 'Activate_Selected', 'Activate Selected', 'تنشيط محدد', 'Activeer geselecteerd', 'Ative Selected', NULL),
(129, 'Web', 'activate', 'Activate', ' تفعيل', 'Activeren', 'ativar', NULL),
(130, 'Web', 'Deactivate_Selected', 'Deactivate Selected', 'إلغاء التنشيط المحدد', 'Deactiveer geselecteerd', 'Desativar Selecionado', NULL),
(131, 'Web', 'deactivate', 'Deactivate', 'عطل', 'deactiveren', 'Desativar', NULL),
(132, 'Web', 'Service_Name', 'Service Name', 'اسم الخدمة', 'service Name', 'Nome do Serviço', NULL),
(133, 'Web', 'Cost_Type', 'Cost Type', 'نوع التكلفة', 'Kosten Type', 'Tipo de custo', NULL),
(134, 'Web', 'price', 'Price', 'السعر', 'prijs', 'Preço', NULL),
(141, 'Web', 'the', 'The', 'ال', 'các', 'O (o)', NULL),
(143, 'Web', '_already_exists', ' already exists', NULL, 'Punten om door iemand te verwijzen', 'já existe', NULL),
(145, 'Web', 'update', 'Update', 'تحديث', 'cập nhật', 'Atualizar', NULL),
(147, 'Web', 'Record_Updated_Successfully', 'Record Updated Successfully', 'تم تحديث السجل بنجاح', 'Record Bijgewerkt succesvol', 'Gravar atualizado com sucesso', NULL),
(149, 'Web', 'Record_Not_Updated', 'Record Not Updated', 'سجل لم يتم تحديثه', 'Ghi Không cập nhật', 'Registro não atualizado', NULL),
(150, 'Web', 'Selected_Records_Deleted_Successfully', 'Selected Records Deleted Successfully', 'تم حذف السجلات المحددة بنجاح', 'Hồ sơ được lựa chọn xóa thành công', 'Registros selecionados excluídos com sucesso', NULL),
(151, 'Web', 'category', 'Category', 'الفئة', 'Categorie', 'Categoria', NULL),
(152, 'Web', 'type', 'Type', 'اكتب', 'type', 'Tipo', NULL),
(154, 'Web', 'image', 'Image', 'صورة', 'afbeelding', 'Imagem', NULL),
(156, 'Web', 'view_more', 'View More', 'عرض المزيد', 'Xem thêm', 'Veja mais', NULL),
(157, 'Web', 'Record_Already_Added', 'Record Already Added', 'سجل تمت إضافته بالفعل', 'Ghi Đã thêm', 'Record já adicionado', NULL),
(158, 'Web', 'info', 'Info', 'معلومات', 'info', 'Info', NULL),
(159, 'Web', 'Add_Phrase', 'Add Phrase', 'إضافة عبارة', 'Voeg zin toe', 'Adicionar Frase', NULL),
(160, 'Web', 'Lang_Id', 'Lang Id', 'لانغ إد', 'Lang Id', 'ID de Lang', NULL),
(161, 'Web', 'Lang_Key', 'Lang Key', 'لانغ كي', 'Lang chủ chốt', 'Lang Key', NULL),
(162, 'Web', 'english', 'English', 'الإنجليزية', 'Engels', 'Inglês', NULL),
(163, 'Web', 'brazil', 'Brazil', 'البرازيل', 'Brazilië', 'Brasil', NULL),
(164, 'Web', 'please_enter_language_key', 'Please enter language key', 'الرجاء إدخال مفتاح اللغة', 'Vul de sleutel taal', 'Digite a chave de idioma', NULL),
(165, 'Web', 'submit', 'Submit', 'عرض', 'đệ trình', 'Enviar', NULL),
(166, 'Web', 'Master_Settings', 'Master Settings', 'إعدادات رئيسية', 'Cài đặt Thạc sĩ', 'Configurações mestre', NULL),
(167, 'Web', 'Site_Settings', 'Site Settings', 'إعدادات الموقع', 'Site-instellingen', 'Configurações do site', NULL),
(168, 'Web', 'Email_Settings', 'Email Settings', 'إعدادات البريد الإلكتروني', 'Email instellingen', 'Configurações de Email', NULL),
(174, 'Web', 'House_Number', 'House Number', 'رقم الدار', 'Huisnummer', 'Número da casa', NULL),
(175, 'Web', 'Flat_Number', 'Flat Number', 'عدد مسطح', 'Plat nummer', 'Número do apartamento', NULL),
(177, 'Web', 'Street_Name', 'Street Name', 'اسم الشارع', 'Tên đường phố', 'Nome da rua', NULL),
(179, 'Web', 'city', 'City', 'مدينة', 'thành phố', 'Cidade', NULL),
(180, 'Web', 'state', 'State', 'حالة', 'trạng thái', 'Estado', NULL),
(181, 'Web', 'landmark', 'Landmark', 'معلم معروف', 'mijlpaal', 'Ponto de referência', NULL),
(182, 'Web', 'zipcode', 'Zipcode', NULL, 'Punten om door iemand te verwijzen', 'CEP', NULL),
(186, 'Web', 'please_Enter_City', 'Please Enter City', 'الرجاء إدخال المدينة', 'Voer plaatsnaam', 'Digite a cidade', NULL),
(187, 'Web', 'please_Enter_State', 'Please Enter State', 'الرجاء إدخال الدولة', 'Xin mời nhập Nhà nước', 'Digite o estado', NULL),
(188, 'Web', 'please_Enter_Landmark', 'Please Enter Landmark', 'يرجى إدخال لاندمارك', 'Vui lòng nhập Landmark', 'Digite Landmark', NULL),
(189, 'Web', 'please_Enter_Zip_Code', 'Please Enter Zip Code', 'الرجاء إدخال الرمز البريدي', 'Xin mời nhập Zip Code', 'Digite o CEP', NULL),
(190, 'Web', 'You_do_not_have_permission_to_access_this_page', 'You do not have permission to access this page', NULL, 'Punten om door iemand te verwijzen', 'Você não tem permissão para acessar esta página', NULL),
(191, 'Web', 'Group', 'Group', 'مجموعة', 'groep', 'Grupo', NULL),
(192, 'Web', 'phone_code', 'Phone code', 'رمز الهاتف', 'telefoon code', 'Código do telefone', NULL),
(195, 'App', 'view_language', 'View Language', 'عرض اللغة', 'Bekijk Taal', 'Ver idioma', NULL),
(196, 'Web', 'language', 'Language', 'لغة', 'taal', 'Língua', NULL),
(197, 'Web', 'Add_Language_Words', 'Add Language Words', 'إضافة كلمات اللغة', 'Add Language Words ', 'Adicionar palavras linguagem', NULL),
(201, 'Web', 'House_numer', 'House numer', 'رقم الدار', 'huisnummer', 'casa numer', NULL),
(203, 'Web', 'No_Details_Found', 'No Details Found', 'لم يتم العثور على تفاصيل', 'Không chi tiết Tìm thấy', 'Não foram encontrados detalhes', NULL),
(204, 'Web', 'Selected_Records_Activated_Successfully', 'Selected Records Activated Successfully', 'تم تنشيط السجلات المحددة بنجاح', 'Hồ sơ được lựa chọn kích hoạt thành công', 'Registros selecionados ativados com sucesso', NULL),
(205, 'Web', 'Selected_Records_Deactivated_Successfully', 'Selected Records Deactivated Successfully', 'تم إلغاء تنشيط السجلات المحددة بنجاح', 'Geselecteerde Records gedeactiveerd', 'Registros selecionados desativados com sucesso', NULL),
(206, 'Web', 'View_User_Details', 'View User Details', 'عرض تفاصيل المستخدم', 'Xem chi tiết tài khoản', 'Ver detalhes do usuário', NULL),
(208, 'Web', 'gender', 'Gender', 'جنس', 'Geslacht', 'Gênero', NULL),
(209, 'Web', 'user_belongs_group', 'User belongs group', 'ينتمي المستخدم مجموعة', 'Gebruikersgroep behoort', 'Usuário pertence ao grupo', NULL),
(211, 'Web', 'Create_User', 'Create User', 'إنشاء مستخدم', 'Gebruikers maken', 'Criar Usuário', NULL),
(212, 'Web', 'Add_User', 'Add User', 'إضافة مستخدم', 'Voeg gebruiker toe', 'Adicionar usuário', NULL),
(213, 'Web', 'Profile_Pic', 'Profile Pic', 'الملف الشخصي بيك', 'profiel Pic', 'Imagem de perfil', NULL),
(215, 'Web', 'please_login_to_continue', 'Please login to continue', 'الرجاء تسجيل الدخول للمتابعة', 'Hãy đăng nhập để tiếp tục', 'Por favor faça o login para continuar', NULL),
(216, 'Web', 'Phone_Number', 'Phone Number', 'رقم الهاتف', 'telefoonnummer', 'Número de telefone', NULL),
(217, 'Web', 'first__name', 'First  name', 'الاسم الاول', 'Voornaam', 'Primeiro nome', NULL),
(218, 'Web', 'mobile_number', 'Mobile number', 'رقم الهاتف المحمول', 'số điện thoại di động', 'Número de celular', NULL),
(219, 'Web', 'please_Enter_First_Name', 'Please Enter First Name', 'الرجاء إدخال الاسم الأول', 'Vui lòng nhập tên', 'Digite o primeiro nome', NULL),
(220, 'Web', 'please_Enter_Email', 'Please Enter Email', 'الرجاء إدخال البريد الإلكتروني', 'Vui lòng điền email', 'Digite e-mail', NULL),
(221, 'Web', 'please_Enter_Password', 'Please Enter Password', 'الرجاء إدخال كلمة المرور', 'Gelieve Wachtwoord invoeren', 'Digite a senha', NULL),
(222, 'Web', 'please_Enter_Phone_Code', 'Please Enter Phone Code', 'الرجاء إدخال رمز الهاتف', 'Xin vui lòng nhập Mã Điện thoại', 'Digite o código do telefone', NULL),
(223, 'Web', 'please_Enter_Phone_Number', 'Please Enter Phone Number', 'الرجاء إدخال رقم الهاتف', 'Gelieve Voer telefoonnummer', 'Digite o número de telefone', NULL),
(224, 'Web', 'Password_must_be_atleast_8_characters', 'Password must be atleast 8 characters', 'يجب أن تكون كلمة المرور 8 أحرف على الأقل', 'Mật khẩu phải có ít nhất 8 ký tự', 'A senha deve conter pelo menos 8 caracteres', NULL),
(225, 'Web', 'please_Enter_Confirm_Password', 'Please Enter Confirm Password', 'الرجاء إدخال تأكيد كلمة المرور', 'Hãy Nhập lại mật khẩu', 'Digite Confirmar Senha', NULL),
(226, 'Web', 'Confirm_Password_is_not_same_as_password', 'Confirm Password is not same as password', 'تأكيد كلمة المرور ليست نفس كلمة المرور', 'Bevestig Wachtwoord is niet hetzelfde als wachtwoord', 'Confirmar senha não é igual à senha', NULL),
(227, 'Web', 'Minimum_8_digits', 'Minimum 8 digits', 'الحد الأدنى 8 أرقام', 'Minimaal 8 cijfers', 'Mínimo de 8 dígitos', NULL),
(228, 'Web', 'Maximum_11_digits', 'Maximum 11 digits', 'الحد الأقصى 11 رقما', 'Tối đa 11 chữ số', 'Máximo de 11 dígitos', NULL),
(229, 'Web', 'Lang_Key', 'Lang Key', 'لانغ كي', 'Key Lang', 'Lang Key', NULL),
(230, 'Web', 'test_phrase', 'Test Phrase', 'اختبار العبارة', 'Phrase-test', 'Frase de teste', NULL),
(231, 'Web', 'add_phrases', 'Add Phrases', 'إضافة عبارات', 'Voeg zinnen toe', 'Adicionar frases', NULL),
(232, 'Web', 'please_enter_language_key_in_english', 'Please enter language key in english', 'الرجاء إدخال مفتاح اللغة باللغة الإنجليزية', 'Vui lòng nhập ngôn ngữ quan trọng trong Inglés', 'Digite a chave de idioma em inglês', NULL),
(233, 'Web', 'Update_Phrase', 'Update Phrase', 'تحديث العبارة', 'Phrase bijwerken', 'Atualizar frase', NULL),
(234, 'Web', 'View_Phrase_Details', 'View Phrase Details', 'عرض تفاصيل العبارة', 'Xem chi tiết Cụm từ', 'Exibir detalhes de frases', NULL),
(235, 'Web', 'App_Settings', 'App Settings', 'إعدادات التطبيقات', 'App instellingen', 'Configurações do aplicativo', NULL),
(236, 'Web', 'Paypal_Settings', 'Paypal Settings', 'إعدادات باي بال', 'Cài đặt Paypal', 'Configurações do Paypal', NULL),
(237, 'Web', 'SMS_Settings', 'SMS Settings', 'إعدادات سمز', 'SMS-instellingen', 'Configurações do SMS', NULL),
(238, 'Web', 'SMS_Templates', 'SMS Templates', 'قوالب سمز', 'SMS Templates', 'Modelos SMS', NULL),
(239, 'Web', 'success_phrases_updated_successfuly', 'Success phrases updated successfuly', 'تم تحديث عبارات النجاح بنجاح', 'Thành công cụm từ được cập nhật thành công', 'Frases de sucesso atualizadas com sucesso', NULL),
(241, 'Web', 'Update_User', 'Update User', 'تحديث المستخدم', 'cập nhật tài khoản', 'Atualizar Usuário', NULL),
(242, 'Web', 'welcome_to_Admin_Dashboard', 'Welcome to Admin Dashboard', 'مرحبا بك في لوحة تحكم المشرف', 'Chào mừng bạn đến Bảng điều khiển quản trị', 'Bem-vindo ao painel de administração', NULL),
(244, 'Web', 'Change_Password', 'Change Password', 'تغيير كلمة السر', 'Verander wachtwoord', 'Mudar senha', NULL),
(245, 'Web', 'Current_Password', 'Current Password', 'كلمة السر الحالية', 'huidig wachtwoord', 'senha atual', NULL),
(246, 'Web', 'New_Password', 'New Password', 'كلمة السر الجديدة', 'nieuw wachtwoord', 'Nova senha', NULL),
(247, 'Web', 'password_changed_successfully', 'Password changed successfully', 'تم تغيير الرقم السري بنجاح', 'Wachtwoord met succes gewijzigd', 'Senha alterada com sucesso', NULL),
(248, 'Web', 'List_of_All_Users', 'List of All Users', 'قائمة بجميع المستخدمين', 'Lijst van alle gebruikers', 'Lista de todos os usuários', NULL),
(252, 'Web', 'List_of_Users', 'List of Users', 'قائمة المستخدمين', 'Danh sách người dùng', 'Lista de usuários', NULL),
(253, 'Web', 'User_Group', 'User Group', 'مجموعة المستخدمين', 'người sử dụng Nhóm', 'Grupo de usuários', NULL),
(254, 'Web', 'Phrase_For', 'Phrase For', 'عبارة عن', 'voor de uitdrukking', 'Frase para', NULL),
(255, 'App', 'App', 'App', 'التطبيق', 'App', 'Aplicativo', NULL),
(256, 'App', 'Web', 'Web', 'شبكة', 'web', 'Rede', NULL),
(262, 'Web', 'Update_App_Settings', 'Update App Settings', 'تحديث إعدادات التطبيق', 'App Update-instellingen', 'Atualizar configurações da aplicação', NULL),
(263, 'Web', 'Site_Title', 'Site Title', 'عنوان الموقع', 'trang web Tiêu đề', 'titulo do site', NULL),
(264, 'Web', 'Site_Name', 'Site Name', 'اسم الموقع', 'site Naam', 'Nome do site', NULL),
(265, 'Web', 'country', 'Country', 'بلد', 'land', 'País', NULL),
(266, 'Web', 'PIN_Code', 'Pin code', 'رمز بين', 'pincode', 'Código PIN', NULL),
(267, 'Web', 'land_line', 'Land line', 'هاتف ارضي', 'Vaste lijn', 'Linha terrestre', NULL),
(268, 'Web', 'fax', 'Fax', 'فاكس', 'Fax', 'Fax', NULL),
(269, 'Web', 'Portal_Email', 'Portal Email', 'بوابة البريد الإلكتروني', 'Portal Email', 'Email do portal', NULL),
(270, 'Web', 'Site_Language', 'Site Language', 'لغة الموقع', 'site inloggen Taal', 'Idioma do site', NULL),
(271, 'Web', 'Design_By', 'Design By', 'تصميم بواسطة', 'Ontworpen door', 'Design By', NULL),
(272, 'Web', 'Rights_reserved_content', 'Rights reserved content', 'الحقوق محفوظة المحتوى', ' Rechten gereserveerde inhoud (rechten voorbehouden inhoud)', 'Conteúdo reservado aos direitos', NULL),
(273, 'Web', 'currency', 'Currency', 'دقة', 'Valuta', 'Moeda', NULL),
(274, 'Web', 'Currency_Symbol', 'Currency Symbol', 'رمز العملة', ' Symbool van munteenheid Suggest an edit', 'Símbolo monetário', NULL),
(275, 'Web', 'latitude', 'Latitude', 'خط العرض', 'breedte', 'Latitude', NULL),
(276, 'Web', 'longitude', 'Longitude', 'خط الطول', 'kinh độ', 'Longitude', NULL),
(277, 'Web', 'Ios_Url', 'Ios Url', 'عنوان البريد الإلكتروني', 'ios Url', 'ios Url', NULL),
(278, 'Web', 'Android_Url', 'Android Url', 'عنوان ورل ل أندرويد', 'Android Url', 'Url Android', NULL),
(279, 'Web', 'Facebook_Api', 'Facebook Api', 'الفيسبوك أبي', 'Facebook Api', 'Facebook Api', NULL),
(280, 'Web', 'Google_Api', 'Google Api', 'غوغل أبي', 'Google API', 'Google Api', NULL),
(281, 'Web', 'SMS_Notifications', 'SMS Notifications', 'سمز الإخطارات', 'Sms-meldingen', 'Notificações SMS', NULL),
(282, 'Web', 'on', 'On', 'على', 'op', 'Em', NULL),
(283, 'Web', 'off', 'Off', 'إيقاف', 'af', 'Fora', NULL),
(284, 'Web', 'Push_Notifications', 'Push Notifications', 'دفع الإخطارات', 'push-meldingen', 'Notificações via push', NULL),
(285, 'Web', 'Site_Logo', 'Site Logo', 'شعار الموقع', 'website Logo', 'Logotipo do site', NULL),
(286, 'Web', 'Add_Etemplates', 'Add Etemplates', 'إضافة قوالب', 'Sjablonen toevoegen', 'Adicionar Templates', NULL),
(287, 'Web', 'View_Etemplates', 'View Etemplates', 'عرض القوالب', 'Bekijk Templates', 'Ver etemplate', NULL),
(288, 'Web', 'Add_Email_Templates', 'Add Email Templates', 'إضافة قوالب البريد الإلكتروني', 'Voeg e-mail sjablonen toe', 'Adicionar modelos de E-mail', NULL),
(289, 'Web', 'View_Email_Templates', 'View Email Templates', 'عرض قوالب البريد الإلكتروني', 'Xem Email Templates', 'Visualizar modelos de e-mail', NULL),
(290, 'Web', 'Country_Code', 'Country Code', 'الرقم الدولي', 'Landcode', 'Código do país', NULL),
(291, 'Web', 'Please_upload_only_jpg_or_png_or_svg_images', 'Please upload only jpg or png or svg images', 'الرجاء تحميل صور جبغ أو ينغ أو سفغ فقط', 'Upload alleen jpg of png of SVG-afbeeldingen', 'Carregue apenas imagens jpg ou png ou svg', NULL),
(292, 'Web', 'please_enter_Site_Title', 'Please enter Site Title', 'الرجاء إدخال عنوان الموقع', 'Vui lòng nhập Site Title', 'Digite o título do site', NULL),
(293, 'Web', 'please_enter_Site_Name', 'Please enter Site Name', 'الرجاء إدخال اسم الموقع', 'Vul Sitenaam', 'Digite o Nome do Site', NULL),
(294, 'Web', 'please_enter_Address', 'Please enter Address', 'الرجاء إدخال العنوان', 'Vul Adres', 'Digite o endereço', NULL),
(295, 'Web', 'please_enter_Country', 'Please enter Country', 'الرجاء إدخال البلد', 'Vul Land', 'Digite o país', NULL),
(296, 'Web', 'please_enter_Country_Code', 'Please enter Country Code', 'الرجاء إدخال رمز البلد', 'Vui lòng nhập mã quốc gia', 'Digite o Código do País', NULL),
(297, 'Web', 'please_enter_Pincode', 'Please enter Pincode', 'الرجاء إدخال الرمز السري', 'Vui lòng nhập mã pin', 'Digite Pincode', NULL),
(298, 'Web', 'please_enter_Phone', 'Please enter Phone', 'الرجاء إدخال رقم الهاتف', 'Vul Phone', 'Digite o telefone', NULL),
(299, 'Web', 'please_enter_Landline', 'Please enter Landline', 'الرجاء إدخال خط أرضي', 'Vul Vast', 'Digite o telefone fixo', NULL),
(300, 'Web', 'please_enter_Fax', 'Please enter Fax', 'الرجاء إدخال الفاكس', 'Vul Fax', 'Digite Fax', NULL),
(301, 'Web', 'please_Enter_Portal_Email', 'Please Enter Portal Email', 'الرجاء إدخال البريد الإلكتروني المدخل', 'Xin vui lòng nhập Email Portal', 'Digite o e-mail do portal', NULL),
(302, 'Web', 'please_select_Site_Language', 'Please select Site Language', 'الرجاء تحديد لغة الموقع', 'Vui lòng chọn Ngôn ngữ', 'Selecione Idioma do site', NULL),
(303, 'Web', 'please_enter_Design_by', 'Please enter Design by', 'الرجاء إدخال التصميم حسب', 'Vul Design by', 'Digite Design by', NULL),
(304, 'Web', 'please_enter_Rights_reserved_content', 'Please enter Rights reserved content', 'الرجاء إدخال المحتوى المحمي بحقوق الطبع والنشر', 'Rights reserved Vui lòng nhập nội dung', 'Insira conteúdo reservado dos direitos', NULL),
(305, 'Web', 'please_select_Currency', 'Please select Currency', 'يرجى تحديد العملة', 'Selecteer Valuta', 'Selecione Moeda', NULL),
(306, 'Web', 'please_enter_Currency_Symbol', 'Please enter Currency Symbol', 'الرجاء إدخال رمز العملة', 'Vul Valutasymbool', 'Por favor, insira Símbolo de moeda', NULL),
(307, 'Web', 'please_enter_Latitude', 'Please enter Latitude', 'الرجاء إدخال لاتيتيود', 'Vul Latitude', 'Digite Latitude', NULL),
(308, 'Web', 'please_enter_Longitude', 'Please enter Longitude', 'الرجاء إدخال خط الطول', 'Vui lòng nhập Longitude', 'Digite Longitude', NULL),
(309, 'Web', 'please_enter_Ios_Url', 'Please enter Ios Url', 'الرجاء إدخال عنوان ورل ل يوس', 'Vui lòng nhập Ios Url', 'Digite Ios Url', NULL),
(310, 'Web', 'please_enter_Android_Url', 'Please enter Android Url', 'الرجاء إدخال عنوان ورل ل أندرويد', 'Vui lòng nhập Android Url', 'Digite o URL do Android', NULL),
(312, 'Web', 'Template_Subject', 'Template Subject', 'قالب الموضوع', 'onderwerp template', 'Assunto do modelo', NULL),
(313, 'Web', 'From_Eamil', 'From Eamil', 'من البريد الإلكترونى', 'Van email', 'Do e-mail', NULL),
(314, 'Web', 'Template_Status', 'Template Status', 'حالة النموذج', 'Tình trạng mẫu', 'Status do modelo', NULL),
(315, 'Web', 'Template_Content', 'Template Content', 'محتوى النموذج', 'Nội dung mẫu', 'Conteúdo do modelo', NULL),
(316, 'Web', 'From_Name', 'From Name', 'من الاسم', 'Van naam', 'De nome', NULL),
(317, 'Web', 'Update_Email_Templates', 'Update Email Templates', 'تحديث قوالب البريد الإلكتروني', 'Bijwerken Email Templates', 'Atualizar modelos de e-mail', NULL),
(318, 'Web', 'please_Enter_Template_Key', 'Please Enter Template Key', 'الرجاء إدخال مفتاح القالب', 'Xin mời nhập Template chính', 'Digite a chave do modelo', NULL),
(319, 'Web', 'please_Enter_Template_Content', 'Please Enter Template Content', 'الرجاء إدخال محتوى القالب', 'Vul aub Sjabooninhoud', 'Por favor, insira o conteúdo do modelo', NULL),
(320, 'Web', 'please_Enter_From_Email', 'Please Enter From Email', 'الرجاء إدخال من البريد الإلكتروني', 'Gelieve invoeren Vanaf Email', 'Digite de Email', NULL),
(321, 'Web', 'please_Enter_From_Name', 'Please Enter From Name', 'الرجاء إدخال من الاسم', 'Xin mời nhập Tên Từ', 'Digite do nome', NULL),
(322, 'Web', 'Please_Enter_Valid_Email', 'Please Enter Valid Email', 'الرجاء إدخال بريد إلكتروني صحيح', 'Vul een geldig email', 'Por favor introduza um email válido', NULL),
(323, 'Web', 'Email_Template_Details', 'Email Template Details', 'تفاصيل قالب البريد الإلكتروني', 'E-mail sjabloon details', 'Detalhes do modelo de e-mail', NULL),
(324, 'Web', 'Template_created', 'Template created', 'تم إنشاء النموذج', 'sjabloon gemaakt', 'Modelo criado', NULL),
(325, 'Web', 'Template_Updated', 'Template Updated', 'تم تحديث النموذج', 'Cập nhật mẫu', 'Modelo Atualizado', NULL),
(326, 'Web', 'change_language', 'Change Language', 'غير اللغة', 'Taal wijzigen', 'Mudar idioma', NULL),
(327, 'Web', 'From_Email', 'From Email', 'من البريد الإلكترونى', 'Van email', 'Do e-mail', NULL),
(328, 'Web', 'Language_successfully_changed_to', 'Language successfully changed to', 'تم تغيير اللغة بنجاح', 'Ngôn ngữ thay đổi thành công để', 'Idioma mudado com sucesso para', NULL),
(329, 'Web', 'TextArea', 'TextArea', 'TEXTAREA', 'TextArea', 'TextArea', NULL),
(330, 'Web', 'Add_SMS_Templates', 'Add SMS Templates', 'إضافة قوالب سمز', 'Voeg sms sjablonen toe', 'Adicionar modelos de SMS', NULL),
(331, 'Web', 'View_SMS_Templates', 'View SMS Templates', 'عرض قوالب سمز', 'Xem SMS Templates', 'Exibir modelos do SMS', NULL),
(332, 'Web', 'Update_Email_Settings', 'Update Email Settings', 'تحديث إعدادات البريد الإلكتروني', 'Cài đặt bản cập nhật Email', 'Atualizar Configurações de Email', NULL),
(333, 'Web', 'Web_Mail', 'Web Mail', 'بريد الويب', 'thư web', 'Correio eletrónico', NULL),
(334, 'Web', 'mandrill', 'Mandrill', 'الميمون قرد', 'noordafrikaanse baviaan', 'Mandrill', NULL),
(335, 'Web', 'Host', 'Host', 'مضيف', 'gastheer', 'Hospedeiro', NULL),
(336, 'Web', 'Api_Key', 'Api Key', 'مفتاح API', 'API sleutel', 'Chave API', NULL),
(337, 'Web', 'subject', 'Subject', 'موضوع', 'vấn đề', 'Sujeito', NULL),
(338, 'Web', 'SMS_Template', 'SMS Template', 'قالب سمز', 'Mẫu SMS', 'Modelo de SMS', NULL),
(339, 'Web', 'Port', 'Port', 'ميناء', 'poort', 'Porta', NULL),
(340, 'Web', 'Please_enter_Api_Key', 'Please enter Api Key', 'الرجاء إدخال مفتاح أبي', 'Vul Api Key', 'Digite a chave Api', NULL),
(341, 'Web', 'please_enter_Host', 'Please enter Host', 'الرجاء إدخال المضيف', 'Vul Host', 'Digite Anfitrião', NULL),
(342, 'Web', 'please_enter_Port', 'Please enter Port', 'الرجاء إدخال المنفذ', 'Vul Port', 'Entre na porta', NULL),
(343, 'Web', 'SMS_Template_Details', 'SMS Template Details', 'تفاصيل قالب سمز', 'SMS Chi tiết Mẫu', 'Detalhes do modelo de SMS', NULL),
(344, 'Web', 'sms_template_id', 'Sms template id', 'سمز، عارضة، إد', 'SMS template id', 'ID do modelo Sms', NULL),
(345, 'Web', 'Update_SMS_Templates', 'Update SMS Templates', 'تحديث قوالب سمز', 'SMS Sjablonen bijwerken', 'Atualizar modelos SMS', NULL),
(346, 'Web', 'Mail_Config', 'Mail Config', 'تكوين البريد', 'mailinstellingen', 'Configuração de correio', NULL),
(347, 'Web', 'please_Enter_Subject', 'Please Enter Subject', 'الرجاء إدخال الموضوع', 'Xin mời nhập Chủ đề', 'Por favor insira o assunto', NULL),
(348, 'Web', 'please_Enter_SMS_Template', 'Please Enter SMS Template', 'الرجاء إدخال قالب الرسائل القصيرة سمز', 'Vul SMS-sjabloon', 'Por favor, indique modelos SMS', NULL),
(349, 'Web', 'Password_must_be_atleast_6_characters', 'Password must be atleast 6 characters', 'يجب أن تكون كلمة المرور على الأقل 6 أحرف', 'Wachtwoord moet minimaal 6 tekens lang zijn', 'A senha deve ter pelo menos 6 caracteres', NULL),
(350, 'Web', 'Update_Paypal_Settings', 'Update Paypal Settings', 'تحديث إعدادات باي بال', 'Cập nhật Cài đặt Paypal', 'Atualizar Configurações do Paypal', NULL),
(352, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production', 'بايبال الإنتاج البيئي', 'PayPal productieomgeving', 'Produção de ambiente PayPal', NULL),
(353, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox', 'بايبال البيئة رمل', 'PayPal Sandbox Môi trường', 'Caixa de areia Environment Environment', NULL),
(354, 'Web', 'merchantName', 'MerchantName', 'MERCHANTNAME', 'MERCHANTNAME', 'MerchantName', NULL),
(355, 'Web', 'merchant_PrivacyPolicy_URL', 'Merchant PrivacyPolicy URL', 'بريفاسيبيسيتي ورل', 'CHÍNH SÁCH BẢO MẬT URL Merchant', 'URL da Política de Privacidade do Comerciante', NULL),
(356, 'Web', 'merchant_UserAgreement_URL', 'Merchant UserAgreement URL', 'عنوان ورل المستخدم الخاص بالتاجر', 'URL Merchant UserAgreement', 'URL do Acordo de Usuário do Comerciante', NULL),
(357, 'Web', 'account_type', 'Account Type', 'نوع الحساب', 'account type', 'Tipo de conta', NULL),
(358, 'Web', 'Please_Enter_PayPal_Environment_Production', 'Please Enter PayPal Environment Production', 'الرجاء إدخال بايبال الإنتاج البيئي', 'PayPal Enter productieomgeving', 'Digite PayPal Environment Production', NULL),
(359, 'Web', 'Please_Enter_PayPal_Environment_Sandbox', 'Please Enter PayPal Environment Sandbox', 'الرجاء إدخال بايبال ساندبوكس إنفيرونمنت ساندبوكس', 'Vui lòng nhập PayPal Sandbox Môi trường', 'Digite o ambiente de pagamento do PayPal', NULL),
(360, 'Web', 'Please_Enter_Merchant_Name', 'Please Enter Merchant Name', 'الرجاء إدخال اسم التاجر', 'Vul aub Merchant Name', 'Digite o nome do comerciante', NULL),
(361, 'Web', 'Please_Enter_Merchant_PrivacyPolicy_URL', 'Please Enter Merchant PrivacyPolicy URL', 'الرجاء إدخال خصوصية التاجرخريطة عنوان ورل', 'Xin mời nhập Merchant URL CHÍNH SÁCH BẢO MẬT', 'Digite o URL da Política de Privacidade do Comerciante', NULL),
(362, 'Web', 'Please_Enter_Merchant_UserAgreement_URL', 'Please Enter Merchant UserAgreement URL', 'الرجاء إدخال عنوان ورل لمستخدم التاجر', 'Vul Merchant URL gebruikersovereenkomst', 'Insira URL do Acordo de Usuário do Comerciante', NULL),
(363, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production', 'بايبال الإنتاج البيئي', 'PayPal Môi trường sản xuất', 'Produção de ambiente PayPal', NULL),
(364, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox', 'بايبال البيئة رمل', 'PayPal Sandbox Môi trường', 'Caixa de areia Environment Environment', NULL),
(365, 'Web', 'merchant_Name', 'Merchant Name', 'اسم التاجر', 'Tên Merchant', 'Nome do comerciante', NULL),
(366, 'Web', 'merchant_Privacy_Policy_URL', 'Merchant Privacy Policy URL', 'عنوان ورل لسياسة خصوصية التاجر', 'URL Merchant Chính sách bảo mật', 'URL da Política de Privacidade do Comerciante', NULL),
(367, 'Web', 'merchant_User_Agreement_URL', 'Merchant User Agreement URL', 'عنوان ورل لاتفاقية مستخدم التاجر', 'URL Merchant gebruikersovereenkomst', 'URL do contrato de usuário do comerciante', NULL),
(368, 'Web', 'Sms_Gateways', 'Sms Gateways', 'بوابات الرسائل القصيرة', 'Cổng sms', 'Gateways Sms', NULL),
(369, 'Web', 'Sms_Gateway_Name', 'Sms Gateway Name', 'اسم بوابة الرسائل القصيرة', 'SMS Gateway Naam', 'Sms Gateway Name', NULL),
(370, 'Web', 'is_Default', 'Is Default', 'الافتراضي', 'is Default', 'É padrão', NULL),
(371, 'Web', 'Make_Default', 'Make Default', 'جعل الافتراضي', 'Hãy Mặc định', 'Tornar padrão', NULL),
(372, 'Web', 'Info_Updated_Successfully', 'Info Updated Successfully', 'تم تحديث المعلومات بنجاح', 'Info Bijgewerkt succesvol', 'Informações atualizadas com sucesso', NULL),
(373, 'Web', 'SMS_Gate_Ways', 'SMS Gate Ways', 'سمز بوابة الطرق', 'SMS Cổng Cách', 'SMS Gate Ways', NULL),
(374, 'Web', 'User_Name', 'User Name', 'اسم المستخدم', 'gebruikersnaam', 'Nome de usuário', NULL),
(375, 'Web', 'From_No', 'From No', 'من لا', 'Van nr', 'De não', NULL),
(376, 'Web', 'API_Id', 'API Id', 'معرف واجهة برمجة التطبيقات', 'API-id', 'ID da API', NULL),
(378, 'Web', 'you_are_not_authorized_to_perform_this_action', 'You are not authorized to perform this action', NULL, 'Punten om door iemand te verwijzen', 'Você não está autorizado a realizar esta ação', NULL),
(382, 'Web', 'Add_Pages', 'Add Pages', 'إضافة صفحات', 'Pagina\'s toevoegen', 'Adicionar páginas', NULL),
(383, 'Web', 'View_Pages', 'View Pages', 'عرض الصفحات', 'Pagina\'s bekijken', 'Ver Páginas', NULL),
(384, 'Web', 'Page_Name', 'Page Name', 'اسم الصفحة', 'pagina naam', 'Nome da página', NULL),
(385, 'Web', 'Meta_Tag', 'Meta Tag', 'علامة متغيرة', 'Tag meta', 'Meta Tag', NULL),
(386, 'Web', 'Meta_Description', 'Meta Description', 'ميتا الوصف', 'meta Beschrijving', 'Meta Descrição', NULL),
(387, 'Web', 'Seo_Keywords', 'Seo Keywords', 'كلمات البحث سيو', 'Seo Trefwoorden', 'Seo Keywords', NULL),
(388, 'Web', 'please_Enter_Page_Name', 'Please Enter Page Name', 'الرجاء إدخال اسم الصفحة', 'Vui lòng nhập tên trang', 'Digite o nome da página', NULL),
(389, 'Web', 'please_Enter_Description', 'Please Enter Description', 'الرجاء إدخال الوصف', 'Xin mời nhập Mô tả', 'Digite Descrição', NULL),
(390, 'Web', 'account_information_successfully_updated', 'Account information successfully updated', 'تم تحديث معلومات الحساب بنجاح', 'Accountinformatie is succesvol bijgewerkt', 'Informações da conta atualizado com sucesso', NULL),
(391, 'Web', 'View_Page_Details', 'View Page Details', 'عرض تفاصيل الصفحة', 'Trang Xem chi tiết', 'Exibir detalhes da página', NULL),
(392, 'Web', 'Update_Pages', 'Update Pages', 'تحديث الصفحات', 'update Pages', 'Atualizar Páginas', NULL),
(397, 'Web', 'old_password_is_wrong', '##Old password is wrong##', 'كلمة المرور القديمة غير صحيحة', 'Mật khẩu cũ là sai', 'Senha antiga está errada', NULL),
(401, 'Web', 'Please_Select_Service', 'Please Select Service', 'الرجاء اختيار الخدمة', 'Vui lòng chọn Dịch vụ', 'Selecione Serviço', NULL),
(402, 'Web', 'service_id', 'Service id', 'معرف الخدمة', 'Dịch vụ id', 'ID de serviço', NULL),
(404, 'Web', 'No_Changes_Done', 'No Changes Done', 'لم يتم إجراء أي تغييرات', 'Không thay đổi Done', 'Sem alterações feitas', NULL),
(405, 'Web', 'Reset_your_Password', 'Reset your Password', 'اعد ضبط كلمه السر', 'Đặt lại mật khẩu', 'Redefinir sua senha', NULL),
(407, 'Web', 'appartments', 'Appartments', 'شقق سكنية', 'Apartments', 'Apartamentos', NULL),
(408, 'Web', 'Account_Successfully_Created_and_Activation_Email_Sent', 'Account Successfully Created and Activation Email Sent', 'تم إنشاء الحساب وتنشيطه تم إرسال الرسالة الإلكترونية بنجاح', 'Account succesvol aangemaakt en activatie-e-mail verzonden', 'Conta com sucesso Criado e ativação E-mail enviado', NULL),
(409, 'Web', 'your_account_activated_successfully_please_login', 'Your account activated successfully please login', NULL, 'Tài khoản của bạn có thể đăng nhập kích hoạt thành công', 'Sua conta foi ativada com sucesso, faça o login', NULL),
(410, 'Web', 'Url_for_Design_By', 'Url for Design By', 'عنوان ورل للتصميم من قبل', 'URL voor Design By', 'Url for Design By', NULL),
(411, 'Web', 'End_Users', 'End Users', 'المستخدمين النهائيين', 'Eindgebruikers', 'Usuários finais', NULL),
(412, 'Web', 'Total_End_Users', 'Total End Users', 'إجمالي المستخدمين النهائيين', 'Totaal Eindgebruikers', 'Total de usuários finais', NULL),
(413, 'Web', 'Total_Users', 'Total Users', 'إجمالي المستخدمين', 'Tổng số thành viên', 'Total de usuários', NULL),
(414, 'Web', 'Web_Phrases', 'Web Phrases', 'عبارات الويب', 'web zinnen', 'Frases da Web', NULL),
(415, 'Web', 'App_Phrases', 'App Phrases', 'عبارات التطبيق', 'Appfrases', 'Frases de aplicação', NULL),
(416, 'Web', 'New_Users_Information', 'New Users Information', 'معلومات المستخدمين الجدد', 'Thông tin Người dùng mới', 'Nova informação dos usuários', NULL),
(417, 'Web', 'ago', 'Ago', 'منذ', 'Geleden', 'Atrás', NULL),
(418, 'Web', 'View_All', 'View All', 'عرض الكل', 'Xem tất cả', 'Ver tudo', NULL),
(421, 'Web', 'one_signal_server_api_key', 'One signal server api key', 'مفتاح أبي خادم إشارة واحدة', 'Eén server api sleutel signaal', 'Uma chave api do servidor de sinal', NULL),
(422, 'Web', 'one_signal_app_id', 'One signal app id', 'واحد معرف التطبيق إشارة', 'd ứng dụng một tín hiệu', 'Um id de aplicativo de sinal', NULL),
(423, 'Web', 'one_signal_server_api_key', 'One signal server api key', 'مفتاح أبي خادم إشارة واحدة', 'Một máy chủ tín hiệu chủ chốt api', 'Uma chave api do servidor de sinal', NULL),
(424, 'Web', 'one_signal_app_id', 'One signal app id', 'واحد معرف التطبيق إشارة', 'Een signaal app id', 'Um id de aplicativo de sinal', NULL),
(427, 'App', 'Invalid_Operation', 'Invalid Operation', 'عملية غير صالحة', 'ongeldige Operation', 'Operação inválida', NULL),
(428, 'App', 'loginSuccess', 'Login Success', 'النجاح في تسجيل الدخول', 'Đăng nhập thành công', 'Login Sucesso', NULL),
(429, 'Web', 'Total_Appartments', 'Total Appartments', 'إجمالي الشقق', 'Totaal Apartments', 'Apartamentos totais', NULL),
(432, 'Web', 'please_Enter_Street_Name', 'Please Enter Street Name', 'الرجاء إدخال اسم الشارع', 'Vul aub Straatnaam', 'Digite o nome da rua', NULL),
(434, 'Web', 'MSG_NO_ENTRY', 'MSG NO ENTRY', 'مسغ نو إنتري', 'MSG NO ENTRY', 'MSG NENHUM ENTRADA', NULL),
(435, 'Web', 'Buy_now', 'Buy now', 'اشتري الآن', 'Koop nu', 'compre', NULL),
(436, 'Web', 'id', 'Id', 'هوية شخصية', 'Id', 'Identidade', NULL),
(437, 'Web', 'PayPal_Email', 'PayPal Email', 'بريد باي بال', 'PayPal E-mail', 'PayPal e-mail', NULL),
(438, 'Web', 'Please_Enter_Paypal_Email', 'Please Enter Paypal Email', 'الرجاء إدخال بايبال البريد الإلكتروني', 'Xin mời nhập Paypal Email', 'Digite o email de Paypal', NULL),
(439, 'Web', 'You_have_cancelled_your_transaction', 'You have cancelled your transaction', NULL, 'Punten om door iemand te verwijzen', 'Você cancelou sua transação', NULL),
(440, 'Web', 'Payment_success_Transaction_Id_', 'Payment success Transaction Id ', 'نجاح الدفع معرف المعاملة', 'Giao dịch thanh toán Id thành công', 'Senha de pagamento de identificação de transação', NULL),
(441, 'Web', 'Wrong_operation', 'Wrong operation', 'عملية خاطئة', 'hoạt động sai', 'Operação errada', NULL),
(442, 'Web', 'My_Susbscriptions', 'My Susbscriptions', 'اشتراكاتي', 'mijn abonnementen', 'Minhas inscrições', NULL),
(443, 'Web', 'My_Subscriptions', 'My Subscriptions', 'اشتراكاتي', 'Subscriptions tôi', 'Minhas inscrições', NULL),
(445, 'Web', 'Amount_Paid', 'Amount Paid', 'المبلغ المدفوع', 'Betaald bedrag', 'Quantia paga', NULL),
(447, 'Web', 'subscribe_date', 'Subscribe date', 'تاريخ الاشتراك', 'Abonneer je date', 'Assinar a data', NULL),
(449, 'App', 'registration', 'Registration', 'التسجيل', 'đăng ký doanh nghiệp', 'Cadastro', NULL),
(450, 'App', 'registration_completed_successfully_OTP_sent_to_mobile', 'Registration completed successfully OTP sent to mobile', 'اكتمل التسجيل بنجاح أوتب المرسلة إلى الجوال', 'Đăng ký doanh nghiệp hoàn thành OTP gửi đến điện thoại di động', 'Registro concluído com sucesso OTP enviado para celular', NULL),
(451, 'App', 'registration_completed_successfully_activation_email_sent', 'Registration completed successfully activation email sent', 'تم الانتهاء من التسجيل بنجاح البريد الإلكتروني التنشيط المرسلة', 'Registratie succesvol afgerond activering e-mail verzonden', 'O registro completou o e-mail de ativação com sucesso enviado', NULL),
(452, 'Web', 'please_login_to_access_this_page', 'Please login to access this page', 'الرجاء تسجيل الدخول للوصول إلى هذه الصفحة', 'Log in om deze pagina', 'Faça login para acessar esta página', NULL),
(453, 'Web', 'category_name', 'Category name', 'اسم التصنيف', 'Categorie naam', 'Nome da Categoria', NULL),
(454, 'Web', 'please_enter_Category_Name', 'Please enter Category Name', 'الرجاء إدخال اسم الفئة', 'Vui lòng nhập Category Name', 'Digite Nome da categoria', NULL),
(455, 'Web', 'phrases', 'Phrases', 'العبارات', 'cụm từ', 'Frases', NULL),
(456, 'Web', 'view_menu', 'View Menu', 'عرض القائمة', 'View Menu', 'Exibir Menu', NULL),
(457, 'Web', 'menu_name', 'Menu Name', 'اسم القائمة', 'menu Naam', 'Nome do menu', NULL),
(458, 'Web', 'punch_line', 'Punch Line', 'لكمة الخط', 'cú đấm Dòng', 'Punch Line', NULL),
(459, 'Web', 'menu_image', 'Menu Image', 'صورة القائمة', 'Menu Image', 'menu de imagem', NULL),
(460, 'Web', 'view_items', 'View Items', 'عرض العناصر', 'items weergeven', 'Exibir Itens', NULL),
(461, 'Web', 'item_name', 'Item Name', 'اسم العنصر', 'item wilt', 'Nome do item', NULL),
(462, 'Web', 'item_cost', 'Item Cost', 'تكلفة البند', 'onderwerp Toegangsprijs', 'Custo do item', NULL),
(463, 'Web', 'item_type', 'Item Type', 'نوع العنصر', 'voorwerp Type', 'Tipo de item', NULL),
(464, 'Web', 'item_image', 'Item Image', 'صورة العنصر', 'punt Afbeelding', 'Imagem do item', NULL),
(465, 'Web', 'dashboard', 'Dashboard', 'لوحة القيادة', 'bảng điều khiển', 'painel de controle', NULL),
(466, 'Web', 'menu', 'Menu', 'قائمة طعام', 'thực đơn', 'Cardápio', NULL),
(467, 'Web', 'items', 'Items', 'العناصر', 'items', 'Unid', NULL),
(468, 'Web', 'addon_name', 'Addon Name', 'اسم إضافة', 'Addon Naam', 'Nome addon', NULL),
(469, 'Web', 'addon_image', 'Addon Image', 'صورة إضافة', 'Addon Image', 'addon imagem', NULL),
(470, 'Web', 'view_addons', 'View Addons', 'مشاهدة ملف أدونس', 'Bekijk Addons', 'Ver Addons', NULL),
(471, 'Web', 'addons', 'Add-ons', 'إضافات', 'Add-ons', 'Add-ons', NULL),
(472, 'Web', 'view_options', 'View Options', 'عرض الخيارات', 'Xem Tùy chọn', 'Opções de exibição', NULL),
(473, 'Web', 'name', 'Name', 'اسم', 'tên', 'Nome', NULL),
(474, 'Web', 'options', 'Options', 'خيارات', 'tùy chọn', 'Opções', NULL),
(475, 'Web', 'view_offers', 'View Offers', 'عرض العروض', 'Bekijk aanbiedingen', 'Ver ofertas', NULL),
(476, 'Web', 'offer_name', 'Offer Name', 'اسم العرض', 'offerte', 'Nome da oferta', NULL),
(477, 'Web', 'offer_cost', 'Offer Cost', 'تكلفة العرض', 'Chi phí phục vụ', 'Cotação da oferta', NULL),
(478, 'Web', 'offer_start_date', 'Offer Start Date', 'تاريخ بدء العرض', 'Aanbieding Startdatum', 'Data de Início da Oferta', NULL),
(479, 'Web', 'offer_valid_date', 'Offer Valid Date', 'تاريخ العرض صالح', 'Aanbieding geldig Date', 'Data da Oferta Válida', NULL),
(480, 'Web', 'no_of_items', 'No Of Items', 'أي من العناصر', 'Không Trong mục', 'Sem Itens', NULL),
(481, 'Web', 'serve_no_of_people', 'Serve No Of People', 'خدمة الناس', 'Phục vụ Không người', 'Não sirva de pessoas', NULL),
(482, 'Web', 'offers', 'Offers', 'عروض', 'aanbiedingen', 'Ofertas', NULL),
(483, 'Web', 'view_cities', 'View Cities', 'مشاهدة المدن', 'Bekijk Cities', 'Visualizar cidades', NULL),
(484, 'Web', 'city_name', 'City Name', 'اسم المدينة', 'Tên thành phố', 'Nome da Cidade', NULL),
(485, 'Web', 'view_service_provide_locations', 'View Service Provide Locations', 'عرض الخدمة توفير المواقع', 'Bekijk Dienst Zorg Locations', 'Ver serviço fornecer locais', NULL),
(486, 'Web', 'locality', 'Locality', 'مكان', 'nơi', 'Localidade', NULL),
(487, 'Web', 'languages', 'Languages', 'اللغات', 'Ngôn ngữ', 'línguas', NULL),
(488, 'Web', 'location_master', 'Location Master', 'الموقع ماستر', 'Location Thạc sĩ', 'Local Mestre', NULL),
(489, 'Web', 'cities', 'Cities', 'مدن', 'Các thành phố', 'Cidades', NULL),
(490, 'Web', 'service_provide_locations', 'Service Provide Locations', 'خدمة توفير المواقع', 'Cung cấp Dịch vụ Địa điểm', 'Serviço Fornecer Locais', NULL),
(491, 'Web', 'contact_email', 'Contact Email', 'تواصل بالبريد الاكتروني', 'contact email', 'email de contato', NULL),
(492, 'Web', 'restaurant_timings', 'Restaurant Timings', 'مطعم التوقيت', 'Thời gian nhà hàng', 'Tempo de restaurante', NULL),
(493, 'Web', 'from', 'From', 'من عند', 'Van', 'A partir de', NULL),
(494, 'Web', 'to', 'To', 'إلى', 'naar', 'Para', NULL),
(495, 'Web', 'notifications', 'Notifications', 'إخطارات', 'meldingen', 'Notificações', NULL),
(496, 'Web', 'rights_reserved', 'Rights Reserved', 'الحقوق محفوظة', 'rechten Gereserveerd', 'Direitos reservados', NULL),
(497, 'Web', 'site_title_is_required', 'Site title is required', 'عنوان الموقع مطلوب', 'Site titel nodig', 'O título do site é obrigatório', NULL),
(498, 'Web', 'site_name_is_required', 'Site name is required', 'اسم الموقع مطلوب', 'Tên trang web được yêu cầu', 'O nome do site é necessário', NULL),
(499, 'Web', 'address_is_required', 'Address is required', 'العنوان مطلوب', 'Adres is verplicht', 'Endereço é necessário', NULL),
(500, 'Web', 'city_is_required', 'City is required', 'المدينة مطلوبة', 'Thành phố được yêu cầu', 'Cidade é necessária', NULL),
(501, 'Web', 'state_is_required', 'State is required', 'الدولة مطلوبة', 'Staat verplicht is', 'Estado é necessário', NULL),
(502, 'Web', 'country_is_required', 'Country is required', 'البلد مطلوب', 'Land is verplicht', 'País requerido', NULL),
(503, 'Web', 'pincode_is_required', 'Pincode is required', 'الرمز السري مطلوب', 'Pincode is vereist', 'Pincode é necessário', NULL),
(504, 'Web', 'latitude_is_required', 'Latitude is required', 'مطلوب خط العرض', 'Latitude là cần thiết', 'Latitude is required', NULL),
(505, 'Web', 'longitude_is_required', 'Longitude is required', 'خط الطول مطلوب', 'Longitude nodig', 'Longitude é necessária', NULL),
(506, 'Web', 'phone_number_is_required', 'Phone number is required', 'رقم الهاتف مطلوب', 'Số điện thoại là cần thiết', 'Número de telefone necessário', NULL),
(507, 'Web', 'landline_number_is_required', 'Landline number is required', 'مطلوب رقم الهاتف الثابت', 'Vast nummer is vereist', 'É requerido o número fixo', NULL),
(508, 'Web', 'fax_is_required', 'Fax is required', 'فاكس مطلوب', 'Fax is verplicht', 'É necessário um fax', NULL),
(509, 'Web', 'contact_email_is_required', 'Contact email is required', 'يلزم الاتصال بالبريد الإلكتروني', 'Contact email is vereist', 'É necessário um e-mail de contato', NULL),
(510, 'Web', 'site_language_is_required', 'Site language is required', 'لغة الموقع مطلوبة', 'Ngôn ngữ trang web được yêu cầu', 'É necessário o idioma do site', NULL),
(511, 'Web', 'currency_is_required', 'Currency is required', 'العملة مطلوبة', 'Valuta is verplicht', 'Moeda é necessária', NULL),
(512, 'Web', 'currency_symbol_is_required', 'Currency symbol is required', 'رمز العملة مطلوب', 'Valuta symbool is vereist', 'É necessário um símbolo de moeda', NULL),
(513, 'Web', 'restaurant_from_time_is_required', 'Restaurant from time is required', 'مطلوب مطعم من الوقت', 'Restaurant van tijd nodig is', 'Restaurante de tempo requerido', NULL),
(514, 'Web', 'restaurant_to_time_is_required', 'Restaurant to time is required', 'المطعم إلى الوقت مطلوب', 'Restaurant aan tijd nodig', 'É necessário um restaurante para o tempo', NULL),
(515, 'Web', 'design_by_is_required', 'Design by is required', 'مطلوب تصميم من قبل', 'Ontwerp door is verplicht', 'Design é necessário', NULL),
(516, 'Web', 'rights_reserved_is_required', 'Rights reserved is required', 'حقوق الطبع محفوظة', 'Rechten voorbehouden is vereist', 'Os direitos reservados são necessários', NULL),
(517, 'Web', 'date_format', 'Date Format', 'صيغة التاريخ', 'Định dạng ngày', 'Formato de data', NULL),
(518, 'Web', 'site_country', 'Site Country', 'بلد الموقع', 'Country terrein', 'País do site', NULL),
(519, 'Web', 'time_zone', 'Time Zone', 'وحدة زمنية', 'Time Zone', 'Fuso horário', NULL),
(520, 'Web', 'site_country_is_required', 'Site Country Is Required', 'موقع البلد مطلوب', 'Site nước là bắt buộc', 'País do site é obrigatório', NULL),
(521, 'Web', 'time_zone_is_required', 'Time Zone Is Required', 'المنطقة الزمنية مطلوبة', 'Time Zone Vereist', 'Fuso horário é obrigatório', NULL),
(522, 'Web', 'file_is_not_valid', 'File Is Not Valid', 'الملف غير صالح', 'Bestand is niet geldig', 'O arquivo não é válido', NULL);
INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`, `arabic`, `dutch`, `portuguese`, `telugu`) VALUES
(523, 'Web', 'from_time', 'From Time', 'من وقت', 'Van tijd', 'De tempos', NULL),
(524, 'Web', 'to_time', 'To Time', 'الى وقت', 'naar Time', 'Ao tempo', NULL),
(525, 'Web', 'merchant_name', 'Merchant Name', 'اسم التاجر', 'Merchant Name', 'Nome do comerciante', NULL),
(526, 'Web', 'merchant_privacy_policy_url', 'Merchant Privacy Policy URL', 'عنوان ورل لسياسة خصوصية التاجر', 'Merchant Privacy Policy URL', 'URL da Política de Privacidade do Comerciante', NULL),
(527, 'Web', 'merchant_user_agreement_url', 'Merchant User Agreement URL', 'عنوان ورل لاتفاقية مستخدم التاجر', 'Hiệp định tài khoản Merchant URL', 'URL do contrato de usuário do comerciante', NULL),
(528, 'Web', 'select', 'Select', 'تحديد', 'kiezen', 'Selecione', NULL),
(529, 'Web', 'sandbox', 'Sandbox', 'رمل', 'hộp đựng cát', 'Caixa de areia', NULL),
(530, 'Web', 'production', 'Production', 'إنتاج', 'productie', 'Produção', NULL),
(531, 'Web', 'paypal_environment_production_required', 'Paypal Environment Production Required', 'بايبال إنتاج البيئة المطلوبة', 'Paypal productieomgeving Required', 'Produção de meio ambiente Paypal necessária', NULL),
(532, 'Web', 'paypal_environment_sandbox_required', 'Paypal Environment Sandbox Required', 'بايبال بيئة رمل المطلوبة', 'Paypal Sandbox Milieu Verplicht', 'Caixa de areia do Ambiente Paypal Obrigatório', NULL),
(533, 'Web', 'merchant_name_required', 'Merchant Name Required', 'اسم التاجر مطلوب', 'Merchant Naam Vereist', 'Nome do comerciante necessário', NULL),
(534, 'Web', 'merchant_privacy_policy_url_required', 'Merchant Privacy Policy Url Required', 'سياسة خصوصية التاجر عنوان ورل مطلوب', 'Url Vereiste Merchant Privacy Policy', 'Política de privacidade do comerciante Url Requerida', NULL),
(535, 'Web', 'merchant_user_agreement_url_required', 'Merchant User Agreement Url Required', 'عنوان ورل لاتفاقية مستخدم التاجر مطلوب', 'Hiệp định tài khoản Merchant buộc Url', 'Url do Acordo do Usuário do Comerciante Necessário', NULL),
(536, 'Web', 'currency_required', 'Currency Required', 'العملة مطلوبة', 'Valuta vereist', 'Moeda Necessária', NULL),
(537, 'Web', 'account_type_required', 'Account Type Required', 'نوع الحساب مطلوب', 'Account Type Vereist', 'Tipo de Conta Obrigatório', NULL),
(538, 'Web', 'status_required', 'Status Required', 'الحالة مطلوبة', 'Status Verplicht', 'Status Requerido', NULL),
(539, 'Web', 'details_updated_successfully', 'Details Updated Successfully', 'تم تحديث التفاصيل بنجاح', 'Details bijgewerkt succesvol', 'Detalhes atualizados com sucesso', NULL),
(540, 'Web', 'payu_settings', 'Payu Settings', 'إعدادات بايو', 'Payu Cài đặt', 'Configurações Paya', NULL),
(541, 'Web', 'merchant_key', 'Merchant Key', 'مفتاح التاجر', 'Merchant Key', 'Chave mercante', NULL),
(542, 'Web', 'salt', 'Salt', 'ملح', 'zout', 'Sal', NULL),
(543, 'Web', 'live_url', 'Live Url', 'عنوان ورل المباشر', 'levende Url', 'Url ao vivo', NULL),
(544, 'Web', 'test_url', 'Test Url', 'عنوان ورل للاختبار', 'Url thử nghiệm', 'Url de teste', NULL),
(545, 'Web', 'merchant_key_required', 'Merchant Key Required', 'مفتاح التاجر مطلوب', 'Yêu cầu Merchant chính', 'É necessária a chave do comerciante', NULL),
(546, 'Web', 'salt_required', 'Salt Required', 'الملح المطلوبة', 'zout Required', 'São necessários sal', NULL),
(547, 'Web', 'live_url_required', 'Live Url Required', 'عنوان ورل المباشر مطلوب', 'Sống Url Required', 'Live Url Requerido', NULL),
(548, 'Web', 'test_url_required', 'Test Url Required', 'عنوان ورل للاختبار مطلوب', 'Url Vereiste Test', 'Url de teste obrigatório', NULL),
(549, 'Web', 'smtp_host', 'Smtp Host', 'سمتب المضيف', 'Smtp Host', 'Host Smtp', NULL),
(550, 'Web', 'smtp_port', 'Smtp Port', 'ميناء سمتب', 'SMTP Port', 'Porto Smtp', NULL),
(551, 'Web', 'smtp_user', 'Smtp User', 'مستخدم سمتب', 'SMTP-gebruikersnaam', 'Usuário Smtp', NULL),
(552, 'Web', 'smtp_password', 'Smtp Password', 'سمتب كلمة السر', 'SMTP-wachtwoord', 'Senha Smtp', NULL),
(553, 'Web', 'smtp_host_required', 'Smtp Host Required', 'سمتب المضيف مطلوب', 'Yêu cầu SMTP máy chủ', 'Smtp Host requerido', NULL),
(554, 'Web', 'smtp_port_required', 'Smtp Port Required', 'سمتب ميناء المطلوبة', 'Cảng buộc SMTP', 'Porto Smtp Requerido', NULL),
(555, 'Web', 'smtp_user_required', 'Smtp User Required', 'سمتب المستخدم المطلوبة', 'Yêu cầu smtp tài', 'Usuário requerido pelo Smtp', NULL),
(556, 'Web', 'smtp_password_required', 'Smtp Password Required', 'سمتب كلمة السر المطلوبة', 'Yêu cầu SMTP Password', 'É necessária uma senha Smtp', NULL),
(557, 'Web', 'action', 'Action', 'عمل', 'Actie', 'ação', NULL),
(558, 'Web', 'updated_successfully', 'Updated Successfully', 'تم التحديث بنجاح', 'bijgewerkt succesvol', 'Atualizado com sucesso', NULL),
(559, 'Web', 'push_notification_settings', 'Push Notification Settings', 'اضغط على ضبط الاشعارات', 'Cài đặt Push Notification', 'Configurações de notificação de envio', NULL),
(560, 'Web', 'one_signal_server_api_key_required', 'One Signal Server Api Key Required', 'واحد إشارة الخادم أبي مفتاح المطلوبة', 'Een Signaal Server API Key Required', 'É necessária uma chave Api do servidor de sinal', NULL),
(561, 'Web', 'one_signal_app_id_required', 'One Signal App Id Required', 'مطلوب واحد إشارة التطبيق معرف', 'Một tín hiệu Id Yêu cầu App', 'É necessário um ID de aplicativo de sinal', NULL),
(562, 'Web', 'email_template', 'Email Template', 'نموذج البريد الإلكتروني', 'Email Template', 'Modelo de e-mail', NULL),
(563, 'Web', 'edit_email_template', 'Edit Email Template', 'تعديل قالب البريد الإلكتروني', 'E-mail sjabloon bewerken', 'Editar modelo de e-mail', NULL),
(564, 'Web', 'subject_required', 'Subject Required', 'الموضوع (مطلوب', 'Subject Verplicht', 'Assunto necessário', NULL),
(565, 'Web', 'email_template_required', 'Email Template Required', 'نموذج البريد الإلكتروني مطلوب', 'Email Template Required', 'Modelo de e-mail exigido', NULL),
(566, 'Web', 'edit_sms_template', 'Edit Sms Template', 'تحرير قالب الرسائل القصيرة', 'Sms-sjabloon bewerken', 'Edite o modelo Sms', NULL),
(567, 'Web', 'sms_template_required', 'Sms Template Required', 'قالب الرسائل القصيرة المطلوبة', 'Yêu cầu Mẫu sms', 'Modelo Sms Necessário', NULL),
(568, 'Web', 'add_menu', 'Add Menu', 'إضافة قائمة', 'Menu toevoegen', 'Adicionar menu', NULL),
(569, 'Web', 'records_saved_successfully', 'Records Saved Successfully', 'تم حفظ السجلات بنجاح', 'Thành công đã lưu hồ sơ', 'Registros salvos com sucesso', NULL),
(570, 'Web', 'edit_menu', 'Edit Menu', 'تحرير القائمة', 'Menu Bewerken', 'Menu Editar', NULL),
(571, 'Web', 'save', 'Save', 'حفظ', 'Save', 'Salve ', NULL),
(572, 'Web', 'add_multi_records', 'Add Multi Records', 'إضافة سجلات متعددة', 'Voeg meerdere records toe', 'Adicionar multi Registros', NULL),
(573, 'Web', 'add_single_record', 'Add Single Record', 'إضافة سجل واحد', 'Voeg enkel record toe', 'Adicionar registro único', NULL),
(574, 'Web', 'menu_name_required', 'Menu Name Required', 'اسم القائمة مطلوب', 'Menu Name Required', 'Nome do Menu Obrigatório', NULL),
(575, 'Web', 'punch_line_required', 'Punch Line Required', 'خط لكمة المطلوبة', 'Punch Line Required', 'Linha de perfuração necessária', NULL),
(576, 'Web', 'description_required', 'Description Required', 'الوصف مطلوب', 'Beschrijving vereist', 'Descrição Obrigatório', NULL),
(577, 'Web', 'menu_image_required', 'Menu Image Required', 'القائمة المطلوبة الصورة', 'Yêu cầu menu Image', 'Imagem do menu necessária', NULL),
(578, 'Web', 'details_saved_successfully', 'Details Saved Successfully', 'تم حفظ التفاصيل بنجاح', 'Details opgeslagen succesvol', 'Detalhes salvos com sucesso', NULL),
(579, 'Web', 'menu_image_is_not_valid_file', 'Menu Image Is Not Valid File', 'صورة القائمة ملف غير صالح', 'Menu Afbeelding bestand is niet geldig', 'Imagem do menu não é arquivo válido', NULL),
(580, 'Web', 'add_addon', 'Add Addon', 'إضافة أدون', 'Addon toevoegen', 'Adicionar Addon', NULL),
(581, 'Web', 'addon_name_required', 'Addon Name Required', 'اسم الإضافة مطلوب', 'Addon Naam Benodigd', 'Addon Nome Requerido', NULL),
(582, 'Web', 'price_required', 'Price Required', 'السعر مطلوب', 'Giá Required', 'Preço Requerido', NULL),
(583, 'Web', 'addon_image_is_not_valid_file', 'Addon Image Is Not Valid File', 'صورة غير صالحة ملف غير صالح', 'Addon Image is niet geldig bestand', 'Addon arquivo de imagem não é válida', NULL),
(584, 'Web', 'edit_addon', 'Edit Addon', 'تحرير إضافة', 'Bewerk Addon', 'Editar Addon', NULL),
(585, 'Web', 'add_option', 'Add Option', 'إضافة خيار', 'Optie toevoegen', 'Adicionar Opção', NULL),
(586, 'Web', 'option_name', 'Option Name', 'اسم الخيار', 'Option Naam', 'Nome da opção', NULL),
(587, 'Web', 'option_name_required', 'Option Name Required', 'اسم الخيار مطلوب', 'Lựa chọn Tên Required', 'Nome da opção obrigatório', NULL),
(588, 'Web', 'edit_option', 'Edit Option', 'تحرير الخيار', 'Optie bewerken', 'Opção de edição', NULL),
(589, 'Web', 'language_name_required', 'Language Name Required', 'اسم اللغة مطلوب', 'Taalnaam Required', 'Nome do Idioma Obrigatório', NULL),
(590, 'Web', 'MSG_LANGUAGE_ADDED', 'MSG LANGUAGE ADDED', 'مسغ لانغواد أدد', 'MSG TĂNG NGÔN NGỮ', 'MSG IDIOMA ADICIONADA', NULL),
(592, 'Web', 'edit_phrase', 'Edit Phrase', 'تعديل العبارة', 'Sửa cụm từ', 'Editar frase', NULL),
(593, 'Web', 'test', 'Test', 'اختبار', 'thử', 'Teste', NULL),
(594, 'Web', 'phrase_for_required', 'Phrase For Required', 'عبارة مطلوبة', 'Đối với cụm từ bắt buộc', 'Frase para obrigatório', NULL),
(595, 'Web', 'lang_key_required', 'Lang Key Required', 'لانغ مفتاح المطلوبة', 'Yêu cầu Lang chính', 'Chave de Lang necessária', NULL),
(596, 'Web', 'add_cities', 'Add Cities', 'إضافة مدن', 'Voeg steden toe', 'Adicionar Cidades', NULL),
(597, 'Web', 'add_city', 'Add City', 'إضافة مدينة', 'Plaats toevoegen', 'Adicionar Cidade', NULL),
(598, 'Web', 'city_name_required', 'City Name Required', 'اسم المدينة مطلوب', 'Tên yêu cầu thành phố', 'Nome da cidade obrigatório', NULL),
(599, 'Web', 'add_service_provide_location', 'Add Service Provide Location', 'إضافة خدمة توفير الموقع', 'Voeg service toe aan locatie', 'Adicionar serviço fornecer localização', NULL),
(600, 'Web', 'edit_service_provide_location', 'Edit Service Provide Location', 'تحرير الخدمة توفير الموقع', 'Bewerk service, geef locatie op', 'Editar serviço fornecer localização', NULL),
(601, 'Web', 'city_required', 'City Required', 'المدينة المطلوبة', 'Yêu cầu thành phố', 'Cidade obrigatória', NULL),
(602, 'Web', 'locality_required', 'Locality Required', 'المنطقة المطلوبة', 'plaats Required', 'Local requerido', NULL),
(603, 'Web', 'pincode_required', 'Pincode Required', 'رمز بينكود مطلوب', 'Mã PIN Required', 'Pincode Necessário', NULL),
(604, 'Web', 'add_page', 'Add Page', 'إضافة صفحة', 'Pagina toevoegen', 'Adicionar Página', NULL),
(605, 'Web', 'edit_page', 'Edit Page', 'تعديل الصفحة', 'Pagina bewerken', 'Editar Página', NULL),
(606, 'Web', 'CRUD_operations_disabled_in_DEMO_version', 'CRUD Operations Disabled In DEMO Version', 'عمليات كرود معطل في النسخة التجريبية', 'CRUD Operations Uitgeschakeld in DEMO Versie', 'Operações CRUD desativadas na versão DEMO', NULL),
(607, 'Web', 'add_item', 'Add Item', 'اضافة عنصر', 'Voeg item toe', 'Adicionar item', NULL),
(608, 'Web', 'edit_item', 'Edit Item', 'تعديل عنصر', 'Item bewerken', 'Editar item', NULL),
(609, 'Web', 'veg', 'Veg', 'الخضار', 'veg', 'Veg', NULL),
(610, 'Web', 'nonveg', 'Non-veg', 'غير الخضار', 'Niet-vegetarisch', 'Non-veg', NULL),
(611, 'Web', 'other', 'Other', 'آخر', 'khác', 'De outros', NULL),
(612, 'Web', 'menu_required', 'Menu Required', 'القائمة المطلوبة', 'menu Vereiste', 'Menu necessário', NULL),
(613, 'Web', 'item_name_required', 'Item Name Required', 'اسم العنصر مطلوب', 'Naam Item Vereiste', 'Nome do item obrigatório', NULL),
(614, 'Web', 'item_cost_required', 'Item Cost Required', 'بند', 'Item kosten die nodig zijn', 'Item Custo Necessário', NULL),
(615, 'Web', 'item_type_required', 'Item Type Required', 'نوع العنصر مطلوب', 'Item Type Vereist', 'Tipo de item obrigatório', NULL),
(616, 'Web', 'item_description_required', 'Item Description Required', 'وصف السلعة مطلوب', 'Itembeschrijving Vereist', 'Descrição do item obrigatório', NULL),
(617, 'Web', 'item_image_is_not_valid_file', 'Item Image Is Not Valid File', 'صورة العنصر ملف غير صالح', 'Item Image bestand is niet geldig', 'Imagem do item não é arquivo válido', NULL),
(618, 'Web', 'item_description', 'Item Description', 'وصف السلعة', 'item Beschrijving', 'descrição do item', NULL),
(619, 'Web', 'add_items', 'Add Items', 'إضافة عناصر', 'Items toevoegen', 'Adicionar itens', NULL),
(620, 'Web', 'cost', 'Cost', 'كلفة', 'Kosten', 'Custo', NULL),
(621, 'Web', 'item_details', 'Item Details', 'تفاصيل العنصر', 'Item Details', 'Detalhes do item', NULL),
(622, 'Web', 'add_remove', 'Add Remove', 'اضف احذف', 'Toevoegen verwijderen', 'Adicionar Remover', NULL),
(623, 'Web', 'select_atleast_one_option', 'Select Atleast One Option', 'حدد أتليست وان أوبتيون', 'Minstens één keuzevak', 'Selecione uma opção ao menos uma', NULL),
(624, 'Web', 'name_required', 'Name Required', 'الاسم مطلوب', 'naam Vereist', 'Nome Necessário', NULL),
(625, 'Web', 'please_enter_proper_value_for_price_field', 'Please Enter Proper Value For Price Field', 'الرجاء إدخال القيمة المناسبة للسعر الحقل', 'Vul de juiste waarde voor de prijs Field', 'Digite o valor adequado para o campo de preços', NULL),
(626, 'Web', 'already_existed', 'Already Existed', 'موجود بالفعل', 'Al bestaand', 'Já existiu', NULL),
(627, 'Web', 'select_option', 'Select Option', 'حدد الخيار', 'Selecteer Optie', 'Opção de seleção', NULL),
(628, 'Web', 'note_to_add_a_record_click_on_plus_button', 'Note: To add a record click on the (+) button', 'ملاحظة: لإضافة سجل انقر على زر (+)', 'Lưu ý: Để thêm một nhấp chuột kỷ lục vào nút (+)', 'Nota: Para adicionar um registro, clique no botão (+)', NULL),
(631, 'Web', 'MSG_LANGUAGE_DELETED', 'MSG LANGUAGE DELETED', 'تم حذف مسغ لانغواد', 'MSG DELETED TAAL', 'MSG LANGUAGE DELETED', NULL),
(632, 'Web', 'add_offer', 'Add Offer', 'إضافة عرض', 'Aanbieding toevoegen', 'Adicionar Oferta', NULL),
(633, 'Web', 'offer_end_date', 'Offer End Date', 'تاريخ انتهاء العرض', 'Cung cấp Ngày Kết Thúc', 'Data de conclusão da oferta', NULL),
(634, 'Web', 'offer_conditions', 'Offer Conditions', 'شروط العرض', 'Điều kiện phục vụ', 'Condições de oferta', NULL),
(635, 'Web', 'offer_image_name', 'Offer Image Name', 'اسم صورة العرض', 'Cung cấp Tên ảnh', 'Nome da imagem da oferta', NULL),
(636, 'Web', 'offer_name_required', 'Offer Name Required', 'اسم العرض مطلوب', 'Cung cấp Tên Required', 'Nome da oferta obrigatório', NULL),
(637, 'Web', 'offer_cost_required', 'Offer Cost Required', 'تكلفة العرض مطلوبة', 'Aanbieding kosten die nodig zijn', 'Cotação da oferta necessária', NULL),
(638, 'Web', 'offer_start_date_required', 'Offer Start Date Required', 'تاريخ بدء العرض مطلوب', 'Offer Ngày bắt buộc', 'Data de Início da Oferta Obrigatória', NULL),
(639, 'Web', 'offer_valid_date_required', 'Offer Valid Date Required', 'تاريخ العرض صالح', 'Cung cấp Ngày Hợp lệ bắt buộc', 'Data de validade da oferta necessária', NULL),
(640, 'Web', 'serve_no_of_people_required', 'Serve No Of People Required', 'خدمة أي من الناس المطلوبة', 'Serveer Geen mensen dat nodig is', 'Não Serve De Pessoas Necessárias', NULL),
(641, 'Web', 'offer_image_is_not_valid_file', 'Offer Image Is Not Valid File', 'ملف العرض غير صالح', 'Aanbieding Image File is niet geldig', 'A imagem da oferta não é um arquivo válido', NULL),
(642, 'Web', 'offer_conditions_required', 'Offer Conditions Required', 'شروط العرض مطلوبة', 'Offer Conditions Verplicht', 'Condições de Oferta Requeridas', NULL),
(643, 'Web', 'gallary', 'Gallery', 'صالة عرض', 'Galerij', 'Galeria', NULL),
(644, 'Web', 'add_images', 'Add Images', 'إضافة الصور', 'Voeg afbeeldingen toe', 'Adicionar Imagens', NULL),
(645, 'Web', 'alt_text', 'Alt Text', 'نص بديل', 'Alt-tekst', 'Texto alternativo', NULL),
(646, 'Web', 'alternative_text', 'Alternative Text', 'نص بديل', 'Alternatieve tekst', 'Texto Alternativo', NULL),
(647, 'Web', 'edit_image', 'Edit Image', 'تعديل الصورة', 'Bewerk afbeelding', 'Editar imagem', NULL),
(648, 'Web', 'alternative_text_required', 'Alternative Text Required', 'النص البديل مطلوب', 'Alternatieve tekst verplicht', 'Texto alternativo necessário', NULL),
(649, 'Web', 'image_is_not_valid_file', 'Image Is Not Valid File', 'الملف غير صالح', 'Afbeelding bestand is niet geldig', 'O arquivo da imagem não é válido', NULL),
(650, 'Web', 'update_profile', 'Update Profile', 'تحديث الملف', 'cập nhật hồ sơ', 'Atualizar perfil', NULL),
(651, 'Web', 'quantity', 'Quantity', 'كمية', 'kwantiteit', 'Quantidade', NULL),
(652, 'Web', 'item_required', 'Item Required', 'العنصر مطلوب', 'Item Vereiste', 'Item Obrigatório', NULL),
(653, 'Web', 'quantity_required', 'Quantity Required', 'الكمية المطلوبة', 'Quantity Required ', 'Quantidade Requerida', NULL),
(654, 'Web', 'please_enter_numbers_only', 'Please Enter Numbers Only', 'برجاء إدخال أرقام فقط', 'Chỉ xin Nhập số', 'Por favor insira apenas números', NULL),
(655, 'Web', 'edit_offer', 'Edit Offer', 'تعديل العرض', 'Bied een bod aan', 'Editar oferta', NULL),
(656, 'Web', 'view_faqs', 'View Faqs', 'مشاهدة ملف فاقس', 'Xem Câu Hỏi Thường Gặp', 'Ver Faqs', NULL),
(657, 'Web', 'question', 'Question', 'سؤال', 'vraag', 'Questão', NULL),
(658, 'Web', 'answer', 'Answer', 'إجابة', 'Antwoord', 'Responda', NULL),
(659, 'Web', 'add_faq', 'Add Faq', 'أضف الأسئلة الشائعة', 'Voeg Faq toe', 'Adicionar Faq', NULL),
(660, 'Web', 'question_required', 'Question Required', 'السؤال مطلوب', 'Yêu cầu Câu hỏi', 'Pergunta Necessária', NULL),
(661, 'Web', 'answer_required', 'Answer Required', 'الإجابة مطلوبة', 'Antwoord vereist', 'Resposta obrigatória', NULL),
(662, 'Web', 'edit_faq', 'Edit Faq', 'عدل الأسئلة المتداولة', 'Edit Faq', 'Editar Faq', NULL),
(663, 'Web', 'add_faqs', 'Add Faqs', 'إضافة أسئلة متكررة', 'Voeg Faqs toe', 'Adicionar Faqs', NULL),
(664, 'Web', 'social_networks', 'Social Networks', 'شبكات اجتماعية', 'sociale netwerken', 'Redes sociais', NULL),
(665, 'Web', 'facebook', 'Facebook', 'فيس بوك', 'Facebook', 'Facebook', NULL),
(666, 'Web', 'twitter', 'Twitter', 'تغريد', 'tjilpen', 'Twitter', NULL),
(667, 'Web', 'google_plus', 'Google Plus', 'جوجل بلس', 'Google Plus', 'Google Plus', NULL),
(668, 'Web', 'linked_in', 'Linked In', 'لينكد إن', 'Linked In', 'Linked In', NULL),
(669, 'Web', 'instagram', 'Instagram', 'إينستاجرام', 'Instagram', 'Instagram', NULL),
(670, 'Web', 'pinterest', 'Pinterest', 'موقع Pinterest', 'Pinterest', 'Pinterest', NULL),
(671, 'Web', 'facebook_url_not_valid', 'Facebook Url Not Valid', 'عنوان ورل للفيسبوك غير صالح', 'Facebook Url Niet Geldig', 'URL do Facebook não válido', NULL),
(672, 'Web', 'twitter_url_not_valid', 'Twitter Url Not Valid', 'تويتر ورل غير صالح', 'Twitter URL Không hợp lệ', 'Url do Twitter não válido', NULL),
(673, 'Web', 'google_plus_url_not_valid', 'Google Plus Url Not Valid', 'عنوان ورل ل غوغل بلوس غير صالح', 'Google Plus URL niet geldig', 'Google Plus Url não válido', NULL),
(674, 'Web', 'linked_in_url_not_valid', 'Linked In Url Not Valid', 'رابط في عنوان ورل غير صالح', 'Latitude thiết CAN', 'Ligado em url não válido', NULL),
(675, 'Web', 'instagram_url_not_valid', 'Instagram Url Not Valid', 'رابط إنستاغرام غير صالح', 'Instagram Url niet geldig', 'URL do Instagram não válido', NULL),
(676, 'Web', 'pinterest_url_not_valid', 'Pinterest Url Not Valid', 'عنوان ورل بينتيريست غير صالح', 'Pinterest URL Không hợp lệ', 'Pinterest Url Not Valid', NULL),
(677, 'Web', 'tumblr', 'Tumblr', 'نعرفكم', 'tumblr', 'Tumblr', NULL),
(678, 'Web', 'tumblr_url_not_valid', 'Tumblr Url Not Valid', 'تومبلر ورل غير صالح', 'Tumblr URL Không hợp lệ', 'Url do Tumblr não válido', NULL),
(679, 'Web', 'day', 'Day', 'يوم', 'ngày', 'Dia', NULL),
(680, 'Web', 'opened', 'Opened', 'افتتح', 'geopend', 'Aberto', NULL),
(681, 'Web', 'closed', 'Closed', 'مغلق', 'đóng', 'Fechadas', NULL),
(682, 'Web', 'opening_hours', 'Opening Hours', 'ساعات العمل', 'Giờ mở cửa', 'Horas de abertura', NULL),
(683, 'Web', 'login', 'Login', 'تسجيل الدخول', 'login', 'Entrar', NULL),
(684, 'Web', 'contact_us', 'Contact Us', 'اتصل بنا', 'Neem contact met ons op', 'Contate-Nos', NULL),
(685, 'Web', 'loyality_points', 'Loyality Points', 'نقاط الولاء', 'điểm Loyalty', 'Pontos de fidelidade', NULL),
(686, 'Web', 'points_settings', 'Points Settings', 'إعدادات النقاط', 'Punten Instellingen', 'Configurações de pontos', NULL),
(687, 'Web', 'user_reward_points', 'User Reward Points', 'نقاط مكافأة المستخدم', 'Điểm thưởng dùng', 'Pontos de recompensa do usuário', NULL),
(688, 'Web', 'points_logs', 'Points Logs', 'نقاط السجلات', 'điểm Logs', 'Pontos Logs', NULL),
(689, 'Web', 'reports', 'Reports', 'تقارير', 'rapporten', 'Relatórios', NULL),
(690, 'Web', 'from_date', 'From Date', 'من التاريخ', 'Van datum', 'Da data', NULL),
(691, 'Web', 'to_date', 'To Date', 'ان يذهب في موعد', 'to Date', 'Até a presente data', NULL),
(692, 'Web', 'from_date_required', 'From Date Required', 'من التاريخ المطلوب', 'Vanaf de datum vereist', 'Da data', NULL),
(693, 'Web', 'to_date_required', 'To Date Required', 'إلى التاريخ مطلوب', 'Đến ngày bắt buộc', 'Até o momento necessário', NULL),
(694, 'Web', 'master_settings', 'Master Settings', 'إعدادات رئيسية', 'Master Instellingen', 'Configurações mestre', NULL),
(695, 'Web', 'app_settings', 'App Settings', 'إعدادات التطبيقات', 'App instellingen', 'Configurações do aplicativo', NULL),
(696, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder', 'بوينتس لابيل ريديم بلاسهولدر', 'Đổi Điểm Placeholder Label', 'Marcador de pontos Redefinir espaço reservado', NULL),
(697, 'Web', 'points_label_earn', 'Points Label Earn', 'نقاط تسمية كسب', 'Label Punten verdienen', 'Etiqueta de pontos Ganhe', NULL),
(698, 'Web', 'points_label_template', 'Points Label Template', 'قالب تصنيف النقاط', 'Template Points Label', 'Modelo de etiqueta de pontos', NULL),
(699, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer', 'نقاط الكسب القصوى للعميل', 'Maximale Punten verdienen voor de klant', 'Pontos de ganhos máximos para o cliente', NULL),
(700, 'Web', 'points_earn_apply_only_on_the_following_payment_option', 'Points Earn Apply Only On The Following Payment Option', 'نقاط كسب تطبيق فقط على خيار الدفع التالي', 'Kiếm điểm Áp dụng Chỉ On The Sau Tùy chọn thanh toán', 'Pontos ganhos aplicam somente na opção de pagamento seguinte', NULL),
(701, 'Web', 'cash_on_delivery', 'Cash On Delivery', 'الدفع عن الاستلام', 'Contant bij levering', 'Em dinheiro na entrega', NULL),
(702, 'Web', 'paypal', 'Paypal', 'باي بال', 'PayPal', 'Paypal', NULL),
(703, 'Web', 'stripe', 'Stripe', 'شريط', 'sọc', 'Listra', NULL),
(704, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings', 'كسب إعدادات تحويل النقاط', 'Conversie instellingen voor verdienpunten', 'Configurações de conversão de pontos de ganhos', NULL),
(705, 'Web', 'earning_point', 'Earning Points', 'كسب النقاط', 'Verdienpunten', 'Pontos de ganhar', NULL),
(706, 'Web', 'earning_point_value_in_R', 'Earning Point Value In R$', 'كسب قيمة النقطة في R $', 'Waarde verdienstijd in R $', 'Valor Saliente em R $', NULL),
(707, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings', 'نقاط الاسترداد إعدادات التحويل', 'Điểm cứu chuộc Cài đặt Conversion', 'Redefinindo configurações de conversão de pontos', NULL),
(708, 'Web', 'redeeming_point', 'Redeeming Point', 'نقطة الاسترداد', 'Point cứu chuộc', 'Ponto de resgate', NULL),
(709, 'Web', 'redeeming_point_value_in_R', 'Redeeming Point Value In R$', 'قيمة قيمة الاسترداد في R $', 'Trong cứu chuộc Point Value R $', 'Valor de ponto de resgate em R $', NULL),
(710, 'Web', 'disabled_redeeming', 'Disabled Redeeming', 'استرداد قيمة المعوقين', 'Uitval uitgeschakeld', 'Redefinição desabilitada', NULL),
(711, 'Web', 'points_earned_for_actions', 'Points Earned For Actions', 'النقاط المكتسبة من أجل الإجراءات', 'Punten verdiend voor acties', 'Pontos ganhos por ações', NULL),
(712, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup', 'نقاط المكافأة لتسجيل الحساب', 'Loyaliteitspunten voor Account Aanmaken', 'Pontos de recompensa para inscrição na conta', NULL),
(713, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review', 'نقاط المكافأة لمطعم الاستعراض', 'Loyaliteitspunten voor Restaurant Beoordeling', 'Pontos de recompensa para revisão do restaurante', NULL),
(714, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order', 'نقاط المكافأة للأمر الأول', 'Loyaliteitspunten voor Eerste Orde', 'Pontos de recompensa para a primeira ordem', NULL),
(715, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App', 'نقاط المكافأة لتبادل التطبيقات', 'Loyaliteitspunten voor Sharing App', 'Pontos de recompensa para compartilhar aplicativos', NULL),
(716, 'Web', 'points_expiry', 'Points Expiry', 'نقاط انتهاء الصلاحية', 'punten Vervaldatum', 'Data de expiração', NULL),
(717, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them', 'نقاط تنتهي في نهاية العام المقبل بعد كنت كسبت لهم', 'Punten af aan het einde van het volgende jaar nadat je ze hebt verdiend', 'Os pontos expiram no final do próximo ano depois que você os ganhou', NULL),
(718, 'Web', 'points_never_expire', 'Points Never Expire', 'النقاط لا تنتهي أبدا', 'Punten verlopen Nooit', 'Pontos nunca expiram', NULL),
(719, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used', 'الحد الأدنى من النقاط يمكن استخدامها', 'Điểm có thể được sử dụng tối thiểu', 'Pontos Mínimos podem ser usados', NULL),
(720, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used', 'يمكن استخدام النقاط القصوى', 'Điểm tối đa có thể được sử dụng', 'Podem ser usados pontos máximos', NULL),
(721, 'Web', 'enabled_points_system', 'Enabled Points System', 'نظام النقاط الممكنة', 'Ingeschakeld punten systeem', 'Sistema de pontos habilitados', NULL),
(722, 'Web', 'required', 'Required', 'مطلوب', 'cần thiết', 'Requeridos', NULL),
(723, 'Web', 's_no', 'S No', 'S رقم', 'S No', 'S Não', NULL),
(724, 'Web', 'customer_name', 'Customer Name', 'اسم الزبون', 'klantnaam', 'nome do cliente', NULL),
(725, 'Web', 'customer_phone', 'Customer Phone', 'هاتف العميل', 'Klant Telefoon', 'Telefone do cliente', NULL),
(726, 'Web', 'no_of_items_booked', 'No Of Items Booked', 'أي من العناصر المحجوزة', 'Không Trong mục Thẻ vàng', 'Não há itens reservados', NULL),
(727, 'Web', 'order_cost', 'Order Cost', 'تكلفة الطلب', 'Chi phí để', 'Custo da encomenda', NULL),
(728, 'Web', 'booked_date_time', 'Booked Date Time', 'حجز التاريخ', 'Geboekte Datum Tijd', 'Hora da data reservada', NULL),
(729, 'Web', 'payment', 'Payment', 'دفع', 'betaling', 'Forma de pagamento', NULL),
(730, 'Web', 'paid_amount', 'Paid Amount', 'المبلغ المدفوع', 'Số đã nộp', 'Quantidade paga', NULL),
(731, 'Web', 'booked_date', 'Booked Date', 'حجز التاريخ', 'Geboekte Datum', 'Data Booked', NULL),
(732, 'Web', 'total_amount', 'Total Amount', 'المبلغ الإجمالي', 'Tổng số tiền', 'Valor total', NULL),
(733, 'Web', 'no_customers_available', 'No Customers Available', 'لا العملاء المتاحة', 'Klanten niet beschikbaar', 'Nenhum cliente disponível', NULL),
(734, 'Web', 'client_wise_reports', 'Client Wise Reports', 'تقارير العميل الحكيمة', 'Báo cáo khôn ngoan của khách hàng', 'Relatórios sábios do cliente', NULL),
(735, 'Web', 'customer', 'Customer', 'زبون', 'Klant', 'Cliente', NULL),
(736, 'Web', 'customer_required', 'Customer Required', 'العميل مطلوب', 'Klant verplicht', 'Cliente exigido', NULL),
(737, 'Web', 'location_wise_reports', 'Location Wise Reports', 'الموقع تقارير الحكمة', 'Locatie verstandig Reports', 'Localização Wise Reports', NULL),
(738, 'Web', 'item_wise_reports', 'Item Wise Reports', 'البند تقارير الحكمة', 'Item Wise Reports', 'Relatos de itens sábios', NULL),
(739, 'Web', 'item', 'Item', 'بند', 'item', 'Item', NULL),
(740, 'Web', 'date_wise_reports', 'Date Wise Reports', 'تاريخ تقارير الحكمة', 'Ngày Báo cáo khôn ngoan', 'Date Wise Reports', NULL),
(741, 'Web', 'updated_successfully', 'Updated Successfully', 'تم التحديث بنجاح', 'cập nhật thành công', 'Atualizado com sucesso', NULL),
(742, 'Web', 'calendar', 'Calendar', 'التقويم', 'Kalender', 'Calendário', NULL),
(743, 'Web', 'point_settings', 'Point Settings', 'إعدادات نقطة', 'Cài đặt điểm', 'Configurações de pontos', NULL),
(744, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder', 'بوينتس لابيل ريديم بلاسهولدر', 'Inwisselen Points Placeholder Label', 'Marcador de pontos Redefinir espaço reservado', NULL),
(745, 'Web', 'points_label_earn', 'Points Label Earn', 'نقاط تسمية كسب', 'Nhãn Kiếm điểm', 'Etiqueta de pontos Ganhe', NULL),
(746, 'Web', 'points_label_template', 'Points Label Template', 'قالب تصنيف النقاط', 'Điểm Label Template', 'Modelo de etiqueta de pontos', NULL),
(747, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer', 'نقاط الكسب القصوى للعميل', 'Điểm Tích luỹ tối đa cho khách hàng', 'Pontos de ganhos máximos para o cliente', NULL),
(748, 'Web', 'points_earn_apply_only_on_the_following_payment_options', 'Points Earn Apply Only On The Following Payment Options', 'نقاط كسب تطبيق فقط على خيارات الدفع التالية', 'Punten verdienen alleen van toepassing op de volgende betalingsmogelijkheden', 'Pontos ganhos aplicam somente nas seguintes opções de pagamento', NULL),
(749, 'Web', 'earning_point', 'Earning Points', 'كسب النقاط', 'Verdienpunten', 'Pontos de ganhar', NULL),
(750, 'Web', 'earning_point_value_in_', 'Earning Point Value In ', 'كسب نقطة القيمة في', 'Waarde van de verdienstwaarde In', 'Valor de ponto de ganhos em', NULL),
(751, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings', 'نقاط الاسترداد إعدادات التحويل', 'Het inruilen van Punten Conversie-instellingen', 'Redefinindo configurações de conversão de pontos', NULL),
(752, 'Web', 'redeeming_point', 'Redeeming Point', 'نقطة الاسترداد', 'verlossende Point', 'Ponto de resgate', NULL),
(754, 'Web', 'disabled_redeeming', 'Disabled Redeeming', 'استرداد قيمة المعوقين', 'Uitval uitgeschakeld', 'Redefinição desabilitada', NULL),
(755, 'Web', 'redeeming_point_value_in_', 'Redeeming Point Value In', 'قيمة قيمة الاسترداد', 'Point inwisselen Value In', 'Valor de ponto de resgate em', NULL),
(756, 'Web', 'points_earned_for_actions', 'Points Earned For Actions', 'النقاط المكتسبة من أجل الإجراءات', 'Điểm Earned Đối Actions', 'Pontos ganhos por ações', NULL),
(757, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review', 'نقاط المكافأة لمطعم الاستعراض', 'Điểm thưởng Đối Restaurant Xem lại', 'Pontos de recompensa para revisão do restaurante', NULL),
(758, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order', 'نقاط المكافأة للأمر الأول', 'Điểm thưởng Đối Đầu tiên theo thứ tự', 'Pontos de recompensa para a primeira ordem', NULL),
(759, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App', 'نقاط المكافأة لتبادل التطبيقات', 'Điểm thưởng Đối Sharing App', 'Pontos de recompensa para compartilhar aplicativos', NULL),
(760, 'Web', 'points_expiry', 'Points Expiry', 'نقاط انتهاء الصلاحية', 'điểm hết hạn', 'Data de expiração', NULL),
(761, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them', 'نقاط تنتهي في نهاية العام المقبل بعد كنت كسبت لهم', 'Punten af aan het einde van het volgende jaar nadat je ze hebt verdiend', 'Os pontos expiram no final do próximo ano depois que você os ganhou', NULL),
(762, 'Web', 'points_never_expire', 'Points Never Expire', 'النقاط لا تنتهي أبدا', 'Điểm Never Hết Hạn', 'Pontos nunca expiram', NULL),
(763, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used', 'الحد الأدنى من النقاط يمكن استخدامها', 'Punten kunnen gebruikt worden Minimum', 'Pontos Mínimos podem ser usados', NULL),
(764, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used', 'يمكن استخدام النقاط القصوى', 'Điểm tối đa có thể được sử dụng', 'Podem ser usados pontos máximos', NULL),
(765, 'Web', 'enabled_points_system', 'Enabled Points System', 'نظام النقاط الممكنة', 'Ingeschakeld punten systeem', 'Sistema de pontos habilitados', NULL),
(766, 'Web', 'points_label_redeem_placeholder_required', 'Points Label Redeem Placeholder Required', 'بوينتس لابيل ريديم بلاسهولدر مطلوب', 'Placeholder Label đổi điểm bắt buộc', 'Marca de pontos Redefinir o espaço reservado', NULL),
(767, 'Web', 'points_label_earn_required', 'Points Label Earn Required', 'نقاط تسمية كسب المطلوبة', 'Punten verdienen voorgeschreven etiket', 'Etiqueta de pontos Obrigatório Obrigatório', NULL),
(768, 'Web', 'points_label_template_required', 'Points Label Template Required', 'قالب تسمية النقاط المطلوبة', 'Punten Vereiste Label Template', 'Modelo de etiqueta de pontos necessário', NULL),
(769, 'Web', 'maximum_earning_points_for_customer_required', 'Maximum Earning Points For Customer Required', 'نقاط الكسب القصوى للعميل المطلوبة', 'Maximale Punten verdienen voor de klant Verplicht', 'Pontos de ganhos máximos necessários para o cliente', NULL),
(770, 'Web', 'payment_options_required', 'Payment Options Required', 'خيارات الدفع مطلوبة', 'Betaling opties die nodig zijn', 'Opções de pagamento necessárias', NULL),
(771, 'Web', 'earning_point_required', 'Earning Point Required', 'كسب نقطة المطلوبة', 'Winstpunt vereist', 'Ponto de obtenção obrigatório', NULL),
(772, 'Web', 'earning_point_value_required', 'Earning Point Value Required', 'كسب قيمة النقطة المطلوبة', 'Waarde van de verdienstermijn vereist', 'Valor de ponto de ganhos necessário', NULL),
(773, 'Web', 'redeeming_point_required', 'Redeeming Point Required', 'نقطة الاسترداد مطلوبة', 'Yêu cầu cứu chuộc Point', 'Ponto de resgate necessário', NULL),
(774, 'Web', 'redeeming_point_value_required', 'Redeeming Point Value Required', 'قيمة قيمة الاسترداد مطلوبة', 'Verlossende Point Value Required', 'Valor de ponto de resgate exigido', NULL),
(775, 'Web', 'points_for_restaurant_review_required', 'Points For Restaurant Review Required', 'نقاط لمطعم مراجعة المطلوبة', 'Punten benodigd voor Restaurant Beoordeling', 'Requisitos de Revisão de Restaurantes Requeridos', NULL),
(776, 'Web', 'points_for_first_order_required', 'Points For First Order Required', 'نقاط للطلب الأول المطلوبة', 'Punten Voor Eerste Orde Required', 'Pontos para a primeira ordem necessária', NULL),
(777, 'Web', 'points_for_sharing_app_required', 'Points For Sharing App Required', 'نقاط للمشاركة التطبيق مطلوب', 'Điểm Đối Sharing App Required', 'É necessário um aplicativo de pontos para compartilhamento', NULL),
(778, 'Web', 'points_expiry_required', 'Points Expiry Required', 'نقاط انتهاء الصلاحية المطلوبة', 'Punten Vervaldatum Required', 'Expiração de Pontos Necessária', NULL),
(779, 'Web', 'minimum_points_can_be_used_required', 'Minimum Points Can Be Used Required', 'يمكن استخدام الحد الأدنى من النقاط المطلوبة', 'Điểm có thể được sử dụng Yêu cầu tối thiểu', 'Pontos Mínimos podem ser Usados Requeridos', NULL),
(780, 'Web', 'maximum_points_can_be_used_required', 'Maximum Points Can Be Used Required', 'الحد الأقصى النقاط يمكن استخدامها المطلوبة', 'Maximum punten kunnen gebruikt worden Required', 'Podem ser usados pontos máximos necessários', NULL),
(781, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup', 'نقاط المكافأة لتسجيل الحساب', 'Điểm thưởng Đối Đăng ký tài khoản', 'Pontos de recompensa para inscrição na conta', NULL),
(782, 'Web', 'reward_points_for_account_signup_required', 'Reward Points For Account Signup Required', 'نقاط المكافأة لتسجيل حساب مطلوب', 'Điểm thưởng yêu cầu Đối với tài khoản đăng ký', 'Pontos de recompensa para inscrição na conta necessária', NULL),
(783, 'Web', 'earning_point_value', 'Earning Point Value', 'كسب قيمة النقطة', 'Waarde van de verdienstepunt', 'Valor do ponto de salário', NULL),
(784, 'Web', 'redeeming_point_value', 'Redeeming Point Value', 'قيمة نقطة الاسترداد', 'Point Value Đang đổi', 'Valor de ponto de resgate', NULL),
(785, 'Web', 'points_for_restaurant_review', 'Points For Restaurant Review', 'نقاط لمطعم مراجعة', 'Điểm Đối Restaurant Xem lại', 'Pontos para revisão do restaurante', NULL),
(786, 'Web', 'points_for_first_order', 'Points For First Order', 'نقاط للطلب الأول', 'Điểm Đối Đầu tiên theo thứ tự', 'Pontos para Primeira Ordem', NULL),
(787, 'Web', 'points_for_sharing_app', 'Points For Sharing App', 'نقاط للمشاركة التطبيق', 'Điểm Đối Sharing App', 'Pontos para compartilhar aplicativos', NULL),
(788, 'Web', 'total_points', 'Total Points', 'مجمل النقاط', 'Total Points', 'Total de pontos', NULL),
(789, 'Web', 'referral_settings', 'Referral Settings', 'إعدادات الإحالة', 'referral Instellingen', 'Configurações de Referência', NULL),
(790, 'Web', 'referral_enabled', 'Referral Enabled', 'تم تمكين الإحالة', 'Referral Bật', 'Referência ativada', NULL),
(791, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone', 'نقاط للإحالة أي شخص', 'Tham khảo điểm cho bất cứ ai', 'Pontos para recomendar qualquer pessoa', NULL),
(792, 'Web', 'points_for_referred_by_anyone', '	Points For Referred By Anyone', 'نقاط للمراجع من قبل أي شخص', 'Điểm cho giới thiệu bởi bất cứ ai', 'Pontos para Referido por qualquer um', NULL),
(793, 'Web', 'points_for_refer_anyone_required', 'Points For Refer Anyone Required', 'نقاط للإحالة أي شخص مطلوب', 'Tham khảo điểm cho bất cứ ai yêu cầu', 'Pontos para recomendar qualquer pessoa necessária', NULL),
(794, 'Web', 'points_for_referred_by_anyone_required', 'Points For Referred By Anyone Required', 'نقاط للمراجع من قبل أي شخص مطلوب', 'Voor Aangebracht door iedereen benodigde punten', 'Pontos para Referidos por Qualquer Pessoa Necessária', NULL),
(795, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone', 'نقاط للإحالة أي شخص', 'Raadpleeg Points For Anyone', 'Pontos para recomendar qualquer pessoa', NULL),
(796, 'Web', 'points_for_referring_person', '	Points For Referring Person', 'نقاط للإشارة الشخص', 'Punten voor Verwijzend Person', 'Pontos para Pessoa Referente', NULL),
(797, 'Web', 'points_for_referred_person', '	points for referred person', 'نقاط للشخص المشار إليه', 'điểm gọi cho người', 'Pontos para pessoa referida', NULL),
(798, 'Web', 'fevicon', 'Favicon', 'فافيكون', 'favicon', 'Favicon', NULL),
(799, 'Web', 'view_customers', 'View Customers', 'عرض العملاء', 'Xem Khách hàng', 'Ver clientes', NULL),
(800, 'Web', 'designed_by', 'Designed By', 'صمم بواسطة', 'Ontworpen door', 'Projetado por', NULL),
(801, 'Web', 'orders', 'Orders', 'أوامر', 'bestellingen', 'Pedidos', NULL),
(802, 'Web', 'refferal_users', 'Refferal Users', 'إحالة المستخدمين', 'referral Gebruikers', 'Usuários de Referência', NULL),
(803, 'Web', 'order', 'Order', 'طلب', 'bestelling', 'Ordem', NULL),
(804, 'Web', 'login_register', 'Login Register', 'دخولتسجيل', 'Inloggen Registreren', 'Login Registrar', NULL),
(805, 'Web', 'loginregister', 'Login-register', 'دخولتسجيل', 'Login-register', 'Login-register', NULL),
(806, 'Web', 'email_required', 'Email Required', 'البريد الإلكتروني (مطلوب', 'Email (verplicht', 'Email (obrigatório', NULL),
(807, 'Web', 'password_required', 'Password Required', 'كلمة المرور مطلوبة', 'wachtwoord Vereist', 'Senha requerida', NULL),
(808, 'Web', 'forgot_password', 'Forgot Password', 'هل نسيت كلمة المرور', 'Wachtwoord vergeten', 'Esqueceu a senha', NULL),
(809, 'Web', 'login_through_facebook', 'Login Through Facebook', 'تسجيل الدخول من خلال الفيسبوك', 'Đăng nhập qua Facebook', 'Entrar através do Facebook', NULL),
(810, 'Web', 'login_through_google', 'Login Through Google', 'تسجيل الدخول من خلال جوجل', 'Aanmelden via Google', 'Login através do Google', NULL),
(811, 'Web', 'first_name_required', 'First Name Required', 'الاسم الأول مطلوب', 'Voornaam (verplicht', 'Primeiro Nome Necessário', NULL),
(812, 'Web', 'last_name_required', 'Last Name Required', 'اسم العائلة مطلوب', 'Tên Required cuối', 'Last Name Required', NULL),
(813, 'Web', 'phone_required', 'Phone Required', 'الهاتف مطلوب', 'Yêu cầu điện thoại', 'Telefone Necessário', NULL),
(814, 'Web', 'confirm_password_required', 'Confirm Password Required', 'تأكيد كلمة المرور المطلوبة', 'Bevestig het wachtwoord', 'Confirmar Senha Necessária', NULL),
(815, 'Web', 'password_confirm_password_should_be_same', 'Password Confirm Password Should Be Same', 'كلمة المرور تأكيد كلمة المرور يجب أن تكون هي نفسها', 'Mật khẩu Confirm Password Should Be Same', 'A senha de confirmação de senha deve ser a mesma', NULL),
(816, 'Web', 'min_length6', 'Min Length6', 'دقيقة طول 6', 'phút Length6', 'Min Length6', NULL),
(817, 'Web', 'min_length_6', 'Min Length 6', 'دقيقة طول 6', 'Min Lengte 6', 'Min Comprimento 6', NULL),
(818, 'Web', 'min_length_should_be_6', 'Min Length Should Be 6', 'يجب أن يكون طول الحد الأدنى 6', 'Min lengte moet 6', 'O comprimento mínimo deve ser 6', NULL),
(819, 'Web', 'login_signup', 'Login Signup', 'الدخول التسجيل فى الموقع', 'Đăng nhập Đăng ký', 'Entrar Inscrever-se', NULL),
(820, 'Web', 'reset_password', 'Reset Password', 'إعادة تعيين كلمة المرور', 'Wachtwoord opnieuw instellen', 'Trocar a senha', NULL),
(821, 'Web', 'follow_us', 'Follow Us', 'تابعنا', 'Volg ons', 'Siga-nos', NULL),
(822, 'Web', 'about_us', 'About Us', 'معلومات عنا', 'Over ons', 'Quem Somos', NULL),
(823, 'Web', 'message', 'Message', 'رسالة', 'bericht', 'mensagem', NULL),
(824, 'Web', 'message_required', 'Message Required', 'الرسالة المطلوبة', 'Yêu cầu nhắn', 'Mensagem necessária', NULL),
(825, 'Web', 'contact_query', 'Contact Query', 'طلب البحث', 'Neem contact op met Query', 'Consulta de contato', NULL),
(826, 'Web', 'your_contact_request_not_sent_due_to_some_technical_issue_please_contact_us_after_some_time_thankyou', 'Your Contact Request Not Sent Due To Some Technical Issue Please Contact Us After Some Time Thankyou', NULL, 'Uw contactpersoon Aanvraag Niet verzonden vanwege een aantal technische probleem neem dan contact met ons op enige tijd na Thankyou', 'Sua solicitação de contato não enviada devido a alguma questão técnica. Contacte-nos depois de algum tempo. Obrigado', NULL),
(827, 'Web', 'my_orders', 'My Orders', 'طلباتي', 'mijn bestellingen', 'minhas ordens', NULL),
(828, 'Web', 'my_points', 'My Points', 'نقاطي', 'điểm của tôi', 'Meus Pontos', NULL),
(829, 'Web', 'my_account', 'My Account', 'حسابي', 'Tài khoản của tôi', 'Minha conta', NULL),
(830, 'Web', 'logout', 'Logout', 'الخروج', 'logout', 'Sair', NULL),
(831, 'Web', 'logged_out_successfully', 'Logged Out Successfully', 'تم تسجيل الخروج بنجاح', 'Succesvol Afgemeld', 'Concluído com sucesso', NULL),
(832, 'Web', 'profile_updated_successfully', 'Profile Updated Successfully', 'تم تحديث الملف الشخصي بنجاح', 'PROFIEL succesvol bijgewerkt', 'Perfil atualizado com sucesso', NULL),
(833, 'Web', 'profile_image', 'Profile Image', 'صورة الملف الشخصي', 'Hồ sơ ảnh', 'Imagem de perfil', NULL),
(834, 'Web', 'old_password', 'Old Password', 'كلمة المرور القديمة', 'oud wachtwoord', 'Senha Antiga', NULL),
(835, 'Web', 'new_password', 'New Password', 'كلمة السر الجديدة', 'Mật khẩu mới', 'Nova senha', NULL),
(836, 'Web', 'new_confirm_password', 'New Confirm Password', 'تأكيد كلمة المرور الجديدة', 'Nieuw wachtwoord bevestigen', 'Nova Confirmar Senha', NULL),
(837, 'Web', 'old_password_required', 'Old Password Required', 'كلمة المرور القديمة المطلوبة', 'Yêu cầu mật khẩu cũ', 'Senha antiga necessária', NULL),
(838, 'Web', 'new_password_required', 'New Password Required', 'كلمة مرور جديدة مطلوبة', 'Yêu cầu mật khẩu mới', 'É necessária nova senha', NULL),
(839, 'Web', 'new_confirm_password_required', 'New Confirm Password Required', 'تأكيد كلمة المرور الجديدة مطلوبة', 'Xác nhận yêu cầu mật khẩu mới', 'É necessária nova senha de confirmação', NULL),
(840, 'Web', 'current_password', 'Current Password', 'كلمة السر الحالية', 'huidig wachtwoord', 'senha atual', NULL),
(841, 'Web', 'record_not_found', 'Record Not Found', 'لم يتم العثور على السجل', 'Record niet gevonden', 'Registro não encontrado', NULL),
(842, 'Web', 'profile_image_is_not_valid_file', 'Profile Image Is Not Valid File', 'ملف الملف الشخصي غير صالح', 'Profile Image bestand is niet geldig', 'A imagem do perfil não é um arquivo válido', NULL),
(843, 'Web', 'change', 'Change', 'يتغيرون', 'Verandering', 'mudança', NULL),
(844, 'Web', 'signup', 'Signup', 'سجل', 'Đăng ký', 'Inscrever-se', NULL),
(845, 'Web', 'referral_code', 'Referral Code', 'كود الإحالة', 'referral Code', 'Código de Referencia', NULL),
(846, 'Web', 'user_points', 'User Points', 'نقاط المستخدم', 'dùng điểm', 'Pontos de usuário', NULL),
(847, 'Web', 'login_into_facebook', 'Login Into Facebook', 'تسجيل الدخول في الفيسبوك', 'Log in op Facebook', 'Entrar no Facebook', NULL),
(848, 'Web', 'login_into_google', 'Login Into Google', 'تسجيل الدخول إلى غوغل', 'Đăng nhập vào Google', 'Entrar no Google', NULL),
(849, 'Web', 'customers', 'Customers', 'الزبائن', 'Klanten', 'clientes', NULL),
(850, 'Web', 'Our_Links', 'Our Links', 'لدينا وصلات', 'onze Links', 'Nossos Links', NULL),
(851, 'Web', 'view_card_images', 'View Card Images', 'عرض صور بطاقة', 'Xem thẻ Images', 'Exibir imagens do cartão', NULL),
(852, 'Web', 'card_image', 'Card image', 'صورة البطاقة', 'Kaart afbeelding', 'Imagem do cartão', NULL),
(853, 'Web', 'add_card', 'Add Card', 'إضافة بطاقة', 'Voeg kaart toe', 'Adicionar cartão', NULL),
(854, 'Web', 'card_image_is_not_valid_file', 'Card image is not valid file', 'صورة البطاقة ليست ملفا صالحا', 'Kaartafbeelding is niet geldig bestand', 'A imagem do cartão não é um arquivo válido', NULL),
(855, 'Web', 'edit_card', 'Edit card', 'تعديل البطاقة', 'Bewerk kaart', 'Editar cartão', NULL),
(856, 'Web', 'street', 'Street', 'شارع', 'straat', 'Rua', NULL),
(857, 'Web', 'house_no_required', 'House no required', 'البيت لا حاجة', 'House niet verplicht', 'Casa não necessária', NULL),
(858, 'Web', 'street_required', 'Street required', 'الشارع مطلوب', 'straat vereist', 'Rua necessária', NULL),
(859, 'Web', 'landmark_required', 'Landmark required', 'لاندمارك المطلوبة', 'landmark vereist', 'É necessário um local de referência', NULL),
(860, 'Web', 'add_address', 'Add address', 'اضف عنوان', 'Voeg adres toe', 'Adicione o endereço', NULL),
(861, 'Web', 'house_no', 'House no', 'رقم المنزل', 'huisnr', 'Casa não', NULL),
(862, 'Web', 'address_saved_successfully', 'Address saved successfully', 'تم حفظ العنوان بنجاح', 'Adres is succesvol opgeslagen', 'Endereço salvas com sucesso', NULL),
(863, 'Web', 'address_deleted_successfully', 'Address deleted successfully', 'تم حذف العنوان بنجاح', 'Adres is succesvol verwijderd', 'Endereço excluído com sucesso', NULL),
(864, 'Web', 'addresses', 'Addresses', 'عناوين', 'adressen', 'endereços', NULL),
(865, 'Web', 'delivery_fee', 'Delivery Fee', 'رسوم التوصيل', 'Bezorgkosten', 'Taxa de entrega', NULL),
(866, 'Web', 'delivery_from_time', 'Delivery From Time', 'التسليم من الوقت', 'Levering Uit Tijd', 'Entrega do tempo', NULL),
(867, 'Web', 'delivery_to_time', 'Delivery to Time', 'التسليم إلى الوقت', 'Levering op tijd', 'Entrega ao tempo', NULL),
(868, 'Web', 'delivery_time_units', 'Delivery Time Units', 'وحدات التسليم في الوقت المحدد', 'Levertijd Eenheden', 'Unidades de tempo de entrega', NULL),
(869, 'Web', 'minutes', 'Minutes', 'الدقائق', 'notulen', 'Minutos', NULL),
(870, 'Web', 'hours', 'Hours', 'ساعات', 'uur', 'Horas', NULL),
(871, 'Web', 'payment_type_required', 'Payment type required', 'نوع الدفع مطلوب', 'Cần loại thanh toán', 'Tipo de pagamento exigido', NULL),
(872, 'Web', 'payment_methods', 'Payment Methods', 'طرق الدفع', 'betalingsmethoden', 'Métodos de Pagamento', NULL),
(873, 'Web', 'online', 'Online', 'عبر الانترنت', 'trực tuyến', 'Conectados', NULL),
(874, 'Web', 'cash_on_delivery', 'Cash On Delivery', 'الدفع عن الاستلام', 'Contant bij levering', 'Em dinheiro na entrega', NULL),
(875, 'Web', 'card_on_delivery', 'Card on Delivery', 'بطاقة على التسليم', 'Kaart bij levering', 'Cartão na Entrega', NULL),
(876, 'Web', 'payment_methods_required', 'Payment Methods Required', 'طرق الدفع مطلوبة', 'Yêu cầu Phương thức thanh toán', 'Métodos de pagamento necessários', NULL),
(877, 'Web', 'site_logo_file_is_not_valid', 'Site logo file is not valid', 'ملف شعار الموقع غير صالح', 'Tập tin logo trang web không hợp lệ', 'O arquivo do logotipo do site não é válido', NULL),
(878, 'Web', 'fevicon_file_is_not_valid', 'Fevicon file is not valid', 'ملف فافيكون غير صالح', 'Favicon-bestand is niet geldig', 'O arquivo Favicon não é válido', NULL),
(879, 'Web', 'no_payment_methods_available', 'No Payment Methods Available', 'لا طرق الدفع المتاحة', 'Không Phương thức thanh toán sẵn', 'Não há métodos de pagamento disponíveis', NULL),
(880, 'Web', 'paypal_email_required', 'Paypal email required', 'بايبال البريد الإلكتروني المطلوبة', 'Cần Paypal email', 'É necessário o email Paypal', NULL),
(881, 'Web', 'country_code_is_required', 'Country code is required', 'رمز البلد مطلوب', 'Landcode is verplicht', 'Código do país é necessário', NULL),
(882, 'Web', 'for_app', 'For app', 'للتطبيق', 'Voor app', 'Para o aplicativo', NULL),
(883, 'Web', 'app_details', 'App details', 'تفاصيل التطبيق', 'App gegevens', 'Detalhes do aplicativo', NULL),
(884, 'Web', 'paypal_details_for_app', 'Paypal details for app', 'باي بال تفاصيل التطبيق', 'Chi tiết Paypal cho ứng dụng', 'Detalhes do Paypal para o aplicativo', NULL),
(885, 'Web', 'is_most_selling_item', 'Is Most Selling item', 'هو الأكثر مبيعا البند', 'De meeste verkoopt voorwerp', 'O item mais vendido', NULL),
(886, 'Web', 'order_successfully_saved', 'Order successfully saved', 'تم حفظ الطلب بنجاح', 'Bestel succesvol opgeslagen', 'Pedido salvo com sucesso', NULL),
(887, 'Web', 'most_selling_items', 'Most Selling Items', 'معظم السلع مبيعا', 'De meeste voorwerpen te verkopen', 'Itens mais vendidos', NULL),
(888, 'Web', 'view_orders', 'View Orders', 'عرض الطلبات', 'Xem đơn đặt hàng', 'Ver Pedidos', NULL),
(889, 'Web', 'order_no', 'Order No', 'رقم الطلب', 'volgnummer', 'Item de ordem excluído com sucesso', NULL),
(890, 'Web', 'order_date', 'Order Date', 'تاريخ الطلب', 'ngày đặt hàng', 'Data do pedido', NULL),
(891, 'Web', 'order_time', 'Order Time', 'وقت الطلب', 'để Time', 'Hora da ordem', NULL),
(892, 'Web', 'new_orders', 'New Orders', 'طلبات جديدة', 'Đơn đặt hàng mới', 'Novas ordens', NULL),
(893, 'Web', 'under_process_orders', 'Under Process Orders', 'ضمن أوامر العملية', 'Theo đơn đặt hàng Process', 'Em ordens de processo', NULL),
(894, 'Web', 'out_to_deliver_orders', 'Out to Deliver Orders', 'خارج لتسليم أوامر', 'Uit te leveren orders', 'Saída para Entregar Pedidos', NULL),
(895, 'Web', 'delivered_orders', 'Delivered Orders', 'الطلبات المسلمة', 'Bestellingen geleverd', 'Pedidos Entregues', NULL);
INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`, `arabic`, `dutch`, `portuguese`, `telugu`) VALUES
(896, 'Web', 'cancelled_orders', 'Cancelled Orders', 'الطلبات الملغاة', 'Geannuleerde bestellingen', 'Ordens canceladas', NULL),
(897, 'Web', 'view_order', 'View Order', 'مشاهدة الطلب', 'Bestelling bekijken', 'Ver ordem', NULL),
(898, 'Web', 'delivery_cost', 'Delivery Cost', 'تكلفة التوصيل', 'Bezorgkosten', 'Custo de entrega', NULL),
(899, 'Web', 'is_points_redeemed', 'Is Points Redeemed', 'يتم استرداد النقاط', 'Verlost Points', 'Os pontos são resgatados', NULL),
(900, 'Web', 'option', 'Option', 'اختيار', 'optie', 'Opção', NULL),
(901, 'Web', 'item_quantity', 'Item Quantity', 'البند الكمية', 'Item Hoeveelheid', 'Quantidade do item', NULL),
(902, 'Web', 'total_cost', 'Total Cost', 'التكلفة الإجمالية', 'Tổng chi phí', 'Custo total', NULL),
(903, 'Web', 'is_deleted', 'Is Deleted', 'يتم حذف', 'wordt Verwijderde', 'Esta deletado', NULL),
(904, 'Web', 'order_items', 'Order Items', 'طلب بضاعة', 'để mục', 'Itens de ordem', NULL),
(905, 'Web', 'order_addons', 'Order Addons', 'أوردرز أدونز', 'Bestel Addons', 'Addons de ordem', NULL),
(906, 'Web', 'order_offers', 'Order Offers', 'طلب العروض', 'Bestel Aanbiedingen', 'Ofertas de pedidos', NULL),
(907, 'Web', 'offer_quantity', 'Offer Quantity', 'كمية العرض', 'Cung cấp Số lượng', 'Quantidade de oferta', NULL),
(908, 'Web', 'no_of_products', 'No of Products', 'لا من المنتجات', 'Geen van de producten', 'Não há produtos', NULL),
(909, 'Web', 'order_update', 'Order update', 'تحديث الطلب', 'Bestel bijwerken', 'Atualização da encomenda', NULL),
(910, 'Web', 'update_order_status', 'Update order status', 'تحديث حالة الطلب', 'Cập nhật tình trạng trật tự', 'Atualizar o status da ordem', NULL),
(911, 'Web', 'processing', 'Processing', 'معالجة', 'xử lý', 'Em processamento', NULL),
(912, 'Web', 'out_to_deliver', 'Out to Deliver', 'خارج لتسليم', 'Out để Cung cấp', 'Out to Deliver', NULL),
(913, 'Web', 'delivered', 'Delivered', 'تم التوصيل', 'geleverd', 'Entregue', NULL),
(914, 'Web', 'cancelled', 'Cancelled', 'تم الالغاء', 'Geannuleerd', 'Cancelado', NULL),
(915, 'Web', 'please_select_order_status', 'Please select order status', 'يرجى تحديد حالة الطلب', 'Vui lòng chọn trạng thái đơn hàng', 'Selecione o status do pedido', NULL),
(916, 'Web', 'order_status_updated_successfully', 'Order status updated successfully', 'تم تحديث حالة الطلب بنجاح', 'Tình trạng đặt hàng cập nhật thành công', 'Estado do pedido atualizado com sucesso', NULL),
(917, 'Web', 'order_status', 'Order status', 'حالة الطلب', 'orderstatus', 'Status do pedido', NULL),
(918, 'Web', 'email_not_send_to_user', 'Email not send to user', 'البريد الإلكتروني لا ترسل إلى المستخدم', 'E-mail niet naar gebruiker sturen', 'E-mail não enviado ao usuário', NULL),
(919, 'Web', 'process', 'Process', 'معالج', 'Process', 'Processo', NULL),
(920, 'Web', 'earning_points_for_customer_for_an_order', 'Earning Points for Customer for an Order', 'كسب نقاط للعميل لأمر', 'Verdien punten voor de klant voor een bestelling', 'Ganhando Pontos para Cliente por uma Ordem', NULL),
(921, 'Web', 'print', 'Print', 'طباعة', 'afdruk', 'Impressão', NULL),
(922, 'Web', 'stripe_cards', 'Stripe Cards', 'بطاقات الشريط', 'streep Cards', 'Cartões Stripe', NULL),
(923, 'Web', 'point_logs_of', 'Point Logs of', 'سجلات نقطة', 'Point Logs van', 'Pontos de registro de', NULL),
(924, 'Web', 'points', 'Points', 'نقاط', 'punten', 'Pontos', NULL),
(925, 'Web', 'transaction_type', 'Transaction Type', 'نوع المعاملة', 'Loại giao dịch', 'Tipo de transação', NULL),
(926, 'Web', 'referral_users', 'Referral Users', 'إحالة المستخدمين', 'người dùng Referral', 'Usuários de Referência', NULL),
(927, 'Web', 'refer_user', 'Refer User', 'ارجع إلى المستخدم', 'Tham khảo tài', 'Consulte o usuário', NULL),
(928, 'Web', 'referred_by', 'Referred by', 'نسب من قبل', 'Aangebracht door', 'Referido por', NULL),
(929, 'Web', 'date', 'Date', 'تاريخ', 'ngày', 'Encontro', NULL),
(930, 'Web', 'user_arleady_existed_with_this_email_id', 'User arleady existed with this email id', 'المستخدم أرليدي موجودة مع هذا البريد الإلكتروني معرف', 'Tài arleady tồn tại với id email này', 'O usuário arleady existiu com este ID de e-mail', NULL),
(931, 'Web', 'please_enter_valid_email_id', 'Please enter valid email id', 'الرجاء إدخال معرف بريد إلكتروني صالح', 'Vui lòng nhập id email hợp lệ', 'Digite o ID de e-mail válido', NULL),
(932, 'Web', 'no_user_found_with_this_referral_code', 'No user found with this referral code', 'لم يتم العثور على مستخدم باستخدام رمز الإحالة هذا', 'Không tìm thấy Với mã giới thiệu này sử dụng', 'Nenhum usuário encontrado com este código de referência', NULL),
(933, 'Web', 'orders_overview', 'Orders Overview', 'نظرة عامة على الأوامر', 'Đơn đặt hàng Tổng quan', 'Visão geral das encomendas', NULL),
(934, 'Web', 'no_items_available_please_contact_administration', 'No items available please contact administration', 'لا توجد عناصر متوفرة يرجى الاتصال بالإدارة', 'Không có mục nào có sẵn quản lý liên lạc hãy', 'Não há itens disponíveis entre em contato com a administração', NULL),
(935, 'Web', 'show_all', 'Show all', 'عرض الكل', 'toon alles', 'Mostre tudo', NULL),
(936, 'Web', 'add_to_cart', 'Add to cart', 'أضف إلى السلة', 'Voeg toe aan winkelmandje', 'Adicionar ao carrinho', NULL),
(937, 'Web', 'order_can_not_be_booked_please_follow_restaurant_timings', 'Order can not be booked please follow restaurant timings', 'لا يمكن حجز النظام يرجى اتباع توقيت المطعم', 'Bestelling kan niet worden geboekt Volg timings restaurant', 'O pedido não pode ser reservado, siga os horários do restaurante', NULL),
(938, 'Web', 'get_languageword', 'Get language word', 'الحصول على كلمة اللغة', 'Krijg taalwoord', 'Obter palavra de idioma', NULL),
(939, 'Web', 'thank_you', 'Thank you', 'شكرا', 'dank u wel', 'Obrigado', NULL),
(940, 'Web', 'your_order_is_received_we_will_contact_you_soon', 'Your order is received we will contact you soon', NULL, 'Đơn hàng của bạn đã nhận được, chúng tôi sẽ liên lạc với bạn sớm', 'O seu pedido é recebido, entraremos em contato em breve', NULL),
(941, 'Web', 'sms_sent_to_user', 'Sms sent to user', 'الرسائل القصيرة المرسلة إلى المستخدم', 'SMS gửi đến người dùng', 'Sms enviado ao usuário', NULL),
(942, 'Web', 'order_item_deleted_successfully', 'Order item deleted successfully', 'تم حذف عنصر الطلب بنجاح', 'Bestel artikel succesvol verwijderd', 'Item de ordem excluído com sucesso', NULL),
(943, 'Web', 'Activation_Email_Sent', 'Activation Email Sent', 'تم إرسال البريد الإلكتروني للتفعيل', 'Activatie-e-mail verzonden', 'Activation Email enviado', NULL),
(944, 'Web', 'arabic', 'Arabic', 'عربى', 'Arabisch', 'árabe', NULL),
(945, 'Web', 'dutch', 'Dutch', 'هولندي', 'Nederlands', 'holandês', NULL),
(946, 'Web', 'records_not_saved', 'Records not saved', 'لم يتم حفظ السجلات', 'Records niet opgeslagen', 'Registros não guardados', NULL),
(947, 'Web', 'email_sent_to_user', 'Email sent to user', 'تم إرسال البريد الإلكتروني إلى المستخدم', 'E-mail verzonden naar gebruiker', 'E-mail enviado ao usuário', NULL),
(948, 'Web', 'customer_wise_reports', 'Customer Wise Reports', 'تقارير العملاء الحكيمة', 'Klantenspecifieke rapporten', 'Relatórios sábios do cliente', NULL),
(949, 'Web', 'please_enter_valid_value', 'Please enter valid value', 'الرجاء إدخال قيمة صالحة', 'Voer een geldige waarde', 'Insira valor válido', NULL),
(950, 'Web', 'facebook_app_id', 'Facebook App id', 'فاسيبوك أب إد', 'Facebook App ID', 'ID do aplicativo do Facebook', NULL),
(951, 'Web', 'facebook_app_secret', 'Facebook App Secret', 'الفيسبوك التطبيق السري', 'Facebook App bí mật', 'Facebook App Secret', NULL),
(952, 'Web', 'facebook_app_id_required', 'Facebook app id required', 'مطلوب معرف التطبيق الفيسبوك', 'Facebook app id vereist', 'É necessário o ID do aplicativo do Facebook', NULL),
(953, 'Web', 'facebook_app_secret_required', 'Facebook App Secret Required', 'الفيسبوك التطبيق السري المطلوبة', 'Facebook App bí mật buộc', 'Secretário de aplicação do Facebook necessário', NULL),
(954, 'Web', 'order_addon_item_deleted_successfully', 'Order addon item deleted successfully', 'تم حذف عنصر إضافة الطلب بنجاح', 'Để mục addon xóa thành công', 'Ordem addon item excluído com sucesso', NULL),
(955, 'Web', 'units', 'Units', 'وحدات', 'eenheden', 'Unidades', NULL),
(956, 'Web', 'profile_image_updated_successfully', 'Profile image updated successfully', 'تم تحديث صورة الملف الشخصي بنجاح', 'Ảnh hồ sơ được cập nhật thành công', 'Imagem de perfil atualizada com sucesso', NULL),
(957, 'Web', 'language_code', 'Language Code', 'رمز اللغة', 'Taalcode', 'Código de idioma', NULL),
(958, 'Web', 'language_code_required', 'Language code required', 'رمز اللغة مطلوب', 'Cần mã ngôn ngữ', 'Código de idioma necessário', NULL),
(959, 'Web', 'title_required', 'Title required', 'العنوان مطلوب', 'Title required', 'Título requerido', NULL),
(960, 'Web', 'language_required', 'Language required', 'اللغة المطلوبة', 'cần ngôn ngữ', 'Idioma exigido', NULL),
(961, 'Web', 'ios_urlxss_clean', 'Ios url|xss clean', 'يوس ورل | شس نظيفة', 'Ios url | xss schoon', 'Ios url | xss clean', NULL),
(962, 'Web', 'android_urlxss_clean', 'Android url|xss clean', 'الروبوت ورل | كسس نظيفة', 'Android url | xss schoon', 'Android url | xss clean', NULL),
(963, 'Web', 'points_for_referred_person', '	points for referred person', 'نقاط للشخص المشار إليه', 'Bedoelde aantal punten voor de persoon', 'Pontos para pessoa referida', NULL),
(964, 'Web', 'view_item_types', 'View Item Types', 'عرض أنواع العناصر', 'Các loại Xem mục', 'Exibir tipos de itens', NULL),
(965, 'Web', 'add_item_type', 'Add Item Type', 'إضافة نوع العنصر', 'Item toevoegen Type', 'Adicionar Item Tipo', NULL),
(966, 'Web', 'add_item_types', 'Add Item Types', 'إضافة أنواع البند', 'Item typen toevoegen', 'Adicionar Tipos de Item', NULL),
(967, 'Web', 'no_items_available', 'No items available', 'لا توجد عناصر متوفرة', 'Geen items beschikbaar', 'Nenhum item disponível', NULL),
(968, 'Web', 'item_types', 'Item Types', 'أنواع العناصر', 'itemtypen', 'Tipos de Itens', NULL),
(969, 'Web', 'email_sms_not_send_to_user', 'Email sms not send to user', 'البريد الإلكتروني الرسائل القصيرة لا ترسل إلى المستخدم', 'E-mail sms sturen niet naar gebruiker', 'Sms de email não enviados ao usuário', NULL),
(970, 'Web', 'order_offer_item_deleted_successfully', 'Order offer item deleted successfully', 'تم حذف عنصر العرض بنجاح', 'Mục để xóa cung cấp thành công', 'Peça item de oferta excluído com sucesso', NULL),
(971, 'Web', 'edit_item_type', 'Edit item type', 'تعديل نوع العنصر', 'Bewerk item type', 'Editar tipo de item', NULL),
(972, 'Web', 'total_orders_amount', 'Total orders amount', 'إجمالي كمية الطلبات', 'Totaal bestellingen bedrag', 'Quantidade de pedidos totais', NULL),
(973, 'Web', 'total_items_amount', 'Total items amount', 'مجموع كمية البنود', 'Tổng số mặt hàng lượng', 'Quantidade de itens totais', NULL),
(974, 'Web', 'no_of_points_redeemed', 'No of points redeemed', 'عدد النقاط المستردة', 'Số điểm cứu chuộc', 'Não há pontos resgatados', NULL),
(975, 'Web', 'points_value', 'Points value', 'قيمة النقاط', 'giá trị điểm', 'Valor de pontos', NULL),
(976, 'Web', 'google_client_id', 'Google Client id', 'معرف عميل غوغل', 'Google Client id', 'ID do cliente do Google', NULL),
(977, 'Web', 'google_client_secret', 'Google Client Secret', 'سر عميل غوغل', 'Google Client Secret', 'Google Client Secret', NULL),
(978, 'Web', 'google_client_id_required', 'Google Client Id Required', 'معرف عميل غوغل مطلوب', 'Google Client ID Required', 'ID do cliente do Google necessária', NULL),
(979, 'Web', 'google_client_secret_required', 'Google Client Secret Required', 'مطلوب عميل غوغل السري', 'Google Client Secret Required', 'Google Client Secret Necessário', NULL),
(980, 'Web', 'no_offers_available_please_contact_administration', 'No offers available please contact administration', 'لا تتوفر عروض يرجى الاتصال الإدارة', 'Geen aanbiedingen beschikbaar Please contact administratie', 'Não há ofertas disponíveis, entre em contato com a administração', NULL),
(981, 'Web', 'Account_is_inactive', 'Account is inactive', 'الحساب غير نشط', 'Account is inactief', 'Conta está inativa', NULL),
(982, 'Web', 'login_success', 'Login success', 'النجاح في تسجيل الدخول', 'Inloggen Succes', 'Sucesso de login', NULL),
(983, 'Web', 'Incorrect_Login', 'Incorrect Login', 'تسجيل الدخول غير صحيح', 'onjuiste Inloggen', 'Login incorreto', NULL),
(984, 'Web', 'Password_Successfully_Changed', 'Password Successfully Changed', 'الرقم السري تغير بنجاح', 'Mật khẩu thay đổi thành công', 'Senha mudada com sucesso', NULL),
(985, 'Web', 'Old_password_is_wrong', '##Old password is wrong##', 'كلمة المرور القديمة غير صحيحة', 'Oud wachtwoord is verkeerd', 'Senha antiga está errada', NULL),
(986, 'Web', 'restaurant_opening_hours', 'Restaurant opening hours', 'ساعات عمل المطعم', 'Giờ nhà hàng mở', 'Horário de funcionamento do restaurante', NULL),
(987, 'Web', 'No_Orders', 'No Orders', 'لا أوامر', 'không có đơn đặt hàng', 'Sem pedidos', NULL),
(988, 'Web', 'Order_Details', 'Order Details', 'تفاصيل الطلب', 'order Details', 'detalhes do pedido', NULL),
(989, 'Web', 'admin_panel', 'Admin panel', 'لوحة الادارة', 'bảng quản trị', 'Painel de administração', NULL),
(990, 'Web', 'product_details', 'Product details', 'تفاصيل المنتج', 'hoe gaat het met jou', 'Detalhes do produto', NULL),
(991, 'Web', 'sub_total', 'Sub total', 'المجموع الفرعي', 'tổng phụ', 'subtotal', NULL),
(992, 'Web', 'grand_total', 'Grand total', 'المبلغ الإجمالي', 'algemeen totaal', 'total geral', NULL),
(993, 'Web', 'points_redeemed', 'Points redeemed', 'النقاط المستردة', 'điểm cứu chuộc', 'Pontos resgatados', NULL),
(994, 'Web', 'points_discount', 'Points discount', 'نقاط الخصم', 'điểm giảm giá', 'Desconto de pontos', NULL),
(995, 'Web', 'address_details', 'Address details', 'تفاصيل العنوان', 'Adresgegevens', 'endereço', NULL),
(996, 'Web', 'new_address', 'New address', 'عنوان جديد', 'địa chỉ mới', 'Novo endereço', NULL),
(997, 'Web', 'house_number_required', 'House number required', 'رقم المنزل مطلوب', 'Huisnummer verplicht', 'Número de casa necessário', NULL),
(998, 'Web', 'pincode', 'PIN Code', 'رمز بين', 'Mã PIN', 'Código PIN', NULL),
(999, 'Web', 'addons', 'Add-ons', 'إضافات', 'Add-ons', 'Add-ons', NULL),
(1000, 'Web', 'points_earned_for_buy_an_item_order', 'Points earned for buy an item order', 'النقاط المكتسبة لشراء أمر البند', 'Punten verdiend voor een item koopt order', 'Pontos ganhos por comprar uma ordem de item', NULL),
(1001, 'Web', 'home_images', 'Home Images', 'الصور الرئيسية', 'Afbeeldingenlocatie', 'Home Images', NULL),
(1002, 'Web', 'add_image', 'Add image', 'إضافة صورة', 'Voeg afbeelding toe', 'Adicionar imagem', NULL),
(1003, 'Web', 'image_uploaded_successfully', 'Image uploaded successfully', 'تم تحميل الصورة بنجاح', 'Afbeelding geüpload', 'Imagem carregada com sucesso', NULL),
(1004, 'Web', 'image_status_updated_successfully', 'Image status updated successfully', 'تم تحديث حالة الصورة بنجاح', 'Afbeelding Status bijgewerkt', 'Status da imagem atualizado com sucesso', NULL),
(1005, 'Web', 'back', 'Back', 'الى الخلف', 'Terug', 'Costas', NULL),
(1006, 'Web', 'points_redeemed_for_buy_an_item_order', 'Points redeemed for buy an item order', 'النقاط المستردة لشراء أمر السلعة', 'Punten ingewisseld voor een item koopt order', 'Pontos resgatados por comprar uma ordem de item', NULL),
(1007, 'Web', 'please_provide_delivery_address_details', 'Please provide delivery address details', 'يرجى تقديم تفاصيل عنوان التسليم', 'Vui lòng cung cấp chi tiết địa chỉ giao hàng', 'Forneça detalhes do endereço de entrega', NULL),
(1008, 'Web', 'saved_addresses', 'Saved addresses', 'العناوين المحفوظة', 'opgeslagen adressen', 'Endereços salvos', NULL),
(1009, 'App', 'referal_code', 'Referal Code', 'كود الإحالة', 'Mã giới thiệu', 'Código de Referencia', NULL),
(1010, 'App', 'sign_up', 'Sign up', 'سجل', 'ghi tên', 'inscrever-se', NULL),
(1011, 'App', 'cart_list', 'Cart List', 'قائمة السلة', 'Winkelwagen lijst', 'Lista de carrinho', NULL),
(1012, 'App', 'new_user', 'New User', 'مستخدم جديد', 'nieuwe gebruiker', 'Novo usuário', NULL),
(1013, 'App', 'terms_and_conditions', 'Terms and Conditions', 'الأحكام والشروط', 'Voorwaarden', 'Termos e Condições', NULL),
(1014, 'App', 'version', 'Version', 'الإصدار', 'phiên bản', 'Versão', NULL),
(1015, 'App', 'confirm_new_password', 'Confirm New Password', 'تأكيد كلمة المرور الجديدة', 'Bevestig nieuw wachtwoord', 'Confirme a nova senha', NULL),
(1016, 'App', 'no_orders_found', 'No Orders Found', 'لم يتم العثور على أية طلبات', 'Geen bestellingen gevonden', 'Nenhuma ordem encontrada', NULL),
(1017, 'App', 'order_history', 'Order History', 'تاريخ الطلب', 'Bestel Geschiedenis', 'Histórico de pedidos', NULL),
(1018, 'App', 'order_details', 'Order Details', 'تفاصيل الطلب', 'Đặt hàng Chi tiết', 'detalhes do pedido', NULL),
(1019, 'App', 'order_products', 'Order Products', 'ترتيب المنتجات', 'Bestel producten', 'Encomendar Produtos', NULL),
(1020, 'App', 'offer_products', 'Offer Products', 'عرض المنتجات', 'aanbod producten', 'Oferecer produtos', NULL),
(1021, 'App', 'time', 'Time', 'زمن', 'tijd', 'Tempo', NULL),
(1022, 'App', 'payment_type', 'Payment Type', 'نوع الدفع', 'betaling Type', 'Tipo de pagamento', NULL),
(1023, 'App', 'order_address', 'Order Address', 'عنوان الطلب', 'để Địa chỉ', 'Endereço da ordem', NULL),
(1025, 'Web', 'order_address', 'Order Address', 'عنوان الطلب', 'Bestel Adres', 'Endereço da ordem', NULL),
(1026, 'App', 'home', 'Home', 'الصفحة الرئيسية', 'thuis', 'Casa', NULL),
(1027, 'App', 'first_name', 'First Name', 'الاسم الاول', 'Voornaam', 'Primeiro nome', NULL),
(1028, 'App', 'last_name', 'Last Name', 'الكنية', 'Achternaam', 'Último nome', NULL),
(1029, 'App', 'email', 'Email', 'البريد الإلكتروني', 'E-mail', 'O email', NULL),
(1030, 'App', 'phone', 'Phone', 'هاتف', 'telefoon', 'telefone', NULL),
(1031, 'App', 'password', 'Password', 'كلمه السر', 'wachtwoord', 'Senha', NULL),
(1032, 'App', 'confirm_password', 'Confirm Password', 'تأكيد كلمة المرور', 'bevestig wachtwoord', 'Confirme a Senha', NULL),
(1033, 'App', 'logout', 'Logout', 'الخروج', 'Logout ', 'Sair', NULL),
(1034, 'App', 'login', 'Login', 'تسجيل الدخول', 'đăng nhập', 'Entrar', NULL),
(1036, 'App', 'about_us', 'About Us', 'معلومات عنا', 'over ons', 'Quem Somos', NULL),
(1037, 'App', 'change_langauage', 'Change Language', 'غير اللغة', 'Taal wijzigen', 'Mudar idioma', NULL),
(1038, 'App', 'forgot_password', 'Forgot Password', 'هل نسيت كلمة المرور', 'Wachtwoord vergeten', 'Esqueceu a senha', NULL),
(1039, 'App', 'address', 'Address', 'عنوان', 'Adres', 'endereço', NULL),
(1040, 'App', 'fax', 'Fax', 'فاكس', 'Fax', 'Fax', NULL),
(1041, 'App', 'current_password', 'Current Password', 'كلمة السر الحالية', 'huidig wachtwoord', 'senha atual', NULL),
(1042, 'App', 'new_password', 'New Password', 'كلمة السر الجديدة', 'nieuw wachtwoord', 'Nova senha', NULL),
(1043, 'App', 'change', 'Change', 'يتغيرون', 'Verandering', 'mudança', NULL),
(1044, 'App', 'delivered', 'Delivered', 'تم التوصيل', 'geleverd', 'Entregue', NULL),
(1045, 'App', 'cancelled', 'Cancelled', 'تم الالغاء', 'Geannuleerd', 'Cancelado', NULL),
(1046, 'App', 'processing', 'Processing', 'معالجة', 'Processing', 'Em processamento', NULL),
(1047, 'App', 'addons', 'Add-ons', 'إضافات', 'Add-ons', 'Add-ons', NULL),
(1048, 'App', 'offers', 'Offers', 'عروض', 'Mời', 'Ofertas', NULL),
(1049, 'App', 'cost', 'Cost', 'كلفة', 'Kosten', 'Custo', NULL),
(1050, 'App', 'order_no', 'Order No', 'رقم الطلب', 'để Không', 'Número de ordem', NULL),
(1051, 'App', 'points_redeemed', 'Points redeemed', 'النقاط المستردة', 'punten Redeemed', 'Pontos resgatados', NULL),
(1052, 'App', 'no_of_points_redeemed', 'No of points redeemed', 'عدد النقاط المستردة', 'Geen punten ingewisseld', 'Não há pontos resgatados', NULL),
(1053, 'App', 'order_status', 'Order status', 'حالة الطلب', 'trạng thái đơn hàng', 'Status do pedido', NULL),
(1055, 'Web', 'first name', 'First name', 'الاسم الاول', 'voornaam', 'Primeiro nome', NULL),
(1056, 'Web', 'Incorrect Login', 'Incorrect Login', 'تسجيل الدخول غير صحيح', 'onjuiste Inloggen', 'Login incorreto', NULL),
(1057, 'Web', 'profile_picture', 'Profile picture', 'الصوره الشخصيه', 'Profile picture', 'Foto do perfil', NULL),
(1058, 'Web', 'please_upload_profile_picture', 'Please upload profile picture', 'الرجاء تحميل صورة الملف الشخصي', 'Hãy tải lên hình ảnh hồ sơ cá nhân', 'Carregue foto de perfil', NULL),
(1059, 'Web', 'please_upload_valid_profile_picture', 'Please upload valid profile picture', 'الرجاء تحميل صورة ملف شخصي صالحة', 'Hãy tải lên hình ảnh hồ sơ hợp lệ', 'Carregue uma imagem de perfil válida', NULL),
(1060, 'Web', 'phone_number_required', 'Phone number required', 'رقم الهاتف مطلوب', 'Telefoonnummer vereist', 'Necessário número de telefone', NULL),
(1061, 'Web', 'min_length_should_be 6', 'Min length should be 6', 'يجب أن يكون طول الحد الأدنى 6', 'Nên Chiều dài tối thiểu 6', 'O comprimento mínimo deve ser 6', NULL),
(1062, 'Web', 'Activation Email Sent', 'Activation Email Sent', 'تم إرسال البريد الإلكتروني للتفعيل', 'Activatie E-mail verzonden', 'Activation Email enviado', NULL),
(1063, 'Web', 'points_for_registration', 'Points for registration', 'نقاط للتسجيل', 'Punten voor registratie', 'Pontos para inscrição', NULL),
(1064, 'Web', 'points_for_referred_user', 'Points for referred user', 'نقاط للمستخدم المشار إليه', 'Điểm cho thành viên giới thiệu', 'Pontos para o referido usuário', NULL),
(1065, 'Web', 'points_for_referred_by_user', 'Points for referred by user', 'نقاط المشار إليها من قبل المستخدم', 'Điểm cho giới thiệu của thành viên', 'Pontos a serem referidos pelo usuário', NULL),
(1066, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings', 'كسب إعدادات تحويل النقاط', 'Punten verdienen conversie-instellingen', 'Configurações de conversão de pontos de ganhos', NULL),
(1067, 'Web', 'add-ons', 'Add-ons', 'إضافات', 'Add-ons', 'Add-ons', NULL),
(1068, 'Web', 'points_earned_for_first_order', 'Points earned for first order', 'النقاط المكتسبة من الدرجة الأولى', 'Điểm thu cho đơn đặt hàng đầu tiên', 'Pontos ganhos pela primeira ordem', NULL),
(1069, 'Web', 'delivery_address', 'Delivery address', 'عنوان التسليم', 'Bezorgadres', 'Endereço de entrega', NULL),
(1070, 'Web', 'payment_method', 'Payment method', 'طريقة الدفع او السداد', 'phương thức thanh toán', 'Método de pagamento', NULL),
(1071, 'Web', 'add_ons', 'Add ons', 'إضافة إضافات', 'Voeg ons toe', 'add ons', NULL),
(1072, 'Web', 'points_returned_for_cancelled_an_item_order', 'Points returned for cancelled an item order', 'تم إرجاع النقاط لإلغاء طلب عنصر', 'Điểm lại một mục cho đơn đặt hàng bị hủy bỏ', 'Pontos retornados para cancelamento de uma ordem de item', NULL),
(1073, 'Web', 'ios_url|xss_clean', 'Ios url|xss clean', 'يوس ورل | شس نظيفة', 'Ios url | xss schoon', 'Ios url | xss clean', NULL),
(1074, 'Web', 'android_url|xss_clean', 'Android url|xss clean', 'الروبوت ورل | كسس نظيفة', 'Android url | xss schoon', 'URL do Android | Xss limpo', NULL),
(1075, 'Web', '	points_for_referring_person', 'points for referring person', 'نقاط لإحالة الشخص', 'Verwijzend punten voor persoon', 'Referindo pontos para pessoa', NULL),
(1076, 'Web', '	points_for_referred_person', 'points for referred person', 'نقاط للشخص المشار إليه', 'Punten om door iemand te verwijzen', 'pontos mencionados para pessoa', NULL),
(1077, 'Web', 'login success', 'Login success', 'النجاح في تسجيل الدخول', 'Đăng nhập thành công', 'Sucesso de login', NULL),
(1078, 'Web', 'No Orders', 'No Orders', 'لا أوامر', 'không có đơn đặt hàng', 'Sem pedidos', NULL),
(1079, 'Web', 'Order Details', 'Order Details', 'تفاصيل الطلب', 'Đặt hàng Chi tiết', 'detalhes do pedido', NULL),
(1080, 'Web', 'Address deleted successfully', 'Address deleted successfully', 'تم حذف العنوان بنجاح', 'Adres succesvol verwijderd', 'Endereço excluído com sucesso', NULL),
(1081, 'Web', 'Address added successfully', 'Address added successfully', 'تمت إضافة العنوان بنجاح', 'Adres succesvol toegevoegd', 'Endereço adicionado com sucesso', NULL),
(1082, 'App', 'add_address', 'Add address', 'اضف عنوان', 'Voeg adres toe', 'Adicione o endereço', NULL),
(1083, 'App', 'save', 'Save', 'حفظ', 'Lưu', 'Salve ', NULL),
(1084, 'App', 'pincode', 'Pincode', 'الرقم السري', 'pincode', 'Pincode', NULL),
(1085, 'App', 'locality', 'Locality', 'مكان', 'plaats', 'Localidade', NULL),
(1086, 'App', 'city', 'City', 'مدينة', 'thành phố', 'Cidade', NULL),
(1087, 'App', 'landmark', 'Landmark', 'معلم معروف', 'mijlpaal', 'Ponto de referência', NULL),
(1088, 'App', 'street', 'Street', 'شارع', 'đường phố', 'Rua', NULL),
(1089, 'App', 'cancel', 'Cancel', 'إلغاء', 'Annuleer', 'Cancelar', NULL),
(1090, 'App', 'delete', 'Delete', 'حذف', 'Verwijder', 'Excluir', NULL),
(1091, 'App', 'do_you_want_to_delete_address', 'Do you want to delete address', 'هل تريد حذف العنوان', 'Wilt u adres verwijderen', 'Deseja excluir o endereço', NULL),
(1092, 'App', 'order_offers', 'Order Offers', 'طلب العروض', 'Chào trật tự', 'Ofertas de pedidos', NULL),
(1093, 'App', 'user_profile', 'User Profile', 'ملف تعريفي للمستخدم', 'waarnemer Profiel', 'Perfil de usuário', NULL),
(1094, 'App', 'house_no', 'House No', 'رقم المنزل', 'huisnr', 'Casa Não', NULL),
(1095, 'App', 'select_language', 'Select Language', 'اختار اللغة', 'Hồ sơ được lựa chọn xóa thành công', 'Selecione o idioma', NULL),
(1096, 'App', 'change_language', 'Change Language', 'غير اللغة', 'Taal wijzigen', 'Mudar idioma', NULL),
(1097, 'Web', 'Lang Key', 'Lang Key', 'لانغ كي', 'Key Lang', 'Lang Key', NULL),
(1098, 'Web', 'max_size', 'Max size', 'اقصى حجم', 'Kích thước tối đa', 'Tamanho máximo', NULL),
(1099, 'Web', 'home_slider_images', 'Home slider images', 'المنزل المنزلق الصور', 'Thuis slider afbeeldingen', 'Imagens deslizantes domésticas', NULL),
(1100, 'App', 'menu', 'Menu', 'قائمة طعام', 'thực đơn', 'Cardápio', NULL),
(1101, 'Web', 'greek', 'Greek', 'الإغريقي', 'Grieks', 'grego', NULL),
(1102, 'Web', 'forgot password email not found', 'Forgot password email not found', 'نسيت كلمة المرور لم يتم العثور على البريد الإلكتروني', 'Wachtwoord vergeten e-mail niet gevonden', 'Esqueceu a senha de e-mail não encontrada', NULL),
(1103, 'Web', 'your_contact_request_sent_successfully', 'Your contact request sent successfully', NULL, 'Uw contactpersoon aanvraag succesvol verzonden', 'Sua solicitação de contato foi enviada com sucesso', NULL),
(1104, 'Web', '	points_for_referred_by_anyone', 'points for referred by anyone', 'النقاط التي يحيلها أي شخص', 'Punten om door iemand te verwijzen', 'aponta para Patrocinado por ninguém', NULL),
(1105, 'Web', 'have_account', 'Have account', 'لديك حساب', 'Heb rekening', 'Ter conta', NULL),
(1106, 'Web', 'pusher_notification_settings', 'Pusher Notification Settings', 'إعدادات إعلام انتهازي', 'Pusher instellingen voor meldingen', 'Configurações de notificação do Pusher', NULL),
(1107, 'Web', 'APP_ID', 'APP ID', 'معرف التطبيق', 'APP ID', 'ID da APP', NULL),
(1108, 'Web', 'KEY', 'KEY', 'مفتاح', 'KEY', 'CHAVE', NULL),
(1109, 'Web', 'SECRET', 'SECRET', 'سر', 'SECRET', 'SEGREDO', NULL),
(1110, 'Web', 'pusher_app_id_required', 'Pusher app id required', 'معرف التطبيق انتهازي المطلوبة', 'Ứng dụng Pusher id bắt buộc', 'É necessário o ID do aplicativo Pusher', NULL),
(1111, 'Web', 'pusher_key_required', 'Pusher key required', 'مفتاح انتهازي المطلوبة', 'Pusher sleutel vereist', 'Chave do empurrador necessária', NULL),
(1112, 'Web', 'pusher_secret_required', 'Pusher secret required', 'انتهازي سر المطلوبة', 'Cần bí mật Pusher', 'O segredo do Pusher é necessário', NULL),
(1113, 'Web', 'pusher_notifications', 'Pusher notifications', 'الدافع الإخطارات', 'thông báo Pusher', 'Notificações Pusher', NULL),
(1114, 'Web', 'new_order', 'New order', 'أمر جديد', 'nieuwe order', 'Nova ordem', NULL),
(1115, 'Web', 'you_have_new_order_would_you_like_to_view', 'You have new order would you like to view', NULL, 'Punten om door iemand te verwijzen', 'Você tem uma nova ordem que gostaria de ver', NULL),
(1116, 'Web', 'Offer Products', 'Offer Products', 'عرض المنتجات', 'Producten aanbieden', 'Oferecer produtos', NULL),
(1117, 'Web', 'portuguese', 'Portuguese', 'البرتغالية', 'Portugees', 'Português', NULL),
(1118, 'Web', 'earning points conversion settings', 'Earning points conversion settings', 'إعدادات تحويل نقاط الأرباح', 'Conversie instellingen voor verdienpunten verdienen', 'Configurações de conversão de pontos de ganhos', NULL),
(1119, 'Web', 'registration completed successfully activation email sent', 'Registration completed successfully activation email sent', 'تم الانتهاء من التسجيل بنجاح البريد الإلكتروني التنشيط المرسلة', 'Registratie voltooid succesvol geactiveerde e-mail verzonden', 'O registro completou o e-mail de ativação com sucesso enviado', NULL),
(1120, 'Web', 'Account is inactive', 'Account is inactive', 'الحساب غير نشط', 'Account is inactief', 'A conta está em', NULL),
(1121, 'App', 'no_items_in_cart', 'No items in cart', 'لا توجد عناصر في سلة التسوق', 'Geen artikelen in winkelwagen', 'Nenhum item no carrinho', NULL),
(1122, 'App', 'add_items', 'Add Items', 'إضافة عناصر', 'Items toevoegen', 'Adicionar itens', NULL),
(1123, 'App', 'offer_details', 'Offer Details', 'تفاصيل العرض', 'Aanbod Details', 'Detalhes da oferta', NULL),
(1124, 'App', 'order', 'Order', 'طلب', 'Bestellen', 'Ordem', NULL),
(1125, 'Web', 'please_select_llanguage', 'Please select llanguage', 'الرجاء تحديد اللغة', 'Selecteer alstublieft taal', 'Selecione idioma', NULL),
(1126, 'Web', 'please_select_language', 'Please select language', 'الرجاء تحديد اللغة', 'Selecteer alstublieft taal', 'Selecione idioma', NULL),
(1127, 'Web', 'are_you_sure_to_delete_address', 'Are you sure to delete address', 'هل تريد بالتأكيد حذف العنوان', 'Weet u zeker dat u het adres wilt verwijderen', 'Tem certeza de excluir o endereço', NULL),
(1128, 'App', 'sub_total', 'Sub total', 'حاصل الجمع', 'Subtotaal (sub totaal)', 'Subtotal (sub total)', NULL),
(1129, 'App', 'delivery_fee', 'Delivery fee', 'رسوم التوصيل', 'Bezorgkosten', 'Taxa de entrega (taxa de entrega)', NULL),
(1130, 'App', 'total', 'Total', 'مجموع', 'Totaal (totaal)', 'Total (total)', NULL),
(1131, 'App', 'payment', 'Payment', 'دفع', 'Betaling (betaling)', 'Pagamento (pagamento)', NULL),
(1132, 'App', 'online', 'Online', 'عبر الانترنت', 'Online (online)', 'Conectados', NULL),
(1133, 'App', 'cash', 'Cash', 'السيولة النقدية', '', 'Caixa (dinheiro)', NULL),
(1134, 'App', 'proceed', 'Proceed', 'تقدم', 'Ga door (doorgaan)', 'Proceda (avance)', NULL),
(1135, 'App', 'cost_details', 'Cost Details', 'تفاصيل التكلفة', 'Kosten Details', 'Detalhes do custo (detalhes do custo)', NULL),
(1136, 'App', 'place_order', 'Place Order', 'مكان الامر', 'Plaats bestelling (plaatsorder)', 'Encomendar (colocar o pedido)', NULL),
(1137, 'App', 'phone_number', 'Phone number', 'رقم الهاتف', 'Telefoonnummer (telefoonnummer)', 'Número de telefone (número do telefone)', NULL),
(1138, 'App', 'date', 'Date', 'تاريخ', 'Datum', 'Data (data)', NULL),
(1139, 'App', 'select_address', 'Select Address', 'حدد العنوان', ' Selecteer Adres (selecteer adres)', 'Selecione Endereço', NULL),
(1140, 'App', 'no_address_added', 'No address added', '', ' Geen adres toegevoegd (no_address_added)', '', NULL),
(1141, 'App', 'redeem_points', 'Redeem Points', 'استرداد النقاط', 'Punten inwisselen (redeem_points)', 'Redefinir Pontos (resgatar pontos)', NULL),
(1142, 'App', 'add_new_address', 'Add New Address', 'إضافة عنوان جديد (إضافة عنوان جديد)', '', 'Adicionar novo endereço (adicionar novo endereço)', NULL),
(1143, 'App', 'would_you_like_to_reedeem_points', 'Would you like to redeem points', '', '', '', NULL),
(1144, 'App', 'points_value', 'Points Value', 'نقاط القيمة', 'Punten Waarde (points_value)', 'Pontos de valor (valor dos pontos)', NULL),
(1145, 'Web', 'logged in successfully', 'Logged in successfully', 'تم تسجيل الدخول بنجاح', 'Log in succesvol (ingelogd succesvol)', 'Conectado com sucesso (logado com sucesso)', NULL),
(1146, 'Web', 'Service Cities', 'Service Cities', 'خدمة المدن', 'Service Steden (Service Cities)', 'Cidades de serviço (Cidades de serviço)', NULL),
(1147, 'Web', 'Thanks for your rating', 'Thanks for your rating', NULL, NULL, NULL, NULL),
(1148, 'Web', 'Thanks for updated rating', 'Thanks for updated rating', NULL, NULL, NULL, NULL),
(1149, 'App', 'loading', 'Loading', 'جار التحميل', ' het laden', 'Carregando', NULL),
(1150, 'App', 'item_added_to_cart', 'Item added to cart', 'تمت إضافة العنصر إلى سلة التسوق', 'Artikel toegevoegd aan winkelwagen', 'Item adicionado ao carrinho', NULL),
(1151, 'App', 'already_added_to_cart', 'Already added to cart', 'تمت إضافته إلى السلة', 'Al in winkelwagen toegevoegd', 'Já adicionado ao carrinho', NULL),
(1152, 'App', 'specify_date', 'Specify Date', 'حدد التاريخ', 'Datum opgeven', 'Especificar data', NULL),
(1153, 'App', 'our_location', 'Our Location', 'موقعنا', 'onze locatie', 'nossa localização', NULL),
(1154, 'App', 'points', 'Points', 'نقاط', 'punten', 'Pontos', NULL),
(1155, 'App', 'my_points', 'My points', 'نقاطي', 'Mijn punten', 'Meus Pontos', NULL),
(1156, 'App', 'rate_this_order', 'Rate this order', 'قيم هذا الطلب', 'Beoordeel deze bestelling', 'Avalie esta ordem', NULL),
(1157, 'Web', 'registration completed successfully password sent to email', 'Registration completed successfully password sent to email', NULL, NULL, NULL, NULL),
(1158, 'App', 'done', 'Done', 'فعله', 'Gedaan', 'Feito', NULL),
(1159, 'App', 'phone_required', 'Phone required', 'الهاتف مطلوب', 'Telefoon verplicht', 'Necessário telefone', NULL),
(1160, 'App', 'payment_status', 'Payment status', 'حالة السداد', 'Betalingsstatus', 'Status do pagamento', NULL),
(1161, 'App', 'thanks_for_your_order', 'Thanks for your order', 'شكرا لطلبك', 'bedankt voor je bestelling', 'Obrigado pelo seu pedido', NULL),
(1162, 'App', 'your_order_of', 'Your order of', 'طلبك من', 'Uw bestelling van', ' Sua ordem de', NULL),
(1163, 'App', 'has_been_successfully_booked', 'has been successfully booked', 'تم حجزه بنجاح', 'Is succesvol geboekt', 'Foi reservado com sucesso', NULL),
(1164, 'Web', 'kitchen_managers', 'Kitchen Managers', '', 'Keukenmanagers', 'Gerentes de cozinha', NULL),
(1165, 'Web', 'add_record', 'Add record', NULL, NULL, 'Adicionar registro', NULL),
(1166, 'Web', 'add_kitchen_manager', 'Add Kitchen Manager', '', '', 'Adicionar gerente de cozinha', NULL),
(1167, 'Web', 'user_already_exists', 'User already exists', NULL, NULL, NULL, NULL),
(1168, 'Web', 'edit_kitchen_manager', 'Edit Kitchen Manager', '', 'Edit Kitchen Manager', '', NULL),
(1169, 'Web', 'delivery_managers', 'Delivery Managers', '', 'Leveringsmanagers', '', NULL),
(1170, 'Web', 'add_delivery_manager', 'Add Delivery Manager', '', '', 'Adicionar gerente de entrega', NULL),
(1171, 'Web', 'user_record_created_successfully', 'User record created successfully', NULL, NULL, NULL, NULL),
(1172, 'Web', 'edit_delivery_manager', 'Edit Delivery Manager', '', 'Bewerk leveringsbeheer', 'Edit Delivery Manager', NULL),
(1173, 'Web', 'assigned_cities', 'Assigned cities', NULL, 'Toegewezen steden', 'Cidades designadas', NULL),
(1174, 'Web', 'message_to_customer', 'Message to customer', NULL, 'Bericht aan klant', 'Mensagem ao cliente', NULL),
(1175, 'Web', 'kitchen_manager', 'Kitchen Manager', '', 'Keukenmanager', 'Gerente de cozinha', NULL),
(1176, 'Web', 'delivery_manager', 'Delivery Manager', '', 'Bezorg manager', '', NULL),
(1177, 'Web', 'kitchen_manager_dashboard', 'Kitchen Manager Dashboard', '', 'Kitchen Manager Dashboard', 'Painel de gerenciamento de cozinha', NULL),
(1178, 'Web', 'kitchen_manager_has_been_sent_an_order_to_delivery_manager', 'Kitchen Manager has been sent an Order to Delivery Manager', '', 'Kitchen Manager is een bestelling gestuurd naar Delivery Manager', 'Kitchen Manager recebeu um Gerente de Entrega de Pedidos', NULL),
(1179, 'Web', 'would_you_like_to_view', 'Would you like to view', NULL, NULL, NULL, NULL),
(1180, 'Web', 'please_select_delivery_manager', 'Please select delivery manager', NULL, NULL, 'Selecione o gerente de entrega', NULL),
(1181, 'Web', 'delivery_manager_dashboard', 'Delivery Manager Dashboard', '', 'Delivery Manager Dashboard', '', NULL),
(1182, 'Web', 'delivery_manager_has_been_updated_an_order_as_delivered', 'Delivery Manager has been updated an order as delivered', '', 'Delivery Manager is een bestelling bijgewerkt zoals geleverd', '', NULL),
(1183, 'Web', 'kitchen_manager_has_been_sent_an_order', 'Kitchen Manager has been sent an order', '', 'Kitchen Manager is een bestelling verzonden', 'Kitchen Manager recebeu um pedido', NULL),
(1184, 'Web', 'contact_details', 'Contact details', NULL, NULL, NULL, NULL),
(1185, 'Web', 'visit_us', 'Visit us', NULL, NULL, NULL, NULL),
(1186, 'Web', 'email_us', 'Email us', NULL, NULL, NULL, NULL),
(1187, 'Web', 'call_us', 'Call us', NULL, NULL, NULL, NULL),
(1188, 'Web', 'links', 'Links', NULL, NULL, NULL, NULL),
(1189, 'Web', 'site_map', 'Site map', NULL, NULL, NULL, NULL),
(1190, 'Web', 'hot_and_spicy', 'Hot & Spicy', '', '', '', NULL),
(1191, 'Web', 'delicious_food', 'DELICIOUS FOOD', '', '', '', NULL),
(1192, 'Web', 'our_menu', 'Our Menu', '', '', '', NULL),
(1193, 'Web', 'get_connected_with_us', 'Get connected with us', NULL, NULL, NULL, NULL),
(1194, 'Web', 'opening_time', 'OPENING TIME', '', '', '', NULL),
(1195, 'Web', 'send', 'Send', '', '', '', NULL),
(1196, 'Web', 'invalid_email', 'Invalid email', NULL, NULL, NULL, NULL),
(1197, 'Web', 'view_menu_categories', 'View menu categories', NULL, NULL, NULL, NULL),
(1198, 'Web', 'add_menu_category', 'Add menu category', NULL, NULL, NULL, NULL),
(1199, 'Web', 'category_name_required', 'Category name required', NULL, NULL, NULL, NULL),
(1200, 'Web', 'edit_menu_category', 'Edit menu category', NULL, NULL, NULL, NULL),
(1201, 'Web', 'menu_categories', 'Menu categories', NULL, NULL, NULL, NULL),
(1202, 'Web', 'select_menu_category', 'Select menu category', NULL, NULL, NULL, NULL),
(1203, 'Web', 'menu_category', 'Menu category', NULL, NULL, NULL, NULL),
(1204, 'Web', 'menu_category_required', 'Menu category required', NULL, NULL, NULL, NULL),
(1205, 'Web', 'your orders', 'Your orders', NULL, NULL, NULL, NULL),
(1206, 'Web', 'my address', 'My address', NULL, NULL, NULL, NULL),
(1207, 'Web', 'No service localities', 'No service localities', NULL, NULL, NULL, NULL),
(1208, 'Web', 'street_name_required', 'Street name required', NULL, NULL, NULL, NULL),
(1209, 'Web', 'how_it_works', 'How it works', NULL, NULL, NULL, NULL),
(1210, 'Web', 'privacy_and_policy', 'Privacy and policy', NULL, NULL, NULL, NULL),
(1211, 'Web', 'terms_conditions', 'Terms conditions', NULL, NULL, NULL, NULL),
(1212, 'Web', 'privacy_policy', 'Privacy policy', NULL, NULL, NULL, NULL),
(1213, 'Web', 'site_url', 'Site url', NULL, NULL, NULL, NULL),
(1214, 'Web', 'menu_image_url', 'Menu image url', NULL, NULL, NULL, NULL),
(1215, 'Web', 'item_image_url', 'Item image url', NULL, NULL, NULL, NULL),
(1216, 'Web', 'addon_image_url', 'Addon image url', NULL, NULL, NULL, NULL),
(1217, 'Web', 'offer_image_url', 'Offer image url', NULL, NULL, NULL, NULL),
(1218, 'Web', 'site_url_required', 'Site url required', NULL, NULL, NULL, NULL),
(1219, 'Web', 'menu_image_url_required', 'Menu image url required', NULL, NULL, NULL, NULL),
(1220, 'Web', 'item_image_url_required', 'Item image url required', NULL, NULL, NULL, NULL),
(1221, 'Web', 'addon_image_url_required', 'Addon image url required', NULL, NULL, NULL, NULL),
(1222, 'Web', 'offer_image_url_required', 'Offer image url required', NULL, NULL, NULL, NULL),
(1223, 'Web', 'service_url', 'Service url', NULL, NULL, NULL, NULL),
(1224, 'Web', 'menu_image_thumb_url', 'Menu image thumb url', NULL, NULL, NULL, NULL),
(1225, 'Web', 'item_image_thumb_url', 'Item image thumb url', NULL, NULL, NULL, NULL),
(1226, 'Web', 'addon_image_thumb_url', 'Addon image thumb url', NULL, NULL, NULL, NULL),
(1227, 'Web', 'offer_image_thumb_url', 'Offer image thumb url', NULL, NULL, NULL, NULL),
(1228, 'Web', 'tinify_settings', 'Tinify settings', NULL, NULL, NULL, NULL),
(1229, 'Web', 'use_tinify', 'Use tinify', NULL, NULL, NULL, NULL),
(1230, 'Web', 'tinify_API_KEY', 'Tinify API KEY', NULL, NULL, NULL, NULL),
(1231, 'Web', 'download_app', 'Download app', NULL, NULL, NULL, NULL),
(1232, 'Web', 'Send message', 'Send message', NULL, NULL, NULL, NULL),
(1233, 'Web', 'enable_redeeming', 'Enable redeeming', NULL, NULL, NULL, NULL),
(1234, 'Web', 'faqs_categories', 'Faqs categories', NULL, NULL, NULL, NULL),
(1235, 'Web', 'add_faq_category', 'Add faq category', NULL, NULL, NULL, NULL),
(1236, 'Web', 'faq_category_required', 'Faq category required', NULL, NULL, NULL, NULL),
(1237, 'Web', 'edit_faq_category', 'Edit faq category', NULL, NULL, NULL, NULL),
(1238, 'Web', 'select_category', 'Select category', NULL, NULL, NULL, NULL),
(1239, 'Web', 'category_required', 'Category required', NULL, NULL, NULL, NULL),
(1240, 'Web', 'no_categories_available', 'No categories available', NULL, NULL, NULL, NULL),
(1241, 'Web', 'search_dish', 'Search dish', NULL, NULL, NULL, NULL),
(1242, 'Web', 'order_online', 'Order online', NULL, NULL, NULL, NULL),
(1243, 'Web', 'home_delivery', 'Home delivery', NULL, NULL, NULL, NULL),
(1244, 'Web', 'get_in_touch', 'Get in touch', NULL, NULL, NULL, NULL),
(1245, 'Web', 'for_enquiries_or_suggestions', 'For enquiries or suggestions', NULL, NULL, NULL, NULL),
(1246, 'Web', 'send_message', 'Send message', NULL, NULL, NULL, NULL),
(1247, 'Web', 'popular_items', 'Popular items', NULL, NULL, NULL, NULL),
(1248, 'Web', 'no_offers_available', 'No offers available', NULL, NULL, NULL, NULL),
(1249, 'Web', 'home_page_site_logo', 'Home page site logo', NULL, NULL, NULL, NULL),
(1250, 'Web', 'other_pages_site_logo', 'Other pages site logo', NULL, NULL, NULL, NULL),
(1251, 'Web', 'home_page_site_logo_file_is_not_valid', 'Home page site logo file is not valid', NULL, NULL, NULL, NULL),
(1252, 'Web', 'inner_pages_site_logo_file_is_not_valid', 'Inner pages site logo file is not valid', NULL, NULL, NULL, NULL),
(1253, 'Web', 'or_signup_with', 'Or signup with', NULL, NULL, NULL, NULL),
(1254, 'Web', 'forgot_password?', 'Forgot password?', NULL, NULL, NULL, NULL),
(1255, 'Web', 'or_login_through', 'Or login through', NULL, NULL, NULL, NULL),
(1256, 'Web', 'or_signup_through', 'Or signup through', NULL, NULL, NULL, NULL),
(1257, 'Web', 'no_faqs_available', 'No faqs available', NULL, NULL, NULL, NULL),
(1258, 'Web', '\n                            language_required ', '\n                            language required ', NULL, NULL, NULL, NULL),
(1259, 'Web', '\n                            language_code_required ', '\n                            language code required ', NULL, NULL, NULL, NULL),
(1260, 'Web', 'would_you_like_to_use_tinify_settings_for_images?', 'Would you like to use tinify settings for images?', NULL, NULL, NULL, NULL),
(1261, 'Web', 'would_you_like_to_use_tinify_for_image_compression?', 'Would you like to use tinify for image compression?', NULL, NULL, NULL, NULL),
(1262, 'Web', 'would_you_like_to_use_tinify_for_create_image_thumbnails?', 'Would you like to use tinify for create image thumbnails?', NULL, NULL, NULL, NULL),
(1263, 'Web', 'tinify_used_for', 'Tinify used for', NULL, NULL, NULL, NULL),
(1264, 'Web', 'images_in_current_month', 'Images in current month', NULL, NULL, NULL, NULL),
(1265, 'Web', 'is_popular_item', 'Is popular item', NULL, NULL, NULL, NULL),
(1266, 'Web', 'is_it_popular_item', 'Is it popular item', NULL, NULL, NULL, NULL),
(1267, 'Web', 'item_price', 'Item price', NULL, NULL, NULL, NULL),
(1268, 'Web', 'item_price_required', 'Item price required', NULL, NULL, NULL, NULL),
(1269, 'Web', 'my_addresses', 'My addresses', NULL, NULL, NULL, NULL),
(1270, 'Web', 'offer_price', 'Offer price', NULL, NULL, NULL, NULL),
(1271, 'Web', 'default', 'Default', NULL, NULL, NULL, NULL),
(1272, 'Web', 'select_city', 'Select city', NULL, NULL, NULL, NULL),
(1273, 'Web', 'offer_price_required', 'Offer price required', NULL, NULL, NULL, NULL),
(1274, 'Web', 'address_added_successfully', 'Address added successfully', NULL, NULL, NULL, NULL),
(1275, 'Web', 'payment_details', 'Payment details', NULL, NULL, NULL, NULL),
(1276, 'Web', 'items_total', 'Items total', NULL, NULL, NULL, NULL),
(1277, 'Web', 'delivery_charges', 'Delivery charges', NULL, NULL, NULL, NULL),
(1278, 'Web', 'payment_mode', 'Payment mode', NULL, NULL, NULL, NULL),
(1279, 'Web', 'delivery_details', 'Delivery details', NULL, NULL, NULL, NULL),
(1280, 'Web', 'balance', 'Balance', NULL, NULL, NULL, NULL),
(1281, 'Web', 'delete_address', 'Delete address', NULL, NULL, NULL, NULL),
(1282, 'Web', 'default_address', 'Default address', NULL, NULL, NULL, NULL),
(1283, 'Web', 'default_address_updated', 'Default address updated', NULL, NULL, NULL, NULL),
(1284, 'Web', 'home_page_caption', 'Home page caption', NULL, NULL, NULL, NULL),
(1285, 'Web', 'home_page_tagline', 'Home page tagline', NULL, NULL, NULL, NULL),
(1286, 'Web', 'home_page_caption_required', 'Home page caption required', NULL, NULL, NULL, NULL),
(1287, 'Web', 'home_page_image', 'Home page image', NULL, NULL, NULL, NULL),
(1288, 'Web', 'home_page_image_file_is_not_valid', 'Home page image file is not valid', NULL, NULL, NULL, NULL),
(1289, 'Web', 'special_food_items', 'Special food items', NULL, NULL, NULL, NULL),
(1290, 'Web', 'we_have_the_glory_beginning_in_restaurant_business', 'We have the glory beginning in restaurant business', NULL, NULL, NULL, NULL),
(1291, 'Web', 'default_address_set_successfully', 'Default address set successfully', NULL, NULL, NULL, NULL),
(1292, 'Web', 'choose', 'Choose', NULL, NULL, NULL, NULL),
(1293, 'Web', 'home_page_settings', 'Home page settings', NULL, NULL, NULL, NULL),
(1294, 'Web', 'load_more', 'Load more', NULL, NULL, NULL, NULL),
(1295, 'Web', 'available_for_android_and_ios', 'Available for android and ios', NULL, NULL, NULL, NULL),
(1296, 'Web', 'order_faster_with_mobile_app', 'Order faster with mobile app', NULL, NULL, NULL, NULL),
(1297, 'Web', 'clean_and_minimal_interface', 'Clean and minimal interface', NULL, NULL, NULL, NULL),
(1298, 'Web', 'enjoy_the_native_app_experience', 'Enjoy the native app experience', NULL, NULL, NULL, NULL),
(1299, 'Web', 'seo_settings', 'Seo settings', NULL, NULL, NULL, NULL),
(1300, 'Web', 'meta_keyword', 'Meta keyword', NULL, NULL, NULL, NULL),
(1301, 'Web', 'google_analytics', 'Google analytics', NULL, NULL, NULL, NULL),
(1302, 'Web', 'your_cart', 'Your cart', NULL, NULL, NULL, NULL),
(1303, 'Web', 'checkout', 'Checkout', NULL, NULL, NULL, NULL),
(1304, 'Web', 'view', 'View', NULL, NULL, NULL, NULL),
(1305, 'Web', 'customize', 'Customize', NULL, NULL, NULL, NULL),
(1306, 'Web', 'select_delivery_address', 'Select delivery address', NULL, NULL, NULL, NULL),
(1307, 'Web', 'we_are_the_world_class_food_providers_with_the_highest_quality_of_food_services', 'We are the world class food providers with the highest quality of food services', NULL, NULL, NULL, NULL),
(1308, 'Web', 'deliver_to_this_address', 'Deliver to this address', NULL, NULL, NULL, NULL),
(1309, 'Web', 'would_you_like_to_redeem_your_earned_points?', 'Would you like to redeem your earned points?', NULL, NULL, NULL, NULL),
(1310, 'Web', 'you_have_20_points', 'You have 20 points', NULL, NULL, NULL, NULL),
(1311, 'Web', 'you_have_', 'You have ', NULL, NULL, NULL, NULL),
(1312, 'Web', 'redeem', 'Redeem', NULL, NULL, NULL, NULL),
(1313, 'Web', 'continue', 'Continue', NULL, NULL, NULL, NULL),
(1314, 'Web', 'no_items_in_your_cart', 'No items in your cart', NULL, NULL, NULL, NULL),
(1315, 'Web', 'please_provide_delivery_address', 'Please provide delivery address', NULL, NULL, NULL, NULL),
(1316, 'Web', 'please_select_payment_method', 'Please select payment method', NULL, NULL, NULL, NULL),
(1317, 'Web', 'details', 'Details', NULL, NULL, NULL, NULL),
(1318, 'Web', 'are_you_sure_to_delete_address?', 'Are you sure to delete address?', NULL, NULL, NULL, NULL),
(1319, 'Web', 'are_you_sure_to_make_this_address_as_your_default_address?', 'Are you sure to make this address as your default address?', NULL, NULL, NULL, NULL),
(1320, 'Web', 'are_you_sure_to_change_this_address_as_your_default_address?', 'Are you sure to change this address as your default address?', NULL, NULL, NULL, NULL),
(1321, 'Web', 'are_you_sure_to_set_this_address_as_your_default_address?', 'Are you sure to set this address as your default address?', NULL, NULL, NULL, NULL),
(1322, 'Web', 'order_successful', 'Order successful', NULL, NULL, NULL, NULL),
(1323, 'Web', 'your_order_no_is', 'Your order no is', NULL, NULL, NULL, NULL),
(1324, 'Web', 'you_will_get', 'You will get', NULL, NULL, NULL, NULL),
(1325, 'Web', 'points_if_this_order_is_delivered_to_you_successfully', 'Points if this order is delivered to you successfully', NULL, NULL, NULL, NULL),
(1326, 'Web', 'admin_has_been_sent_an_order', 'Admin has been sent an order', NULL, NULL, NULL, NULL),
(1327, 'Web', 'delivery_manager_has_been_updated_an_order_status_as_delivered', 'Delivery manager has been updated an order status as delivered', NULL, NULL, NULL, NULL),
(1328, 'Web', 'please_select_valid_dates', 'Please select valid dates', NULL, NULL, NULL, NULL),
(1329, 'Web', 'ordered_online', 'Ordered online', NULL, NULL, NULL, NULL),
(1330, 'Web', 'dishes_served', 'Dishes served', NULL, NULL, NULL, NULL),
(1331, 'Web', 'home_delivered', 'Home delivered', NULL, NULL, NULL, NULL),
(1332, 'Web', 'search', 'Search', NULL, NULL, NULL, NULL),
(1333, 'Web', 'you_can_redeem_maximum_of_', 'You can redeem maximum of ', NULL, NULL, NULL, NULL),
(1334, 'Web', 'documentation', 'Documentation', NULL, NULL, NULL, NULL),
(1335, 'Web', 'Activation Email Sent. Please check your inbox or spam', 'Activation Email Sent. Please check your inbox or spam', NULL, NULL, NULL, NULL),
(1336, 'Web', 'delivered_date', 'Delivered date', NULL, NULL, NULL, NULL),
(1337, 'Web', 'Fresh food', 'Fresh food', NULL, NULL, NULL, NULL),
(1338, 'Web', 'experienced chefs', 'Experienced chefs', NULL, NULL, NULL, NULL),
(1339, 'Web', 'Accepted_Payments', 'Accepted Payments', NULL, NULL, NULL, NULL),
(1340, 'Web', 'For Android', 'For Android', NULL, NULL, NULL, NULL),
(1341, 'Web', 'Visit Playstore Store', 'Visit Playstore Store', NULL, NULL, NULL, NULL),
(1342, 'Web', 'For IOS', 'For IOS', NULL, NULL, NULL, NULL),
(1343, 'Web', 'Visit Apple Store', 'Visit Apple Store', NULL, NULL, NULL, NULL),
(1344, 'Web', 'CI_VERSION', 'CI VERSION', NULL, NULL, NULL, NULL),
(1345, 'Web', 'contact_map', 'Contact map', NULL, NULL, NULL, NULL),
(1346, 'Web', 'contact_map_script', 'Contact map script', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_language_codes`
--

CREATE TABLE `cr_language_codes` (
  `code_id` int(11) NOT NULL,
  `language` varchar(20) CHARACTER SET latin1 NOT NULL,
  `code` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_language_codes`
--

INSERT INTO `cr_language_codes` (`code_id`, `language`, `code`) VALUES
(1, 'english', 'en'),
(3, 'arabic', 'ar'),
(4, 'dutch', 'nl'),
(11, 'portuguese', 'pt'),
(15, 'telugu', 'TE');

-- --------------------------------------------------------

--
-- Table structure for table `cr_login_attempts`
--

CREATE TABLE `cr_login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cr_loyality_points`
--

CREATE TABLE `cr_loyality_points` (
  `lp_id` int(11) NOT NULL,
  `points_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `points_label_redeem_placeholder` varchar(50) NOT NULL,
  `points_label_earn` varchar(50) NOT NULL,
  `points_label_template` varchar(50) NOT NULL,
  `maximum_earning_points_for_customer` varchar(50) NOT NULL,
  `earning_point` varchar(50) NOT NULL,
  `earning_point_value` decimal(10,2) NOT NULL,
  `redeeming_point` varchar(50) NOT NULL,
  `redeeming_point_value` decimal(10,2) NOT NULL,
  `disabled_redeeming` enum('Yes','No') NOT NULL DEFAULT 'No',
  `reward_points_for_account_signup` varchar(20) NOT NULL,
  `points_for_restaurant_review` varchar(20) NOT NULL,
  `points_for_first_order` varchar(20) NOT NULL,
  `points_for_sharing_app` varchar(20) NOT NULL,
  `minimum_points_can_be_used` varchar(20) NOT NULL,
  `maximum_points_can_be_used` varchar(20) NOT NULL,
  `enable_redeeming` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_loyality_points`
--

INSERT INTO `cr_loyality_points` (`lp_id`, `points_enabled`, `points_label_redeem_placeholder`, `points_label_earn`, `points_label_template`, `maximum_earning_points_for_customer`, `earning_point`, `earning_point_value`, `redeeming_point`, `redeeming_point_value`, `disabled_redeeming`, `reward_points_for_account_signup`, `points_for_restaurant_review`, `points_for_first_order`, `points_for_sharing_app`, `minimum_points_can_be_used`, `maximum_points_can_be_used`, `enable_redeeming`) VALUES
(1, 'Yes', 'Hungry Duck', 'Points', 'You earned {points} points', '20', '1', '2.00', '1', '2.00', 'No', '20', '0', '30', '20', '20', '30', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `cr_menu`
--

CREATE TABLE `cr_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(256) DEFAULT NULL,
  `punch_line` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `menu_image_name` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_menu`
--

INSERT INTO `cr_menu` (`menu_id`, `menu_name`, `punch_line`, `description`, `menu_image_name`, `status`) VALUES
(5, 'Soups', 'Favourite Soups', 'Here You  will find all sorts of soups', 'menu_5.jpg', 'Active'),
(6, 'Biryani', 'Specialized Biryanis', 'We have our own taste of biryanis', 'menu_6.jpg', 'Active'),
(8, 'Starters', 'Favourite Crispy Starters', 'There are many Crispy Starters', 'menu_8.jpg', 'Active'),
(10, 'Curries', 'Spicy Curries', 'We are specialised in types of curries', 'menu_10.jpg', 'Active'),
(11, 'Salads', 'Salads', 'All types of Salads', 'menu_11.jpg', 'Active'),
(12, 'Chinese Cuisine', 'Chinese Food', 'This is Chinese Food', 'menu_12.jpg', 'Active'),
(13, 'Beverages', 'Cool Beverages', 'This is Beverages', 'menu_13.jpg', 'Active'),
(14, 'Desserts', 'Cool Desserts', 'This is for Cool Desserts', 'menu_14.jpg', 'Active'),
(18, 'Kebabs', ' Spicy Kebabs', 'kebabs', 'menu_18.jpg', 'Active'),
(21, 'Pizzas', 'Spicy Pizza\'s', 'Pizza\'s', 'menu_21.jpg', 'Active'),
(28, 'Burger', 'Burgers', 'oh! what a tasty', 'menu_28.jpg', 'Active'),
(35, 'Sandwiches', 'Sandwiches', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'menu_35.jpg', 'Active'),
(39, 'Chili\'s American Grill & Bar', 'dfsd', 'fsdfdsf', 'menu_39.jpeg', 'Active'),
(41, 'Soft Drinks', 'Soft Drinks', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'menu_41.jpg', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `cr_offers`
--

CREATE TABLE `cr_offers` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(50) DEFAULT NULL,
  `offer_cost` decimal(10,2) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_valid_date` date DEFAULT NULL,
  `offer_conditions` varchar(500) DEFAULT NULL,
  `no_of_products` int(11) DEFAULT NULL,
  `offer_image_name` varchar(50) DEFAULT NULL,
  `date_of_offer_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `product_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_offers`
--

INSERT INTO `cr_offers` (`offer_id`, `offer_name`, `offer_cost`, `offer_start_date`, `offer_valid_date`, `offer_conditions`, `no_of_products`, `offer_image_name`, `date_of_offer_created`, `status`, `product_id`) VALUES
(52, 'Special Offer', '100.00', '2017-07-26', '2019-01-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_52.jpg', '2017-07-26 15:27:00', 'Active', 'E7n18A3JWBm33Qin'),
(53, 'Offer  Sale', '99.00', '2017-07-26', '2019-07-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_53.png', '2017-10-31 12:39:12', 'Active', '1MPeaf92Z1kbBKRG'),
(54, 'Best Buy', '89.00', '2017-07-26', '2019-07-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_54.jpg', '2017-07-26 15:33:13', 'Active', 'I47G50QR22LwJtZA'),
(55, 'Mega Deal', '129.00', '2017-07-26', '2019-07-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 4, 'offer_55.jpg', '2017-07-26 15:35:39', 'Active', '6pfWLePkVzCXATdI'),
(56, 'Best Offer', '242.00', '2017-09-15', '2018-01-25', 'sfsdfsdfsdfdsf', 3, NULL, '2017-10-31 12:39:34', 'Active', 'OaPKRgbJYn5iXVjT'),
(57, 'Flat Offer', '676.00', '2017-09-15', '2017-12-20', 'sdfsdfdsfdsfdsf', 2, NULL, '2017-10-31 12:38:49', 'Active', 'AEqLi5w4vyRvIu4X'),
(58, 'Big Sale Offer', '56.00', '2017-09-15', '2017-11-30', 'tert fdsfsdfds', 3, NULL, '2017-10-31 12:38:36', 'Active', 'LKhcq9lFmhn92NT2'),
(59, 'Clearance Sale Offer', '330.00', '2017-09-15', '2018-02-21', 'rtre yurtyrt', 4, NULL, '2017-10-31 12:38:15', 'Active', 'S9E150vrpDdyyXL9'),
(60, 'Special Pizzas offer', '454.00', '2017-10-31', '2018-03-21', 'sdf sfsdfd', 3, NULL, '2017-10-31 12:37:50', 'Active', 'hscOrETUl7TdKmWc'),
(61, 'Great Deals', '232.00', '2017-09-15', '2018-02-21', 'sdf asdfsdf asfdsdf', 3, 'offer_61.jpg', '2017-10-31 12:49:27', 'Active', 'maTiRFP7Jsv7G67o'),
(62, 'Best Price Today', '232.00', '2017-09-15', '2017-12-20', 'sdf', 3, 'offer_62.png', '2017-10-31 12:30:20', 'Active', 'pZ2WdLrEIAiTn4wQ'),
(63, 'Promotional Offer', '200.00', '2017-09-15', '2018-02-01', 'sdfsd', 3, 'offer_63.jpg', '2017-10-31 12:28:17', 'Active', 'VGynLEkUwWS3SPh7'),
(64, 'Items feast', '345.00', '2017-09-15', '2018-01-24', 'sdfsdf', 2, 'offer_64.jpg', '2017-10-31 12:40:44', 'Active', 'oZUIlCNtCvDqqz6C'),
(65, 'Stuffed Crust', '343.00', '2017-10-31', '2017-12-01', 'er ewrew', 2, 'offer_65.jpg', '2017-10-31 12:23:48', 'Active', '5vpHzQclmue5AB3o'),
(66, 'Diwali Offer', '90.00', '2017-10-31', '2017-11-30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 2, 'offer_66.png', '2017-10-31 12:22:14', 'Active', 'MRsgtO7aZ2tNIKdZ');

-- --------------------------------------------------------

--
-- Table structure for table `cr_offer_products`
--

CREATE TABLE `cr_offer_products` (
  `offer_product_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_offer_products`
--

INSERT INTO `cr_offer_products` (`offer_product_id`, `offer_id`, `menu_id`, `menu_name`, `item_id`, `item_name`, `quantity`) VALUES
(894, 52, 6, 'Biryani', 41, 'Mutton Biryani', 1),
(895, 52, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(896, 52, 8, 'Starters', 16, 'Gobi Manchurian', 1),
(897, 52, 10, 'Curries', 148, 'Chicken Curry', 1),
(902, 54, 5, 'Soups', 9, 'Sweet Corn Vegetable Soup', 1),
(903, 54, 6, 'Biryani', 856761, 'Keema Biryani Recipe', 1),
(904, 54, 8, 'Starters', 24, 'Chicken Drum Sticks', 1),
(905, 54, 10, 'Curries', 856775, 'Egg Curry', 1),
(906, 55, 12, 'Chinese Cuisine', 99, 'Sweet-N-Sour Prawns', 1),
(907, 55, 11, 'Salads', 86, 'Butter Naan', 1),
(908, 55, 13, 'Beverages', 130, 'Pineapple ', 1),
(909, 55, 14, 'Desserts', 121, 'Pineapple With Vanilla', 2),
(931, 66, 41, 'Soft Drinks', 856785, 'Red Bull', 1),
(932, 66, 8, 'Starters', 18, 'Baby Corn Manchurian', 2),
(933, 65, 12, 'Chinese Cuisine', 104, 'Chicken Fried Rice', 2),
(934, 65, 13, 'Beverages', 130, 'Pineapple ', 1),
(940, 63, 11, 'Salads', 89, 'Pineapple Raita', 2),
(941, 63, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(942, 63, 21, 'Pizzas', 856766, 'Margherita ', 1),
(943, 62, 11, 'Salads', 86, 'Butter Naan', 1),
(944, 62, 21, 'Pizzas', 152, 'Country Special', 1),
(945, 62, 11, 'Salads', 92, 'Fruit Chat Salad', 1),
(951, 60, 21, 'Pizzas', 856769, 'Barbeque Chicken', 1),
(952, 60, 21, 'Pizzas', 152, 'Country Special', 1),
(953, 60, 21, 'Pizzas', 856768, 'Fresh Veggie', 1),
(954, 59, 13, 'Beverages', 135, 'Butterscotch Milkshake', 1),
(955, 59, 10, 'Curries', 148, 'Chicken Curry', 1),
(956, 59, 10, 'Curries', 856778, 'Butter Chicken', 1),
(957, 59, 10, 'Curries', 856784, 'Cheese Balls', 1),
(958, 58, 11, 'Salads', 89, 'Pineapple Raita', 1),
(959, 58, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(960, 58, 8, 'Starters', 24, 'Chicken Drum Sticks', 1),
(961, 57, 6, 'Biryani', 41, 'Mutton Biryani', 1),
(962, 57, 8, 'Starters', 16, 'Gobi Manchurian', 1),
(963, 53, 5, 'Soups', 9, 'Sweet Corn Vegetable Soup', 1),
(964, 53, 6, 'Biryani', 41, 'Mutton Biryani', 1),
(965, 53, 8, 'Starters', 18, 'Baby Corn Manchurian', 1),
(966, 53, 10, 'Curries', 149, 'Paneer', 1),
(967, 56, 5, 'Soups', 8, 'Cream Of Tomato Soup', 1),
(968, 56, 12, 'Chinese Cuisine', 100, 'Ginger Fish', 1),
(969, 56, 12, 'Chinese Cuisine', 108, 'Veg Hakka Noodles', 1),
(970, 64, 10, 'Curries', 149, 'Paneer', 2),
(971, 64, 6, 'Biryani', 856764, 'Bombay Biryani', 2),
(972, 61, 14, 'Desserts', 122, 'Vainilla Hot Chocolate', 2),
(973, 61, 14, 'Desserts', 121, 'Pineapple With Vanilla', 1),
(974, 61, 14, 'Desserts', 129, 'Fruit Salad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cr_options`
--

CREATE TABLE `cr_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_options`
--

INSERT INTO `cr_options` (`option_id`, `option_name`, `status`) VALUES
(4, 'Large', 'Active'),
(9, 'Medium', 'Active'),
(14, 'Single', 'Active'),
(19, 'Family Pack', 'Active'),
(20, 'Jumbo Pack', 'Active'),
(21, 'Extra Large', 'Active'),
(37, 'Small', 'Active'),
(38, '500 ml', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_orders`
--

CREATE TABLE `cr_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` varchar(20) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `delivery_fee` float(10,2) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `locality` varchar(200) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `is_points_redeemed` enum('Yes','No') NOT NULL DEFAULT 'No',
  `no_of_points_redeemed` int(11) DEFAULT NULL,
  `points_value` float(10,2) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('delivered','process','cancelled','new','out_to_deliver') NOT NULL DEFAULT 'new',
  `payment_type` enum('online','cashCard','cash') DEFAULT NULL,
  `payment_card` varchar(100) DEFAULT NULL,
  `payment_gateway` varchar(20) DEFAULT NULL,
  `no_of_items` int(11) NOT NULL,
  `paid_date` varchar(50) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_id` varchar(50) DEFAULT NULL,
  `payer_email` varchar(50) DEFAULT NULL,
  `payer_name` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `date_updated` date DEFAULT NULL,
  `device_id` varchar(200) DEFAULT NULL,
  `rating_value` int(11) DEFAULT NULL,
  `is_admin_sent_to_km` enum('Yes','No') DEFAULT NULL,
  `km_id` int(11) DEFAULT NULL,
  `km_received_datetime` datetime DEFAULT NULL,
  `is_admin_sent_to_dm` enum('Yes','No') DEFAULT NULL,
  `is_km_sent_to_dm` enum('Yes','No') DEFAULT NULL,
  `sent_km_id` int(11) DEFAULT NULL,
  `dm_id` int(11) DEFAULT NULL,
  `dm_received_datetime` datetime DEFAULT NULL,
  `last_updated_by` int(11) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `delivered_status` enum('admin','km','dm') DEFAULT NULL COMMENT 'Delivered Status updated by whom',
  `delivered_status_datetime` datetime DEFAULT NULL,
  `cancelled_status` enum('admin','km','dm') DEFAULT NULL COMMENT 'Cancelled Status updated by whom',
  `cancelled_status_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_orders`
--

INSERT INTO `cr_orders` (`order_id`, `user_id`, `order_date`, `order_time`, `total_cost`, `delivery_fee`, `customer_name`, `phone`, `house_no`, `street`, `landmark`, `locality`, `city`, `city_id`, `pincode`, `is_points_redeemed`, `no_of_points_redeemed`, `points_value`, `message`, `date_created`, `status`, `payment_type`, `payment_card`, `payment_gateway`, `no_of_items`, `paid_date`, `paid_amount`, `transaction_id`, `payer_id`, `payer_email`, `payer_name`, `payment_status`, `date_updated`, `device_id`, `rating_value`, `is_admin_sent_to_km`, `km_id`, `km_received_datetime`, `is_admin_sent_to_dm`, `is_km_sent_to_dm`, `sent_km_id`, `dm_id`, `dm_received_datetime`, `last_updated_by`, `last_updated`, `delivered_status`, `delivered_status_datetime`, `cancelled_status`, `cancelled_status_datetime`) VALUES
(232, 101, '2017-10-31', '18:38 PM', '550.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, 'Your order is delivered successfully..enjoy it', '2017-10-31 13:08:15', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '550.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:38:28', 'No', 'Yes', 99, 100, '2017-10-31 18:38:51', 1, '2017-10-31 18:39:32', 'admin', '2017-10-31 18:39:32', NULL, NULL),
(233, 101, '2017-10-31', '18:40 PM', '547.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, NULL, '2017-10-31 13:10:17', 'new', 'cashCard', 'hipecard', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 101, '2017-10-31', '18:40 PM', '474.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, '', '2017-10-31 13:10:36', 'delivered', 'cash', NULL, NULL, 4, '2017-10-31', '474.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:42:54', 'admin', '2017-10-31 18:42:54', NULL, NULL),
(235, 101, '2017-10-31', '18:40 PM', '556.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, '', '2017-10-31 13:10:53', 'process', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:50:12', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:50:12', NULL, NULL, NULL, NULL),
(236, 101, '2017-10-31', '18:41 PM', '368.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, NULL, '2017-10-31 13:11:12', 'new', 'cashCard', 'visa', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 101, '2017-10-31', '18:41 PM', '377.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'No', NULL, NULL, '', '2017-10-31 13:11:42', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:42:36', 'No', 'Yes', 99, 100, '2017-10-31 18:44:31', 99, '2017-10-31 18:44:31', NULL, NULL, NULL, NULL),
(238, 101, '2017-10-31', '18:42 PM', '297.00', NULL, 'Arun N', '9966336699', '12-3', 'LK STREET', 'NEAR POST OFFICE', 'Sanjay Lake', 'Delhi', 5, '514213', 'Yes', 30, 60.00, '', '2017-10-31 13:12:03', 'out_to_deliver', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:42:47', 1, '2017-10-31 18:42:47', NULL, NULL, NULL, NULL),
(239, 102, '2017-10-31', '18:43 PM', '652.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:13:48', 'delivered', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:44:00', 'No', 'Yes', 99, 100, '2017-10-31 18:44:38', 100, '2017-10-31 18:45:00', 'dm', '2017-10-31 18:45:01', NULL, NULL),
(240, 102, '2017-10-31', '18:45 PM', '497.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:15:22', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '497.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:46:56', 'admin', '2017-10-31 18:46:56', NULL, NULL),
(241, 102, '2017-10-31', '18:45 PM', '449.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2017-10-31 13:15:40', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 102, '2017-10-31', '18:45 PM', '767.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2017-10-31 13:15:59', 'new', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 102, '2017-10-31', '18:46 PM', '709.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:16:14', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '709.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:46:49', 'admin', '2017-10-31 18:46:49', NULL, NULL),
(244, 102, '2017-10-31', '18:46 PM', '478.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, '', '2017-10-31 13:16:29', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:46:42', 1, '2017-10-31 18:46:42', NULL, NULL, NULL, NULL),
(245, 102, '2017-10-31', '18:47 PM', '786.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'Yes', 30, 60.00, '', '2017-10-31 13:17:14', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '786.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:49:58', 'admin', '2017-10-31 18:49:58', NULL, NULL),
(246, 103, '2017-10-31', '18:48 PM', '615.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:18:47', 'process', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:49:01', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:49:01', NULL, NULL, NULL, NULL),
(247, 103, '2017-10-31', '18:49 PM', '230.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:19:26', 'delivered', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:49:38', 100, '2017-10-31 18:49:47', 'dm', '2017-10-31 18:49:47', NULL, NULL),
(248, 103, '2017-10-31', '18:50 PM', '337.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'Yes', 30, 60.00, NULL, '2017-10-31 13:20:42', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 103, '2017-10-31', '18:51 PM', '500.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:21:02', 'delivered', 'cash', NULL, NULL, 2, '2017-10-31', '500.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:52:06', 'admin', '2017-10-31 18:52:06', NULL, NULL),
(250, 103, '2017-10-31', '18:51 PM', '1150.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:21:20', 'process', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:51:59', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:51:59', NULL, NULL, NULL, NULL),
(251, 103, '2017-10-31', '18:51 PM', '349.00', NULL, 'Michale Dcks', '8585296678', '78', 'LK STREET', 'NEAR BANK ', 'India Gate1', 'Delhi', 5, '123456', 'No', NULL, NULL, '', '2017-10-31 13:21:35', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:51:49', 1, '2017-10-31 18:51:49', NULL, NULL, NULL, NULL),
(252, 104, '2017-10-31', '18:53 PM', '634.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:23:03', 'delivered', 'cash', NULL, NULL, 3, '2017-10-31', '634.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:54:06', 'admin', '2017-10-31 18:54:06', NULL, NULL),
(253, 104, '2017-10-31', '18:53 PM', '750.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:23:22', 'out_to_deliver', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, 'Yes', 'No', NULL, 100, '2017-10-31 18:53:59', 1, '2017-10-31 18:53:59', NULL, NULL, NULL, NULL),
(254, 104, '2017-10-31', '18:53 PM', '788.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:23:38', 'process', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:53:50', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:53:50', NULL, NULL, NULL, NULL),
(255, 104, '2017-10-31', '18:54 PM', '346.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'Yes', 30, 60.00, NULL, '2017-10-31 13:24:23', 'new', 'cash', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 104, '2017-10-31', '18:54 PM', '410.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'Yes', 20, 40.00, '', '2017-10-31 13:24:38', 'cancelled', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:54:48', NULL, NULL, 'admin', '2017-10-31 18:54:48'),
(257, 104, '2017-10-31', '18:55 PM', '583.00', 150.00, 'Stella Blessy', '7418529635', '75-6', 'LK STREET', 'NEAR BANK', 'Mind Space', 'Hyderabad', 529, '500081', 'No', NULL, NULL, '', '2017-10-31 13:25:01', 'cancelled', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:55:11', NULL, NULL, 'admin', '2017-10-31 18:55:11'),
(258, 105, '2017-10-31', '18:55 PM', '710.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'No', NULL, NULL, '', '2017-10-31 13:25:55', 'process', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, 'Yes', 99, '2017-10-31 18:56:06', NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:56:06', NULL, NULL, NULL, NULL),
(259, 105, '2017-10-31', '18:56 PM', '700.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'No', NULL, NULL, '', '2017-10-31 13:26:19', 'delivered', 'cash', NULL, NULL, 2, '2017-10-31', '700.00', NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:56:52', 'admin', '2017-10-31 18:56:52', NULL, NULL),
(260, 105, '2017-10-31', '18:56 PM', '552.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'No', NULL, NULL, '', '2017-10-31 13:26:55', 'cancelled', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-10-31 18:57:11', NULL, NULL, 'admin', '2017-10-31 18:57:11'),
(261, 105, '2017-10-31', '18:57 PM', '346.00', NULL, 'Sai N', '745632152', '4-67', 'LK STREET', 'NEAR BANK', 'DARKJA', 'Delhi', 5, '7896541', 'Yes', 30, 60.00, NULL, '2017-10-31 13:27:24', 'new', 'cash', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 102, '2018-01-04', '23:03 PM', '544.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2018-01-04 17:33:04', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 102, '2018-01-04', '23:57 PM', '599.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2018-01-04 18:27:30', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 102, '2018-01-04', '23:58 PM', '599.00', 100.00, 'Venkat Siva', '7788554411', '2-45', 'LK STREET', 'NEAR BANK', 'Lingampally', 'Hyderabad', 529, '500048', 'No', NULL, NULL, NULL, '2018-01-04 18:28:53', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 103, '2019-02-02', '16:53 PM', '675.00', 50.00, 'Michale Dcks', '8585296678', '66-6', 'sdfsdf', 'sdfsdf', 'Adyar', 'Chennai', 9, '518412', 'No', NULL, NULL, NULL, '2019-02-02 11:23:12', 'new', 'cash', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_addons`
--

CREATE TABLE `cr_order_addons` (
  `oa_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_name` varchar(50) NOT NULL,
  `addon_image` varchar(50) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `final_cost` decimal(10,2) DEFAULT NULL,
  `common_id` int(10) NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_addons`
--

INSERT INTO `cr_order_addons` (`oa_id`, `order_id`, `item_id`, `addon_name`, `addon_image`, `price`, `quantity`, `final_cost`, `common_id`, `is_deleted`) VALUES
(1, 232, 135, 'Jam', 'addon_47.jpg', '10.00', 1, '10.00', 35, 0),
(2, 233, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 61, 0),
(3, 246, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 2, 0),
(4, 246, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 2, 0),
(5, 258, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 50, 0),
(6, 258, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 50, 0),
(7, 262, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 38, 0),
(8, 262, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 38, 0),
(9, 263, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 67, 0),
(10, 263, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 67, 0),
(11, 264, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 96, 0),
(12, 264, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 96, 0),
(13, 265, 856787, 'Pepper', 'addon_43.jpg', '15.00', 1, '15.00', 92, 0),
(14, 265, 856787, 'Souce', 'addon_45.jpg', '20.00', 1, '20.00', 92, 0),
(15, 265, 856787, 'Lemon', 'addon_46.jpg', '10.00', 1, '10.00', 92, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_offers`
--

CREATE TABLE `cr_order_offers` (
  `order_offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(50) NOT NULL,
  `offer_cost` decimal(10,2) NOT NULL,
  `offer_quantity` int(11) NOT NULL,
  `offer_final_cost` decimal(10,2) NOT NULL,
  `offer_start_date` date NOT NULL,
  `offer_valid_date` date NOT NULL,
  `offer_conditions` varchar(100) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `offer_image_name` varchar(50) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_offers`
--

INSERT INTO `cr_order_offers` (`order_offer_id`, `order_id`, `offer_id`, `offer_name`, `offer_cost`, `offer_quantity`, `offer_final_cost`, `offer_start_date`, `offer_valid_date`, `offer_conditions`, `no_of_products`, `offer_image_name`, `is_deleted`) VALUES
(1, 257, 66, 'Diwali Offer', '90.00', 1, '90.00', '2017-10-31', '2017-11-30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 2, 'offer_66.png', 0),
(2, 257, 65, 'Stuffed Crust', '343.00', 1, '343.00', '2017-10-31', '2017-12-01', 'er ewrew', 2, 'offer_65.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_offer_products`
--

CREATE TABLE `cr_order_offer_products` (
  `order_offer_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` varchar(10) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `common_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_offer_products`
--

INSERT INTO `cr_order_offer_products` (`order_offer_product_id`, `order_id`, `offer_id`, `item_id`, `menu_id`, `item_name`, `item_quantity`, `is_deleted`, `common_id`) VALUES
(1, 257, 66, 856785, 41, 'Red Bull', '1', 0, 27),
(2, 257, 66, 18, 8, 'Baby Corn Manchurian', '2', 0, 27),
(3, 257, 65, 104, 12, 'Chicken Fried Rice', '2', 0, 62),
(4, 257, 65, 130, 13, 'Pineapple ', '1', 0, 62);

-- --------------------------------------------------------

--
-- Table structure for table `cr_order_products`
--

CREATE TABLE `cr_order_products` (
  `op_id` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_image_name` varchar(50) DEFAULT NULL,
  `size_id` varchar(20) NOT NULL COMMENT 'option_id of options table',
  `size_name` varchar(20) NOT NULL,
  `item_size_id` varchar(20) NOT NULL COMMENT 'item_option_id of item_options table',
  `size_price` varchar(20) DEFAULT NULL,
  `final_cost` decimal(10,2) DEFAULT NULL,
  `item_qty` int(11) NOT NULL,
  `item_cost` decimal(10,2) DEFAULT NULL,
  `common_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_order_products`
--

INSERT INTO `cr_order_products` (`op_id`, `is_deleted`, `order_id`, `item_id`, `menu_id`, `item_name`, `item_image_name`, `size_id`, `size_name`, `item_size_id`, `size_price`, `final_cost`, `item_qty`, `item_cost`, `common_id`) VALUES
(1, 0, 232, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '96'),
(2, 0, 232, 856772, 13, 'Green Tea', 'item_856772.jpg', '', '', '', '', '100.00', 1, '100.00', '04'),
(3, 0, 232, 135, 13, 'Butterscotch Milkshake', 'item_135.jpg', '4', 'Large', '44', '140.00', '150.00', 1, '140.00', '35'),
(4, 0, 233, 856773, 13, 'Beetroot Pomegranate  Juice', 'item_856773.jpg', '', '', '', '', '200.00', 1, '200.00', '73'),
(5, 0, 233, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '290.00', 1, '280.00', '61'),
(6, 0, 233, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '17'),
(7, 0, 234, 856780, 14, 'Orange Cake', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '26'),
(8, 0, 234, 129, 14, 'Fruit Salad', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '40'),
(9, 0, 234, 127, 14, 'Strawberry Icream', 'item_127.jpg', '', '', '', '', '125.00', 1, '125.00', '76'),
(10, 0, 234, 128, 14, 'Butterscotch', 'item_128.jpg', '', '', '', '', '125.00', 1, '125.00', '30'),
(11, 0, 235, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '27'),
(12, 0, 235, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '97'),
(13, 0, 235, 856778, 10, 'Butter Chicken', 'item_856778.jpg', '', '', '', '', '159.00', 1, '159.00', '10'),
(14, 0, 235, 856777, 10, 'Lima Beans Curry', 'item_856777.jpg', '', '', '', '', '149.00', 1, '149.00', '48'),
(15, 0, 236, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '28'),
(16, 0, 236, 108, 12, 'Veg Hakka Noodles', 'item_108.jpg', '', '', '', '', '184.00', 1, '184.00', '19'),
(17, 0, 237, 856783, 5, 'Potato and Corn Soup', 'item_856783.jpg', '', '', '', '', '119.00', 1, '119.00', '49'),
(18, 0, 237, 13, 5, 'Sweet Corn Chicken Soup', 'item_13.jpg', '', '', '', '', '134.00', 1, '134.00', '30'),
(19, 0, 237, 12, 5, 'Cream Of Chicken Soup', 'item_12.jpg', '', '', '', '', '124.00', 1, '124.00', '24'),
(20, 0, 238, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '46'),
(21, 0, 238, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '80'),
(22, 0, 239, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '79'),
(23, 0, 239, 108, 12, 'Veg Hakka Noodles', 'item_108.jpg', '', '', '', '', '184.00', 1, '184.00', '56'),
(24, 0, 239, 106, 12, 'Egg Fried Rice', 'item_106.jpg', '', '', '', '', '184.00', 1, '184.00', '02'),
(25, 0, 240, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '60'),
(26, 0, 240, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '50'),
(27, 0, 240, 856777, 10, 'Lima Beans Curry', 'item_856777.jpg', '', '', '', '', '149.00', 1, '149.00', '21'),
(28, 0, 241, 856780, 14, 'Orange Cake', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '75'),
(29, 0, 241, 129, 14, 'Fruit Salad', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '46'),
(30, 0, 241, 128, 14, 'Butterscotch', 'item_128.jpg', '', '', '', '', '125.00', 1, '125.00', '36'),
(31, 0, 242, 856791, 21, 'Country Feast', 'item_856791.jpg', '', '', '', '', '67.00', 1, '67.00', '50'),
(32, 0, 242, 856767, 21, 'Farm House', 'item_856767.jpg', '', '', '', '', '300.00', 1, '300.00', '94'),
(33, 0, 242, 152, 21, 'Country Special', 'item_152.jpg', '14', 'Single', '6', '100.00', '100.00', 1, '100.00', '09'),
(34, 0, 242, 153, 21, 'Peppy Paneer', 'item_153.jpg', '', '', '', '', '200.00', 1, '200.00', '84'),
(35, 0, 243, 856771, 8, ' Hot Chocolate', 'item_856771.jpg', '', '', '', '', '100.00', 1, '100.00', '73'),
(36, 0, 243, 856760, 8, 'Paneer Butter Masala', 'item_856760.jpg', '', '', '', '', '200.00', 1, '200.00', '30'),
(37, 0, 243, 24, 8, 'Chicken Drum Sticks', 'item_24.jpg', '', '', '', '', '309.00', 1, '309.00', '98'),
(38, 0, 244, 856783, 5, 'Potato and Corn Soup', 'item_856783.jpg', '', '', '', '', '119.00', 1, '119.00', '18'),
(39, 0, 244, 10, 5, 'Hot-N-Sour Vegetable Soup', 'item_10.jpg', '', '', '', '', '125.00', 1, '125.00', '26'),
(40, 0, 244, 11, 5, 'Clear Chicken Noodle Soup', 'item_11.jpg', '', '', '', '', '134.00', 1, '134.00', '21'),
(41, 0, 245, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '57'),
(42, 0, 245, 108, 12, 'Veg Hakka Noodles', 'item_108.jpg', '', '', '', '', '184.00', 1, '184.00', '67'),
(43, 0, 245, 99, 12, 'Sweet-N-Sour Prawns', 'item_99.jpg', '', '', '', '', '378.00', 1, '378.00', '30'),
(44, 0, 246, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '315.00', 1, '280.00', '02'),
(45, 0, 246, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '03'),
(46, 0, 247, 856791, 21, 'Country Feast', 'item_856791.jpg', '', '', '', '', '67.00', 1, '67.00', '12'),
(47, 0, 247, 856790, 21, 'Chicken Italiano', 'item_856790.jpg', '', '', '', '', '57.00', 1, '57.00', '68'),
(48, 0, 247, 856788, 21, 'Paneer Vegorama', 'item_856788.jpg', '', '', '', '', '49.00', 1, '49.00', '61'),
(49, 0, 247, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '43'),
(50, 0, 248, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '02'),
(51, 0, 248, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '90'),
(52, 0, 248, 856777, 10, 'Lima Beans Curry', 'item_856777.jpg', '', '', '', '', '149.00', 1, '149.00', '65'),
(53, 0, 249, 856771, 8, ' Hot Chocolate', 'item_856771.jpg', '', '', '', '', '100.00', 1, '100.00', '57'),
(54, 0, 249, 856760, 8, 'Paneer Butter Masala', 'item_856760.jpg', '', '', '', '', '400.00', 2, '200.00', '92'),
(55, 0, 250, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '18'),
(56, 0, 250, 856769, 21, 'Barbeque Chicken', 'item_856769.jpg', '', '', '', '', '300.00', 1, '300.00', '29'),
(57, 0, 250, 856767, 21, 'Farm House', 'item_856767.jpg', '', '', '', '', '300.00', 1, '300.00', '86'),
(58, 0, 250, 154, 21, 'Chicken Mexicana', 'item_154.jpg', '', '', '', '', '250.00', 1, '250.00', '73'),
(59, 0, 251, 856780, 14, 'Orange Cake', 'item_856780.jpg', '', '', '', '', '99.00', 1, '99.00', '38'),
(60, 0, 251, 129, 14, 'Fruit Salad', 'item_129.jpg', '', '', '', '', '125.00', 1, '125.00', '54'),
(61, 0, 251, 127, 14, 'Strawberry Icream', 'item_127.jpg', '', '', '', '', '125.00', 1, '125.00', '87'),
(62, 0, 252, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '90'),
(63, 0, 252, 856772, 13, 'Green Tea', 'item_856772.jpg', '', '', '', '', '100.00', 1, '100.00', '69'),
(64, 0, 252, 137, 13, 'Cold Coffee', 'item_137.jpg', '', '', '', '', '84.00', 1, '84.00', '96'),
(65, 0, 253, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '65'),
(66, 0, 253, 153, 21, 'Peppy Paneer', 'item_153.jpg', '', '', '', '', '200.00', 1, '200.00', '80'),
(67, 0, 253, 152, 21, 'Country Special', 'item_152.jpg', '14', 'Single', '6', '100.00', '100.00', 1, '100.00', '95'),
(68, 0, 254, 856784, 10, 'Cheese Balls', 'item_856784.jpg', '', '', '', '', '99.00', 1, '99.00', '52'),
(69, 0, 254, 856779, 10, 'Beetroot Curry', 'item_856779.jpg', '', '', '', '', '149.00', 1, '149.00', '94'),
(70, 0, 254, 149, 10, 'Paneer', 'item_149.jpg', '9', 'Medium', '39', '300.00', '300.00', 1, '300.00', '45'),
(71, 0, 254, 148, 10, 'Chicken Curry', 'item_148.jpg', '', '', '', '', '90.00', 1, '90.00', '28'),
(72, 0, 255, 91, 11, 'Roasted Papad', 'item_91.jpg', '', '', '', '', '38.00', 1, '38.00', '18'),
(73, 0, 255, 89, 11, 'Pineapple Raita', 'item_89.jpg', '', '', '', '', '84.00', 1, '84.00', '64'),
(74, 0, 255, 85, 11, 'Masala Kulcha', 'item_85.jpg', '', '', '', '', '67.00', 1, '67.00', '78'),
(75, 0, 255, 86, 11, 'Butter Naan', 'item_86.jpg', '', '', '', '', '67.00', 1, '67.00', '46'),
(76, 0, 256, 856771, 8, ' Hot Chocolate', 'item_856771.jpg', '', '', '', '', '100.00', 1, '100.00', '72'),
(77, 0, 256, 856760, 8, 'Paneer Butter Masala', 'item_856760.jpg', '', '', '', '', '200.00', 1, '200.00', '61'),
(78, 0, 258, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '310.00', 1, '280.00', '50'),
(79, 0, 258, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '41'),
(80, 0, 258, 856772, 13, 'Green Tea', 'item_856772.jpg', '', '', '', '', '100.00', 1, '100.00', '75'),
(81, 0, 259, 856763, 6, 'Malabar Biriyani', 'item_856763.jpg', '', '', '', '', '400.00', 1, '400.00', '57'),
(82, 0, 259, 856761, 6, 'Keema Biryani Recipe', 'item_856761.jpg', '', '', '', '', '300.00', 1, '300.00', '78'),
(83, 0, 260, 107, 12, 'Veg Soft Noodles', 'item_107.jpg', '', '', '', '', '184.00', 1, '184.00', '80'),
(84, 0, 260, 106, 12, 'Egg Fried Rice', 'item_106.jpg', '', '', '', '', '184.00', 1, '184.00', '15'),
(85, 0, 260, 102, 12, 'Chicken Soft Noodles', 'item_102.jpg', '', '', '', '', '184.00', 1, '184.00', '81'),
(86, 0, 261, 856789, 21, 'Triple Chicken Feast', 'item_856789.jpg', '', '', '', '', '57.00', 1, '57.00', '56'),
(87, 0, 261, 856788, 21, 'Paneer Vegorama', 'item_856788.jpg', '', '', '', '', '49.00', 1, '49.00', '13'),
(88, 0, 261, 856770, 21, 'Cheese Pepperoni', 'item_856770.jpg', '', '', '', '', '300.00', 1, '300.00', '06'),
(89, 0, 262, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '310.00', 1, '280.00', '38'),
(90, 0, 262, 13, 5, 'Sweet Corn Chicken Soup', 'item_13.jpg', '', '', '', '', '134.00', 1, '134.00', '09'),
(91, 0, 263, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '315.00', 1, '280.00', '67'),
(92, 0, 263, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '49'),
(93, 0, 264, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '315.00', 1, '280.00', '96'),
(94, 0, 264, 109, 12, 'Veg Fried Rice', 'item_109.jpg', '', '', '', '', '184.00', 1, '184.00', '98'),
(95, 0, 265, 856787, 13, 'Kiwi Margarita', 'item_856787.jpg', '4', 'Large', '41', '280.00', '325.00', 1, '280.00', '92'),
(96, 0, 265, 856786, 13, 'Sports drink', 'item_856786.jpg', '', '', '', '', '300.00', 1, '300.00', '90');

-- --------------------------------------------------------

--
-- Table structure for table `cr_pages`
--

CREATE TABLE `cr_pages` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_pages`
--

INSERT INTO `cr_pages` (`id`, `slug`, `name`, `description`, `status`) VALUES
(1, 'about-us', 'About Us', '<p><small>We Have The Glory Begining in Restaurant Business</small></p>\r\n\r\n<p> </p>\r\n\r\n<p>We made it simple. Technologies, originally developed for a clinical application, now used in a smaller, manageable skin care devices which are easy to use. Our new products are an excellent relax and arome atmosphere.</p>\r\n\r\n<p>We believe that from modern point of view \"normal\" aging isnt normal at all. It is choices you make by the way you live your life. Welcome to the world of most advanced anti-aging treatments.</p>\r\n', 'Active'),
(2, 'how-it-works', 'How It Works', '<p><small>We Have The Glory Begining in Restaurant Business</small></p>\r\n\r\n<p>We made it simple. Technologies, originally developed for a clinical application, now used in a smaller, manageable skin care devices which are easy to use. Our new products are an excellent relax and arome atmosphere.</p>\r\n\r\n<p>We believe that from modern point of view \"normal\" aging isnt normal at all. It is choices you make by the way you live your life. Welcome to the world of most advanced anti-aging treatments.</p>\r\n', 'Active'),
(3, 'terms-conditions', 'Terms and Conditions', '<p>The following terms and conditions were put together to help users better understand how their use of this website will be governed.</p>\r\n\r\n<p>UISuMo is owned and operated by UISuMo.</p>\r\n\r\n<p>Your use and access of this website indicates you accept these Terms and Conditions.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>1.Ownership and Property Rights</strong></p>\r\n\r\n<p>Using this website does not grant you any ownership or interest in any content, visual interfaces, graphics, design, compilation, information, computer code, products, software, services and all other elements you may access from the website.</p>\r\n\r\n<p>You are authorized to download a single copy of purchased/Free downloaded content contained on the website for your personal, non-commercial uses, provided that you maintain the copyright and other notices contained in that content. This excludes products available with premium <a href=\"https://uisumo.com/licenses\">licenses</a>. Please consult our licenses page for more information.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>2. User Information</strong></p>\r\n\r\n<p>In the course of your use of the website, you may be asked for personally identifiable information. We uphold rigorous standards to uphold the integrity of this information as outlined in our <a href=\"https://uisumo.com/privacy-policy\">Privacy Policy</a>. You are solely responsible for the accuracy and content of this user information.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>3. Third Party websites</strong></p>\r\n\r\n<p>In the course of your use of the website, you may be re-directed to third party websites. We have no responsibility for the content or information provided by or through third party websites even if they are affiliates of ours.</p>\r\n\r\n<p>Linking to third party websites does not imply our endorsement of that web website. We disclaim any liability for links to another website.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>4. Limitation of Liability</strong></p>\r\n\r\n<p>You agree to indemnify and hold harmless UISuMo and its parent, subsidiaries, affiliates or any related companies, licensors and suppliers, and their respective directors, officers, employees, agents, representatives, and contractors, from all damages, injuries, liabilities, costs, fees and expenses (including, but not limited to, legal and accounting fees) arising from or in any way related to (i) your use or misuse of the website (including your use or misuse of Third Party Content); (ii) your breach or other violation of these Terms including any representations, warranties and covenants herein; (iii) your violation of the rights of any other person or entity, including, but not limited to claims that any User Content infringes or violates any third party intellectual property rights.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>5. Exclusion of Warranties</strong></p>\r\n\r\n<p>The UISuMo content, or any other product, service or information provided by UISuMo, user content, third-party content, and any other software, services or applications made available in conjunction with or through the website, are provided on an \"as is\", \"as available\", \"with all faults\" basis without representations or warranties of any kind, either express, implied, or statutory, including, but not limited to, in terms of correctness, accuracy, reliability, or otherwise.</p>\r\n\r\n<p>To the fullest extent permissible by applicable law, UISuMo hereby disclaims all warranties of any kind, either express or implied, including, any warranty of merchantability, fitness for a particular purpose, non-infringement, or arising from a course of dealing, with respect to the products or services provided by UISuMo.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>7. Notices</strong></p>\r\n\r\n<p>UISuMo may provide you with notices by e-mail. You can opt-out of our newsletter at any time.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>8. Refunds</strong></p>\r\n\r\n<p>Refunds will only be administered if products are deemed to be faulty or not as described on the product page. To request a refund, please <a href=\"mailto:help@uisumo.com\">help@uisumo.com</a> and specify exactly what the issue is with the product. The support team will then investigate to determine whether or not the product was faulty and not as described.</p>\r\n\r\n<p>Unfortunately, due to the nature of digital goods, refunds cannot be processed until it has been determined that the product is faulty.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>9. Governing Law</strong></p>\r\n\r\n<p>This agreement, and any dispute, controversy, proceedings or claim of whatever nature arising out of or in any way relating to these Terms & Conditions or its formation shall be governed by and construed in accordance with Romanian law.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>10. Modification of the Terms</strong></p>\r\n\r\n<p>UISuMo reserves the right to update or modify the Terms & Conditions at any time without prior notice, and such changes will be effective immediately upon being posted on the website. These Terms will identify the date of last update. In the case of material changes to the Terms, UISuMo will make reasonable efforts to notify you of the change, such as through sending an email to any address you may have used to register for an account, through a pop-up window on the website, or other similar mechanism.</p>\r\n\r\n<p>These terms were last updated on August 27, 2017</p>\r\n\r\n<p> </p>\r\n', 'Active'),
(4, 'privacy-policy', 'Privacy and Policys', '<p><span class=\"marker\"><strong>Privacy Policy template for website usage</strong></span></p>\r\n\r\n<p>Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern [business name]&#39;s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website.</p>\r\n\r\n<p>The term &#39;[business name]&#39; or &#39;us&#39; or &#39;we&#39; refers to the owner of the website whose registered office is [address]. Our company registration number is [company registration number and place of registration]. The term &#39;you&#39; refers to the user or viewer of our website.</p>\r\n\r\n<p>The use of this website is subject to the following terms of use:</p>\r\n\r\n<ul>\r\n <li>The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li>\r\n <li>This website uses cookies to monitor browsing preferences. If you do allow cookies to be used, the following personal information may be stored by us for use by third parties: [insert list of information].</li>\r\n <li>Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\r\n <li>Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through this website meet your specific requirements.</li>\r\n <li>This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li>\r\n <li>All trade marks reproduced in this website which are not the property of, or licensed to, the operator are acknowledged on the website.</li>\r\n <li>Unauthorised use of this website may give rise to a claim for damages and/or be a criminal offence.</li>\r\n <li>From time to time this website may also include links to other websites. These links are provided for your convenience to provide further information. They do not signify that we endorse the website(s). We have no responsibility for the content of the linked website(s).</li>\r\n <li>Your use of this website and any dispute arising out of such use of the website is subject to the laws of England, Northern Ireland, Scotland and Wales.</li>\r\n</ul>\r\n\r\n<p> </p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_paypal_settings`
--

CREATE TABLE `cr_paypal_settings` (
  `id` int(11) NOT NULL,
  `PayPalEnvironmentProduction` varchar(512) NOT NULL,
  `PayPalEnvironmentSandbox` varchar(512) NOT NULL,
  `merchantName` varchar(512) NOT NULL,
  `merchantPrivacyPolicyURL` varchar(512) NOT NULL,
  `merchantUserAgreementURL` varchar(512) NOT NULL,
  `currency` varchar(512) NOT NULL,
  `account_type` enum('sandbox','production') NOT NULL DEFAULT 'sandbox',
  `paypal_email` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_paypal_settings`
--

INSERT INTO `cr_paypal_settings` (`id`, `PayPalEnvironmentProduction`, `PayPalEnvironmentSandbox`, `merchantName`, `merchantPrivacyPolicyURL`, `merchantUserAgreementURL`, `currency`, `account_type`, `paypal_email`, `status`) VALUES
(1, 'PayPal Environment Production', 'PayPal Environment Sandbox', 'Merchant Name', 'Merchant Privacy Policy URL', 'Merchant User Agreement URL', 'USD', 'sandbox', 'restaurant@contact.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_referral_settings`
--

CREATE TABLE `cr_referral_settings` (
  `settings_id` int(11) NOT NULL,
  `referral_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `points_for_refer_anyone` int(10) DEFAULT NULL,
  `points_for_referred_by_anyone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_referral_settings`
--

INSERT INTO `cr_referral_settings` (`settings_id`, `referral_enabled`, `points_for_refer_anyone`, `points_for_referred_by_anyone`) VALUES
(1, 'Yes', 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cr_referral_users`
--

CREATE TABLE `cr_referral_users` (
  `referral_id` int(11) NOT NULL,
  `refer_user_id` int(11) UNSIGNED NOT NULL,
  `refer_user_points` int(11) DEFAULT NULL,
  `refer_by` int(11) UNSIGNED NOT NULL,
  `refer_by_points` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_referral_users`
--

INSERT INTO `cr_referral_users` (`referral_id`, `refer_user_id`, `refer_user_points`, `refer_by`, `refer_by_points`, `datetime`) VALUES
(15, 102, 20, 101, 10, '2017-12-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cr_restaurant_timings`
--

CREATE TABLE `cr_restaurant_timings` (
  `id` int(11) NOT NULL,
  `day` enum('monday','tuesday','wednesday','thursday','friday','saturday','sunday') DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `from_time` char(34) DEFAULT NULL,
  `to_time` char(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_restaurant_timings`
--

INSERT INTO `cr_restaurant_timings` (`id`, `day`, `status`, `from_time`, `to_time`) VALUES
(1, 'monday', 'closed', '09:00', '16:00'),
(2, 'tuesday', 'opened', '10:00', '17:00'),
(3, 'wednesday', 'opened', '11:00', '18:00'),
(4, 'thursday', 'closed', '12:00', '19:00'),
(5, 'friday', 'opened', '13:00', '20:00'),
(6, 'saturday', 'closed', '14:00', '21:00'),
(7, 'sunday', 'opened', '15:00', '22:00');

-- --------------------------------------------------------

--
-- Table structure for table `cr_seo_settings`
--

CREATE TABLE `cr_seo_settings` (
  `id` int(11) NOT NULL,
  `meta_keyword` varchar(500) NOT NULL,
  `meta_description` varchar(1000) NOT NULL,
  `google_analytics` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_seo_settings`
--

INSERT INTO `cr_seo_settings` (`id`, `meta_keyword`, `meta_description`, `google_analytics`) VALUES
(1, 'Foodcourt', 'The Meta tag is behind-the-scenes in your code, so it isn\'t visible on your website. The Meta tag is for search engines and other bots. Meta tags include your keywords, page title and your page\'s description. ... The Meta title tag is the unique title you give each one of your restaurant website\'s pages.', 'Google Analytics');

-- --------------------------------------------------------

--
-- Table structure for table `cr_service_provide_locations`
--

CREATE TABLE `cr_service_provide_locations` (
  `service_provide_location_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locality` varchar(600) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `delivery_fee` float(10,2) DEFAULT NULL,
  `delivery_from_time` varchar(10) DEFAULT NULL,
  `delivery_to_time` varchar(10) DEFAULT NULL,
  `delivery_time_units` enum('minutes','hours') DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_service_provide_locations`
--

INSERT INTO `cr_service_provide_locations` (`service_provide_location_id`, `city_id`, `locality`, `pincode`, `delivery_fee`, `delivery_from_time`, `delivery_to_time`, `delivery_time_units`, `status`) VALUES
(3, 9, 'Adyar', '518412', 50.00, '10', '20', 'minutes', 'Active'),
(4, 9, 'Nemilichery', '518423', 35.00, '', '', NULL, 'Active'),
(7, 514, 'Hebbal', '500812', NULL, '', '', NULL, 'Active'),
(8, 514, 'Marathahalli', '514218', NULL, '', '', NULL, 'Active'),
(9, 514, 'Koramangala', '514813', NULL, '', '', NULL, 'Active'),
(11, 5, 'Sanjay Lake', '514213', NULL, '', '', NULL, 'Active'),
(12, 5, 'Pitampura ', '500112', NULL, '', '', NULL, 'Inactive'),
(14, 270, 'Makota', '50002', 50.00, '20', '30', 'minutes', 'Active'),
(15, 226, 'Kol', '8520', 20.00, '10', '20', 'minutes', 'Active'),
(16, 5, 'DARKJA', '7896541', NULL, '', '', NULL, 'Active'),
(19, 13, 'JANGOAN', '500089', 50.00, '1', '4', 'hours', 'Active'),
(21, 10, 'KR Puram', '560036', NULL, '', '', NULL, 'Active'),
(22, 270, 'Makota', '50003', 25.00, '10', '20', 'minutes', 'Active'),
(24, 5, 'test1', '565645', NULL, NULL, NULL, NULL, 'Active'),
(33, 5, 'zfdxvbgfdg', '4653653', NULL, NULL, NULL, NULL, 'Active'),
(35, 5, 'India Gate1', '123456', NULL, NULL, NULL, NULL, 'Active'),
(36, 26, 'Kavali', '524201', 250.00, '2', '5', 'hours', 'Active'),
(37, 5, 'Jai mandir market', '110049', 500.00, '1', '2', 'hours', 'Active'),
(38, 9, 'Villivakkam', '600049', 250.00, '2', '3', 'hours', 'Active'),
(39, 10, 'BTM Layout', '618123', 100.00, '1', '5', 'hours', 'Active'),
(40, 9, 'Perambur', '600011', 300.00, '1', '2', 'hours', 'Active'),
(41, 529, 'Lingampally', '500048', 100.00, '1', '5', 'hours', 'Active'),
(42, 529, 'Sainikpuri', '555432', 200.00, '30', '50', 'minutes', 'Active'),
(43, 529, 'Hitech City', '500045', 100.00, '1', '3', 'hours', 'Active'),
(44, 529, 'Mind Space', '500081', 150.00, '10', '50', 'minutes', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_sessions`
--

CREATE TABLE `cr_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_sessions`
--

INSERT INTO `cr_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0b9597gpgimi79at7cbr7cjqo0lrk18d', '::1', 1509437183, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a313038303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a323b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3630303b7d733a33323a223064633261316434383830636364663033636365323531623666356134356434223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3238303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223431223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223238302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a33353b733a363a226164646f6e73223b613a323a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a33353b7d733a353a22726f776964223b733a33323a223064633261316434383830636364663033636365323531623666356134356434223b733a383a22737562746f74616c223b643a3238303b7d733a33323a223966343130316639343937656137343334623932303065613134623034393839223b613a373a7b733a323a226964223b733a363a22383536373831223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a31313a224567672062697279616e69223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363738312e6a7067223b733a393a226974656d5f636f7374223b733a363a223135392e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223331223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223230302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a34353b733a363a226164646f6e73223b613a333a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b693a323b733a32393a2234363d31302e30303d313d4c656d6f6e3d6164646f6e5f34362e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a34353b7d733a353a22726f776964223b733a33323a223966343130316639343937656137343334623932303065613134623034393839223b733a383a22737562746f74616c223b643a3230303b7d7d6c6f67696e75707c623a313b),
('0k7krrs9iss0luefrq7nmhodps03ek2f', '::1', 1509437160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373136303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226432376466326434656437663861623037616439323233306663643833323265223b),
('0rqdqpvvmr3d7s7qcio5tjaqmq614te3', '::1', 1509437229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373232383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223635643566376530623365623166613363643834326561666636616431336534223b),
('1n2phtl6sbr0g7drv387najh3b44p8rl', '::1', 1509432998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323837383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226533363434636534386235353234356362653065653065396165326336373765223b),
('4ti0fjru5o5a8hq0dtub5q2g6l98mfhb', '::1', 1509435683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226134376133353135323336356663396633613063326537316661623036666562223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('70ks4unfbsbvoc3p21r3m9hc0634o5f6', '::1', 1509433591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333537383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226439653933326634616566613265336139633461316539623535393935313664223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31343a2241646d696e206973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332333131223b),
('84alb2kvtd0anbth88r0a60l8274amuv', '::1', 1509436376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433363337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223961336336613663393463643230303038333964323464333934333331633531223b),
('91tu8bt98tsvmq2607t32n4ih34i84bh', '::1', 1509435683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353638333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3538303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d733a33323a223064633261316434383830636364663033636365323531623666356134356434223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3238303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223431223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223238302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a33353b733a363a226164646f6e73223b613a323a7b693a303b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a313b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a33353b7d733a353a22726f776964223b733a33323a223064633261316434383830636364663033636365323531623666356134356434223b733a383a22737562746f74616c223b643a3238303b7d7d6c6f67696e75707c623a313b),
('9882o8vp1ubeif8b0v86u0pums8e00ag', '::1', 1509437869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373836393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226330396238313034376362383838366565376565366164396132636530393635223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('b0bv5h4ob3bc3s2v1lrt3aqkt5ssr8a4', '::1', 1509434917, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343931373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223537633239326165666164666638613538336337326133343562326238393338223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('b7873ilbni7me1ul3u359u0v9cdjceqr', '::1', 1509438201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383230313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223532313064343236306463646464613562653664393861633865313837326666223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('cgat1tv49r9qvf1t3i6k7ukp9hpr9bll', '::1', 1509434609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343630393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223865306664383930373837326537363831396430373137303266616434323132223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('dfmpvi2higfjvs0k6fg1g13so08mko7d', '::1', 1509433375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223363313365336233656130336231653634663232336465613532373631383161223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('g19qp8p2kbjj64c8jr0e8p818hr5epoa', '::1', 1509433446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333337353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223531396232333366623330326561333030373934316664336161383665616139223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('ghq1aff1j9u9qr6ureop7fr3t7hack4n', '::1', 1509432024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323032343b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223330333364656663643264636133353335353339336361313233323861363761223b),
('ip41c5htotv6ctt3bn2a37v17iqvrl5r', '::1', 1509434296, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343239363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223862303662616336633864356232376635376266376334386533346430376534223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('lfoklaqp3nnber6niglekccma6rhp34r', '::1', 1509433464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323032333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226239363462373230353937646338366335663963613733633264613234616165223b),
('lq6sjo12112075ueqa1rdkqga93o1hch', '::1', 1509438425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373535373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223737316466323065653863653431613661663062333131353235316537386636223b),
('lva4p1e629m4j13ue73slm30qu1qa5p7', '::1', 1509432878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433323837383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223831353637656133333337343030663736656638646136306163353535386235223b),
('pdgibpt4niuho1q1dgusinf8rn5mt7g3', '::1', 1509438668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383635373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226632313036333932633536316433333531613733666631383336316562316161223b),
('pm6urek23kijiii02pr7l08hc6lgvhqa', '::1', 1509436898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433363739313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226664373134383465383133326432366533633832326233313630643264396666223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343335373133223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3732393b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a223938663861373234613538643732333935623836623463323835313661613333223b613a373a7b733a323a226964223b733a363a22383536373831223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a31313a224567672062697279616e69223b733a373a226f7074696f6e73223b613a31323a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363738312e6a7067223b733a393a226974656d5f636f7374223b733a363a223135392e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b733a31363a226974656d5f6f7074696f6e5f6e616d65223b733a353a224c61726765223b733a31343a226974656d5f6f7074696f6e5f6964223b733a323a223331223b733a393a226f7074696f6e5f6964223b733a313a2234223b733a31373a226974656d5f6f7074696f6e5f7072696365223b733a363a223230302e3030223b733a32303a226164646f6e735f636f73745f7065725f6974656d223b643a34353b733a363a226164646f6e73223b613a333a7b693a303b733a33303a2234323d31302e30303d313d4f6e696f6e733d6164646f6e5f34322e6a7067223b693a313b733a33303a2234333d31352e30303d313d5065707065723d6164646f6e5f34332e6a7067223b693a323b733a32393a2234353d32302e30303d313d536f7563653d6164646f6e5f34352e6a7067223b7d733a31373a2265787472615f636f7374735f746f74616c223b643a34353b7d733a353a22726f776964223b733a33323a223938663861373234613538643732333935623836623463323835313661613333223b733a383a22737562746f74616c223b643a3230303b7d733a33323a226537336136623230343461356566623436666163363739613865313730353131223b613a373a7b733a323a226964223b733a363a22383536373633223b733a333a22717479223b643a313b733a353a227072696365223b643a3430303b733a343a226e616d65223b733a31363a224d616c61626172204269726979616e69223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736332e6a7067223b733a393a226974656d5f636f7374223b733a363a223430302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226537336136623230343461356566623436666163363739613865313730353131223b733a383a22737562746f74616c223b643a3430303b7d733a33323a223336316264616165633534633132633931383937653437363736383662316538223b613a373a7b733a323a226964223b733a323a223535223b733a333a22717479223b643a313b733a353a227072696365223b643a3132393b733a343a226e616d65223b733a393a224d656761204465616c223b733a373a226f7074696f6e73223b613a343a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31323a226f666665725f35352e6a7067223b733a383a2269735f6f66666572223b693a313b733a363a226f6666657273223b613a343a7b693a303b733a32313a22313d53776565742d4e2d536f757220507261776e73223b693a313b733a31333a22313d427574746572204e61616e223b693a323b733a31323a22313d50696e656170706c6520223b693a333b733a32343a22323d50696e656170706c6520576974682056616e696c6c61223b7d7d733a353a22726f776964223b733a33323a223336316264616165633534633132633931383937653437363736383662316538223b733a383a22737562746f74616c223b643a3132393b7d7d),
('q87nk6f2msum6m3a8hosiol6uodlgfe4', '::1', 1509437178, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433343636373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223266313761373961663663383339636537373661633637393363383933353864223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d),
('qbd81b3mbq2nptgbe43l7v6omtn89bai', '::1', 1509437180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433373136303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223834393030343831613539376535356532616532356237343962303663306664223b),
('qfirjhjrvr0l76klthhd3a96203jlfts', '::1', 1509433205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333031393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223337623961363265386436356562383861306366386134373933383135363565223b6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343332313536223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3536303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b613a373a7b733a323a226964223b733a363a22383536373837223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31343a224b697769204d6172676172697461223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a31393a2273667364667364667361646673646673646666223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223236302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226466316161663061316234633864363666323036316463336463326662303464223b733a383a22737562746f74616c223b643a3236303b7d733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d),
('rhc15hcmrir1d4vkblopeat59hgf7uv0', '::1', 1509433591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433333437333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223766313463623730653532323164306138343063633966353134636662393739223b6d6573736167657c733a3235303a22203c212d2d203c64697620636c6173733d27636f6c2d6d642d3132273e202d2d3e0d0a090909090909090909093c64697620636c6173733d27616c65727420616c6572742d696e666f273e0d0a09090909090909090909093c6120687265663d27232720636c6173733d27636c6f73652720646174612d6469736d6973733d27616c657274273e2674696d65733b3c2f613e0d0a09090909090909090909093c7374726f6e673e496e666f213c2f7374726f6e673e20506c65617365206c6f67696e20746f20636f6e74696e75650d0a090909090909090909093c2f6469763e0d0a0909090909090909093c212d2d203c2f6469763e202d2d3e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('sa8j64ncon2sgfik0sr07sqg0vpvm9i5', '::1', 1509435313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353330353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223232376435636633363738323134393361386138316366383064616434656338223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b757365726e616d657c733a31343a2241646d696e206973747261746f72223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333363039223b),
('soi1hqljhiieqoj6o2nrkhib3enl35p9', '::1', 1509435380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433353337393b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a226462343635633937363066353135373536306531376361336165386561313036223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b613a373a7b733a323a226964223b733a363a22383536373631223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a32303a224b65656d612042697279616e6920526563697065223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a37333a224c6f72656d20497073756d2069732073696d706c792064756d6d792074657874206f6620746865207072696e74696e6720616e64207479706573657474696e6720696e647573747279223b733a353a22696d616765223b733a31353a226974656d5f3835363736312e6a7067223b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a313a2236223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226263643338623130303730653665663833653862613463616236653062303162223b733a383a22737562746f74616c223b643a3330303b7d7d6964656e746974797c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365726e616d657c733a31353a224e6176616e656574686120416e6465223b656d61696c7c733a32363a226e6176616e69636f6e717565726f727340676d61696c2e636f6d223b757365725f69647c733a323a223433223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353039343333343739223b),
('t9ek1bobpmb4lqqdvks7s3844bavticb', '::1', 1509438374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530393433383230313b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b4642524c485f73746174657c733a33323a223961346364343939376637623835656437613534366339333230343538366464223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3330303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b613a373a7b733a323a226964223b733a363a22383536373836223b733a333a22717479223b643a313b733a353a227072696365223b643a3330303b733a343a226e616d65223b733a31323a2253706f727473206472696e6b223b733a373a226f7074696f6e73223b613a353a7b733a31313a226465736372697074696f6e223b733a36323a2246696e642074686520677265617420636f6c6c656374696f6e206f662031393120626576657261676573207265636970657320616e642064697368657320223b733a353a22696d616765223b4e3b733a393a226974656d5f636f7374223b733a363a223330302e3030223b733a373a226d656e755f6964223b733a323a223133223b733a383a2269735f6f66666572223b693a303b7d733a353a22726f776964223b733a33323a226433343462386437303532623334336339346366663136393363323838363763223b733a383a22737562746f74616c223b643a3330303b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `cr_site_settings`
--

CREATE TABLE `cr_site_settings` (
  `id` int(11) NOT NULL,
  `site_title` varchar(512) NOT NULL,
  `site_name` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(512) NOT NULL,
  `state` varchar(512) NOT NULL,
  `country` varchar(512) NOT NULL,
  `zip` varchar(512) NOT NULL,
  `phone` varchar(512) NOT NULL,
  `land_line` varchar(512) NOT NULL,
  `fax` varchar(512) NOT NULL,
  `portal_email` varchar(512) NOT NULL,
  `site_country` varchar(512) NOT NULL,
  `time_zone` varchar(20) NOT NULL,
  `from_time` varchar(50) NOT NULL,
  `to_time` varchar(50) NOT NULL,
  `site_language` varchar(20) NOT NULL,
  `design_by` varchar(512) NOT NULL,
  `rights_reserved_content` varchar(512) NOT NULL,
  `site_logo` varchar(512) NOT NULL,
  `second_site_logo` varchar(50) NOT NULL,
  `fevicon` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `ios_url` varchar(50) NOT NULL,
  `android_url` varchar(50) NOT NULL,
  `facebook_api` varchar(200) NOT NULL,
  `google_api` varchar(200) NOT NULL,
  `one_signal_server_api_key` varchar(100) NOT NULL,
  `one_signal_app_id` varchar(50) NOT NULL,
  `sms_notifications` enum('Yes','No') NOT NULL DEFAULT 'No',
  `fcm_push_notifications` enum('Yes','No') NOT NULL DEFAULT 'No',
  `admin_css` enum('orange','blue') NOT NULL DEFAULT 'orange',
  `date_format` enum('Y-m-d','Y/m/d','Y.m.d','d-m-Y','d/m/Y','d.m.Y','m-d-Y','m/d/Y','m.d.Y') NOT NULL DEFAULT 'Y-m-d',
  `payment_methods` varchar(50) DEFAULT NULL,
  `pusher_app_id` varchar(50) NOT NULL,
  `pusher_secret` varchar(50) NOT NULL,
  `pusher_key` varchar(50) NOT NULL,
  `pusher_status` enum('Yes','No') DEFAULT NULL,
  `facebook_app_id` varchar(100) DEFAULT NULL,
  `facebook_app_secret` varchar(100) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(50) DEFAULT NULL,
  `home_page_img` varchar(20) DEFAULT NULL,
  `home_page_caption` varchar(50) DEFAULT NULL,
  `home_page_tagline` varchar(50) DEFAULT NULL,
  `contact_map_script` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_site_settings`
--

INSERT INTO `cr_site_settings` (`id`, `site_title`, `site_name`, `address`, `city`, `state`, `country`, `zip`, `phone`, `land_line`, `fax`, `portal_email`, `site_country`, `time_zone`, `from_time`, `to_time`, `site_language`, `design_by`, `rights_reserved_content`, `site_logo`, `second_site_logo`, `fevicon`, `currency`, `currency_symbol`, `country_code`, `latitude`, `longitude`, `ios_url`, `android_url`, `facebook_api`, `google_api`, `one_signal_server_api_key`, `one_signal_app_id`, `sms_notifications`, `fcm_push_notifications`, `admin_css`, `date_format`, `payment_methods`, `pusher_app_id`, `pusher_secret`, `pusher_key`, `pusher_status`, `facebook_app_id`, `facebook_app_secret`, `google_client_id`, `google_client_secret`, `home_page_img`, `home_page_caption`, `home_page_tagline`, `contact_map_script`) VALUES
(1, 'Menorah Restaurant', 'RESTAURANT', 'Menorah Restaurant', 'Hyderabad', 'Telangana', 'India', '500081', '9876543210', '123456789', '123456789', 'contact@gmail.com', 'IN', 'Asia/Kolkata', '11:00', '23:59', 'english', 'Digital Samaritan', '© Menorah Restaurant 2019. All Rights Reserved.', 'site_logo.png', 'second_site_logo.png', 'fevicon.ico', 'USD', '$', '91', '17.456294', '78.367759', '', '', '', '', 'M2VmZDBjOGItYWJjYS00NjdhLWExMzktYWEwZjM4ZjZhNjE2', 'da39217b-0184-4b26-8ef2-e5704cda9eb1', 'No', 'No', 'orange', 'd-m-Y', 'online,cash_on_delivery,card_on_delivery', 'APP ID', 'SECRET', 'KEY', 'Yes', 'facebook app id', 'facebook app secret', 'google client id', 'google client secret', 'home_page_img.jpg', 'Best Quality and Tasty Food', '35 min average delivery time', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"1004\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=Conquerors%20Software%20Technologies&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://www.pureblack.de\">pure black</a></div><style>.mapouter{text-align:right;height:500px;width:1004px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:1004px;}</style></div>');

-- --------------------------------------------------------

--
-- Table structure for table `cr_sms_gate_ways`
--

CREATE TABLE `cr_sms_gate_ways` (
  `sms_gateway_id` int(11) NOT NULL,
  `sms_gateway_name` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_sms_gate_ways`
--

INSERT INTO `cr_sms_gate_ways` (`sms_gateway_id`, `sms_gateway_name`, `is_default`, `status`) VALUES
(1, 'Cliakatell', 'No', 'Active'),
(2, 'Nexmo', 'No', 'Active'),
(3, 'Plivo', 'No', 'Active'),
(4, 'Solutionsinfini', 'No', 'Active'),
(5, 'Twilio', 'Yes', 'Active'),
(7, 'MSG91', 'No', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `cr_sms_templates`
--

CREATE TABLE `cr_sms_templates` (
  `sms_template_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `sms_template` varchar(1000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_sms_templates`
--

INSERT INTO `cr_sms_templates` (`sms_template_id`, `subject`, `sms_template`, `status`) VALUES
(1, 'registration_otp', '<p>Your Registration OTP is <strong>__OTP__</strong></p>\r\n', 'Active'),
(2, 'forgot_password_otp', '<p>Your Forgot Password OTP is <strong>__OTP__</strong></p>\n', 'Active'),
(3, 'order_saved', '<p>Thanks for using <strong>__SITE__TITLE__</strong></p>\r\n\r\n<p>Order No <strong>__ORDER__NO__</strong></p>\r\n\r\n<p>Total Cost <strong>__TOTAL__COST__</strong></p>\r\n', 'Active'),
(4, 'order_update', '<p>Your Order No <strong>__ORDER__ID__</strong> Status <strong>__STATUS__</strong> Message <strong>__MESSAGE__</strong></p>\r\n', 'Active'),
(5, 'item_deleted', '<p>Item Deleted from Order Order No <strong>__ORDER__ID__</strong> Item Name <strong>__ITEM__NAME__</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cr_social_networks`
--

CREATE TABLE `cr_social_networks` (
  `id` int(11) NOT NULL,
  `facebook` varchar(500) NOT NULL,
  `twitter` varchar(500) NOT NULL,
  `google_plus` varchar(500) NOT NULL,
  `linked_in` varchar(500) NOT NULL,
  `instagram` varchar(500) NOT NULL,
  `pinterest` varchar(500) NOT NULL,
  `tumblr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_social_networks`
--

INSERT INTO `cr_social_networks` (`id`, `facebook`, `twitter`, `google_plus`, `linked_in`, `instagram`, `pinterest`, `tumblr`) VALUES
(1, 'https://en-gb.facebook.com/login/', 'https://twitter.com/login', 'https://plus.google.com/', 'https://www.linkedin.com/uas/login', 'https://www.instagram.com/?hl=en', 'https://in.pinterest.com/login/', 'https://www.tumblr.com/login');

-- --------------------------------------------------------

--
-- Table structure for table `cr_system_settings_fields`
--

CREATE TABLE `cr_system_settings_fields` (
  `field_id` int(11) NOT NULL,
  `sms_gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(256) NOT NULL,
  `field_key` varchar(50) NOT NULL,
  `is_required` char(5) DEFAULT 'No',
  `field_output_value` text,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_system_settings_fields`
--

INSERT INTO `cr_system_settings_fields` (`field_id`, `sms_gateway_id`, `field_name`, `field_key`, `is_required`, `field_output_value`, `created`, `updated`) VALUES
(125, 1, 'User Name', 'User_Name', 'Yes', 'username', '2016-07-25 11:20:38', '2017-10-31 08:39:01'),
(126, 1, 'Password', 'Password', 'Yes', 'password', '2016-07-25 12:29:11', '2017-10-31 08:39:01'),
(127, 1, 'From No', 'From_No', 'Yes', 'from no', '2016-07-25 12:29:47', '2017-10-31 08:39:01'),
(128, 1, 'API Id', 'API_Id', 'Yes', 'api id', '2016-07-25 12:30:10', '2017-10-31 08:39:01'),
(129, 2, 'API KEY', 'API_KEY', 'Yes', 'api key', '2016-07-26 05:51:28', '2017-10-31 08:39:12'),
(130, 2, 'API SECRET', 'API_SECRET', 'Yes', 'api secret', '2016-07-26 06:00:50', '2017-10-31 08:39:12'),
(131, 3, 'AUTH ID', 'AUTH_ID', 'Yes', 'AUTH ID', '2016-07-26 09:26:52', '2017-10-31 08:39:22'),
(132, 3, 'AUTH TOKEN', 'AUTH_TOKEN', 'Yes', 'AUTH TOKEN', '2016-07-26 09:27:16', '2017-10-31 08:39:22'),
(133, 3, 'API VERSION', 'API_VERSION', 'Yes', 'v1', '2016-07-26 09:27:49', '2017-10-31 08:39:22'),
(134, 3, 'END POINT', 'END_POINT', 'Yes', 'https://api.plivo.com', '2016-07-26 09:28:14', '2017-10-31 08:39:22'),
(135, 4, 'Working Key', 'working_key', 'Yes', 'Working key', '2016-07-26 09:29:30', '2017-10-31 08:39:34'),
(136, 4, 'Sender Id', 'sender_id', 'Yes', 'Sender id', '2016-07-26 09:29:53', '2017-10-31 08:39:34'),
(137, 4, 'API URL', 'api', 'Yes', 'http://alerts.solutionsinfini.com/', '2016-07-26 09:30:15', '2017-10-31 08:39:34'),
(138, 5, 'Account SID', 'account_sid', 'Yes', 'Account SID', '2016-07-26 09:31:21', '2017-10-31 08:39:56'),
(139, 5, 'Auth Token', 'auth_token', 'Yes', 'Auth Token', '2016-07-26 09:31:54', '2017-10-31 08:39:56'),
(140, 5, 'API Version', 'api_version', 'Yes', '2010-04-01', '2016-07-26 09:32:20', '2017-10-31 08:39:56'),
(141, 5, 'Twilio Phone Number', 'Twilio_Phone_Number', 'Yes', 'phone number', '2016-07-26 09:32:57', '2017-10-31 08:39:56'),
(142, 7, 'AUTH', 'AUTH', 'Yes', 'AUTH', '2016-11-17 08:03:11', '2017-10-31 08:40:05'),
(143, 7, 'SENDER_ID', 'SENDER_ID', 'Yes', 'SENDER ID', '2016-11-17 08:03:11', '2017-10-31 08:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `cr_tinify_settings`
--

CREATE TABLE `cr_tinify_settings` (
  `id` int(11) NOT NULL,
  `use_tinify` enum('Yes','No') DEFAULT NULL,
  `API_Key` varchar(100) DEFAULT NULL,
  `compress` enum('Yes','No') DEFAULT NULL,
  `thumb` enum('Yes','No') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_tinify_settings`
--

INSERT INTO `cr_tinify_settings` (`id`, `use_tinify`, `API_Key`, `compress`, `thumb`) VALUES
(1, 'No', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_users`
--

CREATE TABLE `cr_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `photo` varchar(1000) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `landmark` varchar(200) DEFAULT NULL,
  `device_id` varchar(200) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `registration_through` enum('portal','mobile') DEFAULT NULL,
  `registration_type` enum('normal','facebook','google') DEFAULT NULL,
  `referral_code` varchar(20) DEFAULT NULL,
  `user_points` int(11) DEFAULT '0',
  `refer_by` int(11) DEFAULT NULL,
  `refer_by_code` varchar(20) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `is_activated` enum('Yes','No') NOT NULL DEFAULT 'No',
  `assigned_cities` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_users`
--

INSERT INTO `cr_users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `photo`, `phone`, `address`, `city`, `pincode`, `landmark`, `device_id`, `platform`, `registration_through`, `registration_type`, `referral_code`, `user_points`, `refer_by`, `refer_by_code`, `created_datetime`, `updated_datetime`, `is_activated`, `assigned_cities`) VALUES
(1, '127.0.0.1', 'Admin istrator', '$2y$08$NQIPakLvpP5ZkiMt0UR8eeJy4kkE9uUztJh50uiz3Qylc40jYX8PC', '', 'admin@admin.com', NULL, 'B0whGSIVG-1Tr4MlqANqk.dcdc780ffa99d0633c', 1498553784, NULL, 1268889823, 1549105354, 1, 'Admin', 'istrator', 'user_1.png', '1234567890', '2009-12-24', '', '123456', '', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2016-06-07 00:00:00', 'No', NULL),
(99, '::1', 'Kitchen Manager', '$2y$08$CHyduLmKL7h31nyWtVFtKOyvHM60mNWaS3WxkR8QXWFNwN6TUnAi2', NULL, 'kitchenmanager@gmail.com', 'e41fa8c5e4525246992a704bfab8c7c9e1c4d084', NULL, NULL, NULL, 1509454519, 1515132680, 1, 'Kitchen', 'Manager', NULL, '123456', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-31 18:25:19', NULL, 'No', NULL),
(100, '::1', 'Delivery Manager', '$2y$08$pMAhdEyzUjEVAbzsoWe1g.DHRGzEl6uqHPpsT/1QXi9EUtQO2kS8.', NULL, 'deliverymanager@gmail.com', 'd36dd29cdd3664a9d56541ad4b2716b12905475c', NULL, NULL, NULL, 1509454565, 1515132690, 1, 'Delivery', 'Manager', NULL, '1234567895', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-31 18:26:05', NULL, 'No', '5,529'),
(101, '::1', 'Arun N', '$2y$08$Crc9wm7HsAOq7n/FDR296OjJmRr1aUIM4Qt5It2/8A8M7WYLQaga2', NULL, 'arunayellanuru@gmail.com', '0e4c194eab64d03ebdd2c41373184d14843c8050', NULL, NULL, NULL, 1509454637, 1509455246, 1, 'Arun', 'N', NULL, '9966336699', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'NCPX3z2HMK', 40, NULL, NULL, '2017-10-31 18:27:17', NULL, 'No', NULL),
(102, '::1', 'Venkat Siva', '$2y$08$EEsq.KE2l25fg.fVCn/qC.25ZJfUTSD6NLEVscVtrsp/K53AEVfGy', NULL, 'customer@customer.com', 'a35e792cfcbdd3b08ce677e44e408dfcfc1659a3', NULL, NULL, NULL, 1509454715, 1515132700, 1, 'Venkat', 'Siva', NULL, '7788554411', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '3hWNAxgVsz', 80, 101, 'NCPX3z2HMK', '2017-10-31 18:28:35', NULL, 'No', NULL),
(103, '::1', 'Michale Dcks', '$2y$08$5sWV.hFoz5Aba7Pkz4.wQOhYo/U0zX2lGGo28AprjRd77aEZL3qnW', NULL, 'michale@gmail.com', '27e5cdba8f9885adbf2f7a13a0e33fa71938faeb', NULL, NULL, NULL, 1509454879, 1549106294, 1, 'Michale', 'Dcks', NULL, '8585296678', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'MwhsshybZA', 40, NULL, NULL, '2017-10-31 18:31:18', NULL, 'No', NULL),
(104, '::1', 'Stella Blessy', '$2y$08$TAPwnDCsIeMWmZH1Wr6eLutWm9aRGDxpByeqH4IAmZBLrOIsrD7o6', NULL, 'stellablessy4@gmail.com', '9616839d2223331264aca54239fb45d6c5fd68fc', NULL, NULL, NULL, 1509455186, 1509456150, 1, 'Stella', 'Blessy', NULL, '7418529635', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '3RuYBn6vaY', 20, NULL, NULL, '2017-10-31 18:36:26', NULL, 'No', NULL),
(105, '::1', 'Sai N', '$2y$08$8ERkKVFcnQU7hJ9WCwscLON0umObiFV7Z8KmjAdQWXHMSLEvzmsCi', NULL, 'sai84130@gmail.com', 'dfac756ea847e62683402efe693a8dccffa0e858', NULL, NULL, NULL, 1509455222, 1509456328, 1, 'Sai', 'N', NULL, '745632152', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', 'vbg5OhTn6l', 20, NULL, NULL, '2017-10-31 18:37:02', NULL, 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cr_users_groups`
--

CREATE TABLE `cr_users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_users_groups`
--

INSERT INTO `cr_users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(99, 99, 3),
(100, 100, 4),
(101, 101, 2),
(102, 102, 2),
(103, 103, 2),
(104, 104, 2),
(105, 105, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cr_user_address`
--

CREATE TABLE `cr_user_address` (
  `ua_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `house_no` varchar(50) NOT NULL,
  `street` varchar(1000) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `is_default` enum('Yes','No') DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_user_address`
--

INSERT INTO `cr_user_address` (`ua_id`, `user_id`, `house_no`, `street`, `landmark`, `pincode`, `locality`, `city`, `is_default`, `location_id`) VALUES
(102, 101, '12-3', 'LK STREET', 'NEAR POST OFFICE', '514213', 'Sanjay Lake', 'Delhi', NULL, 11),
(103, 102, '2-45', 'LK STREET', 'NEAR BANK', '500048', 'Lingampally', 'Hyderabad', NULL, 41),
(105, 104, '75-6', 'LK STREET', 'NEAR BANK', '500081', 'Mind Space', 'Hyderabad', NULL, 44),
(106, 105, '4-67', 'LK STREET', 'NEAR BANK', '7896541', 'DARKJA', 'Delhi', NULL, 16),
(107, 103, '66-6', 'sdfsdf', 'sdfsdf', '518412', 'Adyar', 'Chennai', 'Yes', 3),
(108, 103, '5-098', 'fadsf', 'sdfsdfd', '560036', 'KR Puram', 'Bangalore', NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `cr_user_points`
--

CREATE TABLE `cr_user_points` (
  `customer_reward_id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `points` int(11) DEFAULT NULL,
  `transaction_type` enum('Earned','Redeem') DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_user_points`
--

INSERT INTO `cr_user_points` (`customer_reward_id`, `user_id`, `points`, `transaction_type`, `order_id`, `description`, `created_on`) VALUES
(150, 101, 30, 'Earned', 232, 'Points earned for first order', '2017-10-31 18:39:33'),
(151, 101, 20, 'Earned', 232, 'Points earned for buy an item order', '2017-10-31 18:39:33'),
(152, 101, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:42:03'),
(153, 101, 20, 'Earned', 234, 'Points earned for buy an item order', '2017-10-31 18:42:54'),
(154, 102, 30, 'Earned', 239, 'Points earned for first order', '2017-10-31 18:45:01'),
(155, 102, 20, 'Earned', 239, 'Points earned for buy an item order', '2017-10-31 18:45:01'),
(156, 102, 20, 'Earned', 243, 'Points earned for buy an item order', '2017-10-31 18:46:49'),
(157, 102, 20, 'Earned', 240, 'Points earned for buy an item order', '2017-10-31 18:46:56'),
(158, 102, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:47:14'),
(159, 103, 30, 'Earned', 247, 'Points earned for first order', '2017-10-31 18:49:47'),
(160, 103, 20, 'Earned', 247, 'Points earned for buy an item order', '2017-10-31 18:49:47'),
(161, 102, 20, 'Earned', 245, 'Points earned for buy an item order', '2017-10-31 18:49:58'),
(162, 103, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:50:42'),
(163, 103, 20, 'Earned', 249, 'Points earned for buy an item order', '2017-10-31 18:52:06'),
(164, 104, 30, 'Earned', 252, 'Points earned for first order', '2017-10-31 18:54:06'),
(165, 104, 20, 'Earned', 252, 'Points earned for buy an item order', '2017-10-31 18:54:06'),
(166, 104, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:54:23'),
(167, 104, 20, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:54:39'),
(168, 104, 20, 'Earned', 256, 'Points returned for cancelled an item order', '2017-10-31 18:54:48'),
(169, 105, 30, 'Earned', 259, 'Points earned for first order', '2017-10-31 18:56:53'),
(170, 105, 20, 'Earned', 259, 'Points earned for buy an item order', '2017-10-31 18:56:53'),
(171, 105, 30, 'Redeem', NULL, 'Points redeemed for buy an item order', '2017-10-31 18:57:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cr_addons`
--
ALTER TABLE `cr_addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `cr_card_images`
--
ALTER TABLE `cr_card_images`
  ADD PRIMARY KEY (`card_image_id`);

--
-- Indexes for table `cr_cities`
--
ALTER TABLE `cr_cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `cr_country`
--
ALTER TABLE `cr_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_faqs`
--
ALTER TABLE `cr_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `cr_groups`
--
ALTER TABLE `cr_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_items`
--
ALTER TABLE `cr_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_menu` (`menu_id`);

--
-- Indexes for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  ADD PRIMARY KEY (`item_addon_id`),
  ADD KEY `fk_item_addon_id` (`addon_id`),
  ADD KEY `fk_item_item_id` (`item_id`);

--
-- Indexes for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  ADD PRIMARY KEY (`item_option_id`),
  ADD KEY `fk_item_size_id` (`option_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `cr_item_types`
--
ALTER TABLE `cr_item_types`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  ADD PRIMARY KEY (`lp_id`);

--
-- Indexes for table `cr_menu`
--
ALTER TABLE `cr_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `cr_offers`
--
ALTER TABLE `cr_offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  ADD PRIMARY KEY (`offer_product_id`),
  ADD KEY `fk_offers` (`offer_id`);

--
-- Indexes for table `cr_options`
--
ALTER TABLE `cr_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `cr_orders`
--
ALTER TABLE `cr_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  ADD PRIMARY KEY (`oa_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  ADD PRIMARY KEY (`order_offer_id`),
  ADD KEY `of_order_id` (`order_id`) USING BTREE;

--
-- Indexes for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  ADD PRIMARY KEY (`order_offer_product_id`),
  ADD KEY `op_order_id` (`order_id`) USING BTREE;

--
-- Indexes for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  ADD PRIMARY KEY (`op_id`),
  ADD KEY `fk_order_id` (`order_id`);

--
-- Indexes for table `cr_pages`
--
ALTER TABLE `cr_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_paypal_settings`
--
ALTER TABLE `cr_paypal_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_referral_settings`
--
ALTER TABLE `cr_referral_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  ADD PRIMARY KEY (`referral_id`),
  ADD KEY `refer_user_id` (`refer_user_id`),
  ADD KEY `refer_by` (`refer_by`);

--
-- Indexes for table `cr_restaurant_timings`
--
ALTER TABLE `cr_restaurant_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  ADD PRIMARY KEY (`service_provide_location_id`),
  ADD KEY `fk_city_id` (`city_id`);

--
-- Indexes for table `cr_sessions`
--
ALTER TABLE `cr_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cr_site_settings`
--
ALTER TABLE `cr_site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_sms_gate_ways`
--
ALTER TABLE `cr_sms_gate_ways`
  ADD PRIMARY KEY (`sms_gateway_id`);

--
-- Indexes for table `cr_sms_templates`
--
ALTER TABLE `cr_sms_templates`
  ADD PRIMARY KEY (`sms_template_id`);

--
-- Indexes for table `cr_social_networks`
--
ALTER TABLE `cr_social_networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_system_settings_fields`
--
ALTER TABLE `cr_system_settings_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `cr_tinify_settings`
--
ALTER TABLE `cr_tinify_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_users`
--
ALTER TABLE `cr_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  ADD PRIMARY KEY (`ua_id`),
  ADD KEY `ua_id` (`ua_id`),
  ADD KEY `fk_ua_id` (`user_id`);

--
-- Indexes for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  ADD PRIMARY KEY (`customer_reward_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cr_addons`
--
ALTER TABLE `cr_addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cr_card_images`
--
ALTER TABLE `cr_card_images`
  MODIFY `card_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cr_cities`
--
ALTER TABLE `cr_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;
--
-- AUTO_INCREMENT for table `cr_country`
--
ALTER TABLE `cr_country`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `cr_faqs`
--
ALTER TABLE `cr_faqs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  MODIFY `fc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_groups`
--
ALTER TABLE `cr_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_items`
--
ALTER TABLE `cr_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=856792;
--
-- AUTO_INCREMENT for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  MODIFY `item_addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  MODIFY `item_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `cr_item_types`
--
ALTER TABLE `cr_item_types`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  MODIFY `lang_id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1347;
--
-- AUTO_INCREMENT for table `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  MODIFY `lp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_menu`
--
ALTER TABLE `cr_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cr_offers`
--
ALTER TABLE `cr_offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  MODIFY `offer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=975;
--
-- AUTO_INCREMENT for table `cr_options`
--
ALTER TABLE `cr_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `cr_orders`
--
ALTER TABLE `cr_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  MODIFY `order_offer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `cr_pages`
--
ALTER TABLE `cr_pages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_paypal_settings`
--
ALTER TABLE `cr_paypal_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_referral_settings`
--
ALTER TABLE `cr_referral_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cr_restaurant_timings`
--
ALTER TABLE `cr_restaurant_timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  MODIFY `service_provide_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `cr_site_settings`
--
ALTER TABLE `cr_site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_sms_gate_ways`
--
ALTER TABLE `cr_sms_gate_ways`
  MODIFY `sms_gateway_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cr_sms_templates`
--
ALTER TABLE `cr_sms_templates`
  MODIFY `sms_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cr_social_networks`
--
ALTER TABLE `cr_social_networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_system_settings_fields`
--
ALTER TABLE `cr_system_settings_fields`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `cr_tinify_settings`
--
ALTER TABLE `cr_tinify_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_users`
--
ALTER TABLE `cr_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cr_items`
--
ALTER TABLE `cr_items`
  ADD CONSTRAINT `fk_menu` FOREIGN KEY (`menu_id`) REFERENCES `cr_menu` (`menu_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  ADD CONSTRAINT `fk_item_addon_id` FOREIGN KEY (`addon_id`) REFERENCES `cr_addons` (`addon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `cr_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  ADD CONSTRAINT `fk_item_size_id` FOREIGN KEY (`option_id`) REFERENCES `cr_options` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_id` FOREIGN KEY (`item_id`) REFERENCES `cr_items` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  ADD CONSTRAINT `fk_offers` FOREIGN KEY (`offer_id`) REFERENCES `cr_offers` (`offer_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  ADD CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  ADD CONSTRAINT `of_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  ADD CONSTRAINT `op_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  ADD CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `cr_orders` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_referral_users`
--
ALTER TABLE `cr_referral_users`
  ADD CONSTRAINT `refer_by` FOREIGN KEY (`refer_by`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refer_user_id` FOREIGN KEY (`refer_user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  ADD CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `cr_cities` (`city_id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `cr_groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  ADD CONSTRAINT `fk_ua_id` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `cr_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
