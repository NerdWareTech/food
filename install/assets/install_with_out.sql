-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 06:03 AM
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
-- Database: `mn_restaurant_wo`
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

-- --------------------------------------------------------

--
-- Table structure for table `cr_cities`
--

CREATE TABLE `cr_cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(512) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cr_country`
--

CREATE TABLE `cr_country` (
  `id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
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
(1, 'your server smtp host', 21, 'your server smtp user', '9490472748', '', 'webmail');

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
  `id` int(11) NOT NULL,
  `fc_id` int(11) DEFAULT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(10000) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cr_faq_categories`
--

CREATE TABLE `cr_faq_categories` (
  `fc_id` int(11) NOT NULL,
  `category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET latin1 DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_addons`
--

CREATE TABLE `cr_item_addons` (
  `item_addon_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `cr_item_types`
--

CREATE TABLE `cr_item_types` (
  `item_type_id` int(11) NOT NULL,
  `item_type` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cr_languagewords`
--

CREATE TABLE `cr_languagewords` (
  `lang_id` bigint(22) NOT NULL,
  `phrase_for` enum('App','Web') NOT NULL DEFAULT 'Web',
  `lang_key` varchar(512) DEFAULT NULL,
  `english` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cr_languagewords`
--

INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`) VALUES
(1, 'Web', 'Fast Delivery', 'Fast Delivery'),
(2, 'Web', 'hello', 'Hello'),
(6, 'Web', 'admin_dashboard', 'Admin Dashboard'),
(7, 'Web', 'profile', 'Profile'),
(8, 'Web', 'sign_out', 'Sign Out'),
(9, 'Web', 'home', 'Home'),
(10, 'Web', 'users', 'Users'),
(11, 'Web', 'view_all_users', 'View All Users'),
(15, 'Web', 'create', 'Create'),
(37, 'Web', 'pages', 'Pages'),
(38, 'Web', 'dynamic_pages', 'Dynamic pages'),
(39, 'Web', 'faqs', 'FAQs'),
(41, 'Web', 'email_templates', 'Email Templates'),
(42, 'App', 'language_settings', 'Language Settings'),
(43, 'App', 'view_languages', 'View Languages'),
(44, 'App', 'add_language', 'Add Language'),
(45, 'App', 'view_phrases', 'View Phrases'),
(46, 'App', 'my_profile', 'My Profile'),
(47, 'App', 'change_password', 'Change Password'),
(48, 'Web', 'sign_out', 'Sign Out'),
(49, 'Web', 'total_payments', 'Total Payments'),
(50, 'Web', 'users_information', 'Users Information'),
(51, 'Web', 'any_other_stats', 'Any other stats'),
(52, 'Web', 'add_new_record', 'Add New Record'),
(53, 'Web', 'delete_selected', 'Delete Selected'),
(54, 'Web', 'delete', 'Delete'),
(58, 'Web', 'actions', 'Actions'),
(59, 'Web', 'warning', 'Warning'),
(60, 'Web', 'are_you_sure_to_delete', 'Are you sure to delete'),
(61, 'Web', 'no', 'No'),
(62, 'Web', 'yes', 'Yes'),
(63, 'Web', 'are_you_sure_to_delete_selected_records', 'Are you sure to delete selected records'),
(64, 'Web', 'please_select_records_to_be_deleted', 'Please select records to be deleted'),
(65, 'Web', 'Confirm', 'Confirm'),
(66, 'Web', 'Are_you_sure_to_activate_selected_records', 'Are you sure to activate selected records'),
(67, 'Web', 'Please_select_records_to_be_activated', 'Please select records to be activated'),
(68, 'Web', 'are_you_sure_to_deactivate_selected_records', 'Are you sure to deactivate selected records'),
(69, 'Web', 'please_select_records_to_be_deactivated', 'Please select records to be deactivated'),
(70, 'Web', 'information', 'Information'),
(71, 'Web', 'view_details', 'View Details'),
(72, 'Web', 'edit', 'Edit'),
(73, 'Web', 'go_to_list', 'Go To List'),
(75, 'Web', 'please_upload_only_jpg_or_png_images', 'Please upload only jpg or png images'),
(76, 'Web', 'add', 'Add'),
(78, 'Web', 'cancel', 'Cancel'),
(79, 'Web', 'please_upload_atleast_one_image', 'Please Upload Atleas One Image'),
(80, 'Web', 'all_users', 'All Users'),
(81, 'Web', 'photo', 'Photo'),
(82, 'Web', 'username', 'Username'),
(83, 'Web', 'email', 'Email'),
(84, 'Web', 'phone', 'Phone'),
(85, 'Web', 'date_of_registration', 'Date of registration'),
(86, 'Web', 'address', 'Address'),
(87, 'Web', 'status', 'Status'),
(88, 'Web', 'active', 'Active'),
(92, 'Web', 'record_added_successfully', 'Record Added Successfully'),
(93, 'Web', 'success', 'Success'),
(95, 'Web', 'description', 'Description'),
(97, 'Web', 'inactive', 'Inactive'),
(100, 'Web', 'user', 'User'),
(103, 'Web', 'no_records_available', 'No records available'),
(104, 'Web', 'select_Phone_Code', 'Select Phone Code'),
(105, 'Web', 'Sign_In', 'Sign In'),
(106, 'Web', 'With_Your_Account', 'With Your Account'),
(107, 'Web', 'Password', 'Password'),
(108, 'Web', 'Forgot_your_password', 'Forgot your password?'),
(109, 'Web', 'register', 'Register'),
(111, 'Web', 'Register_As', 'Register As'),
(112, 'Web', 'First_Name', 'First Name'),
(113, 'Web', 'first_name', 'First Name'),
(114, 'Web', 'Last_Name', 'Last Name'),
(115, 'Web', 'last_name', 'Last Name'),
(116, 'Web', 'must_be_at_least', 'Must be at least'),
(117, 'Web', 'characters', 'Characters'),
(118, 'Web', 'Confirm_Password', 'Confirm Password'),
(119, 'Web', 'confirm_password', 'Confirm Password'),
(120, 'Web', 'pin_code', 'Pin code'),
(121, 'Web', 'Phone_Number', 'Phone Number'),
(122, 'Web', 'Create_an_Account', 'Create an Account'),
(123, 'Web', 'logged_in_successfully', 'Logged in successfully'),
(124, 'Web', 'Record_Not_Added', 'Record Not Added'),
(125, 'Web', 'error', 'Error'),
(126, 'Web', 'Record_Deleted_Successfully', 'Record Deleted Successfully'),
(128, 'Web', 'Activate_Selected', 'Activate Selected'),
(129, 'Web', 'activate', 'Activate'),
(130, 'Web', 'Deactivate_Selected', 'Deactivate Selected'),
(131, 'Web', 'deactivate', 'Deactivate'),
(132, 'Web', 'Service_Name', 'Service Name'),
(133, 'Web', 'Cost_Type', 'Cost Type'),
(134, 'Web', 'price', 'Price'),
(141, 'Web', 'the', 'The'),
(143, 'Web', '_already_exists', ' already exists'),
(145, 'Web', 'update', 'Update'),
(147, 'Web', 'Record_Updated_Successfully', 'Record Updated Successfully'),
(149, 'Web', 'Record_Not_Updated', 'Record Not Updated'),
(150, 'Web', 'Selected_Records_Deleted_Successfully', 'Selected Records Deleted Successfully'),
(151, 'Web', 'category', 'Category'),
(152, 'Web', 'type', 'Type'),
(154, 'Web', 'image', 'Image'),
(156, 'Web', 'view_more', 'View More'),
(157, 'Web', 'Record_Already_Added', 'Record Already Added'),
(158, 'Web', 'info', 'Info'),
(159, 'Web', 'Add_Phrase', 'Add Phrase'),
(160, 'Web', 'Lang_Id', 'Lang Id'),
(161, 'Web', 'Lang_Key', 'Lang Key'),
(162, 'Web', 'english', 'English'),
(163, 'Web', 'brazil', 'Brazil'),
(164, 'Web', 'please_enter_language_key', 'Please enter language key'),
(165, 'Web', 'submit', 'Submit'),
(166, 'Web', 'Master_Settings', 'Master Settings'),
(167, 'Web', 'Site_Settings', 'Site Settings'),
(168, 'Web', 'Email_Settings', 'Email Settings'),
(174, 'Web', 'House_Number', 'House Number'),
(175, 'Web', 'Flat_Number', 'Flat Number'),
(177, 'Web', 'Street_Name', 'Street Name'),
(179, 'Web', 'city', 'City'),
(180, 'Web', 'state', 'State'),
(181, 'Web', 'landmark', 'Landmark'),
(182, 'Web', 'zipcode', 'Zipcode'),
(186, 'Web', 'please_Enter_City', 'Please Enter City'),
(187, 'Web', 'please_Enter_State', 'Please Enter State'),
(188, 'Web', 'please_Enter_Landmark', 'Please Enter Landmark'),
(189, 'Web', 'please_Enter_Zip_Code', 'Please Enter Zip Code'),
(190, 'Web', 'You_do_not_have_permission_to_access_this_page', 'You do not have permission to access this page'),
(191, 'Web', 'Group', 'Group'),
(192, 'Web', 'phone_code', 'Phone code'),
(195, 'App', 'view_language', 'View Language'),
(196, 'Web', 'language', 'Language'),
(197, 'Web', 'Add_Language_Words', 'Add Language Words'),
(201, 'Web', 'House_numer', 'House numer'),
(203, 'Web', 'No_Details_Found', 'No Details Found'),
(204, 'Web', 'Selected_Records_Activated_Successfully', 'Selected Records Activated Successfully'),
(205, 'Web', 'Selected_Records_Deactivated_Successfully', 'Selected Records Deactivated Successfully'),
(206, 'Web', 'View_User_Details', 'View User Details'),
(208, 'Web', 'gender', 'Gender'),
(209, 'Web', 'user_belongs_group', 'User belongs group'),
(211, 'Web', 'Create_User', 'Create User'),
(212, 'Web', 'Add_User', 'Add User'),
(213, 'Web', 'Profile_Pic', 'Profile Pic'),
(215, 'Web', 'please_login_to_continue', 'Please login to continue'),
(216, 'Web', 'Phone_Number', 'Phone Number'),
(217, 'Web', 'first__name', 'First  name'),
(218, 'Web', 'mobile_number', 'Mobile number'),
(219, 'Web', 'please_Enter_First_Name', 'Please Enter First Name'),
(220, 'Web', 'please_Enter_Email', 'Please Enter Email'),
(221, 'Web', 'please_Enter_Password', 'Please Enter Password'),
(222, 'Web', 'please_Enter_Phone_Code', 'Please Enter Phone Code'),
(223, 'Web', 'please_Enter_Phone_Number', 'Please Enter Phone Number'),
(224, 'Web', 'Password_must_be_atleast_8_characters', 'Password must be atleast 8 characters'),
(225, 'Web', 'please_Enter_Confirm_Password', 'Please Enter Confirm Password'),
(226, 'Web', 'Confirm_Password_is_not_same_as_password', 'Confirm Password is not same as password'),
(227, 'Web', 'Minimum_8_digits', 'Minimum 8 digits'),
(228, 'Web', 'Maximum_11_digits', 'Maximum 11 digits'),
(229, 'Web', 'Lang_Key', 'Lang Key'),
(230, 'Web', 'test_phrase', 'Test Phrase'),
(231, 'Web', 'add_phrases', 'Add Phrases'),
(232, 'Web', 'please_enter_language_key_in_english', 'Please enter language key in english'),
(233, 'Web', 'Update_Phrase', 'Update Phrase'),
(234, 'Web', 'View_Phrase_Details', 'View Phrase Details'),
(235, 'Web', 'App_Settings', 'App Settings'),
(236, 'Web', 'Paypal_Settings', 'Paypal Settings'),
(237, 'Web', 'SMS_Settings', 'SMS Settings'),
(238, 'Web', 'SMS_Templates', 'SMS Templates'),
(239, 'Web', 'success_phrases_updated_successfuly', 'Success phrases updated successfuly'),
(241, 'Web', 'Update_User', 'Update User'),
(242, 'Web', 'welcome_to_Admin_Dashboard', 'Welcome to Admin Dashboard'),
(244, 'Web', 'Change_Password', 'Change Password'),
(245, 'Web', 'Current_Password', 'Current Password'),
(246, 'Web', 'New_Password', 'New Password'),
(247, 'Web', 'password_changed_successfully', 'Password changed successfully'),
(248, 'Web', 'List_of_All_Users', 'List of All Users'),
(252, 'Web', 'List_of_Users', 'List of Users'),
(253, 'Web', 'User_Group', 'User Group'),
(254, 'Web', 'Phrase_For', 'Phrase For'),
(255, 'App', 'App', 'App'),
(256, 'App', 'Web', 'Web'),
(262, 'Web', 'Update_App_Settings', 'Update App Settings'),
(263, 'Web', 'Site_Title', 'Site Title'),
(264, 'Web', 'Site_Name', 'Site Name'),
(265, 'Web', 'country', 'Country'),
(266, 'Web', 'PIN_Code', 'Pin code'),
(267, 'Web', 'land_line', 'Land line'),
(268, 'Web', 'fax', 'Fax'),
(269, 'Web', 'Portal_Email', 'Portal Email'),
(270, 'Web', 'Site_Language', 'Site Language'),
(271, 'Web', 'Design_By', 'Design By'),
(272, 'Web', 'Rights_reserved_content', 'Rights reserved content'),
(273, 'Web', 'currency', 'Currency'),
(274, 'Web', 'Currency_Symbol', 'Currency Symbol'),
(275, 'Web', 'latitude', 'Latitude'),
(276, 'Web', 'longitude', 'Longitude'),
(277, 'Web', 'Ios_Url', 'Ios Url'),
(278, 'Web', 'Android_Url', 'Android Url'),
(279, 'Web', 'Facebook_Api', 'Facebook Api'),
(280, 'Web', 'Google_Api', 'Google Api'),
(281, 'Web', 'SMS_Notifications', 'SMS Notifications'),
(282, 'Web', 'on', 'On'),
(283, 'Web', 'off', 'Off'),
(284, 'Web', 'Push_Notifications', 'Push Notifications'),
(285, 'Web', 'Site_Logo', 'Site Logo'),
(286, 'Web', 'Add_Etemplates', 'Add Etemplates'),
(287, 'Web', 'View_Etemplates', 'View Etemplates'),
(288, 'Web', 'Add_Email_Templates', 'Add Email Templates'),
(289, 'Web', 'View_Email_Templates', 'View Email Templates'),
(290, 'Web', 'Country_Code', 'Country Code'),
(291, 'Web', 'Please_upload_only_jpg_or_png_or_svg_images', 'Please upload only jpg or png or svg images'),
(292, 'Web', 'please_enter_Site_Title', 'Please enter Site Title'),
(293, 'Web', 'please_enter_Site_Name', 'Please enter Site Name'),
(294, 'Web', 'please_enter_Address', 'Please enter Address'),
(295, 'Web', 'please_enter_Country', 'Please enter Country'),
(296, 'Web', 'please_enter_Country_Code', 'Please enter Country Code'),
(297, 'Web', 'please_enter_Pincode', 'Please enter Pincode'),
(298, 'Web', 'please_enter_Phone', 'Please enter Phone'),
(299, 'Web', 'please_enter_Landline', 'Please enter Landline'),
(300, 'Web', 'please_enter_Fax', 'Please enter Fax'),
(301, 'Web', 'please_Enter_Portal_Email', 'Please Enter Portal Email'),
(302, 'Web', 'please_select_Site_Language', 'Please select Site Language'),
(303, 'Web', 'please_enter_Design_by', 'Please enter Design by'),
(304, 'Web', 'please_enter_Rights_reserved_content', 'Please enter Rights reserved content'),
(305, 'Web', 'please_select_Currency', 'Please select Currency'),
(306, 'Web', 'please_enter_Currency_Symbol', 'Please enter Currency Symbol'),
(307, 'Web', 'please_enter_Latitude', 'Please enter Latitude'),
(308, 'Web', 'please_enter_Longitude', 'Please enter Longitude'),
(309, 'Web', 'please_enter_Ios_Url', 'Please enter Ios Url'),
(310, 'Web', 'please_enter_Android_Url', 'Please enter Android Url'),
(312, 'Web', 'Template_Subject', 'Template Subject'),
(313, 'Web', 'From_Eamil', 'From Eamil'),
(314, 'Web', 'Template_Status', 'Template Status'),
(315, 'Web', 'Template_Content', 'Template Content'),
(316, 'Web', 'From_Name', 'From Name'),
(317, 'Web', 'Update_Email_Templates', 'Update Email Templates'),
(318, 'Web', 'please_Enter_Template_Key', 'Please Enter Template Key'),
(319, 'Web', 'please_Enter_Template_Content', 'Please Enter Template Content'),
(320, 'Web', 'please_Enter_From_Email', 'Please Enter From Email'),
(321, 'Web', 'please_Enter_From_Name', 'Please Enter From Name'),
(322, 'Web', 'Please_Enter_Valid_Email', 'Please Enter Valid Email'),
(323, 'Web', 'Email_Template_Details', 'Email Template Details'),
(324, 'Web', 'Template_created', 'Template created'),
(325, 'Web', 'Template_Updated', 'Template Updated'),
(326, 'Web', 'change_language', 'Change Language'),
(327, 'Web', 'From_Email', 'From Email'),
(328, 'Web', 'Language_successfully_changed_to', 'Language successfully changed to'),
(329, 'Web', 'TextArea', 'TextArea'),
(330, 'Web', 'Add_SMS_Templates', 'Add SMS Templates'),
(331, 'Web', 'View_SMS_Templates', 'View SMS Templates'),
(332, 'Web', 'Update_Email_Settings', 'Update Email Settings'),
(333, 'Web', 'Web_Mail', 'Web Mail'),
(334, 'Web', 'mandrill', 'Mandrill'),
(335, 'Web', 'Host', 'Host'),
(336, 'Web', 'Api_Key', 'Api Key'),
(337, 'Web', 'subject', 'Subject'),
(338, 'Web', 'SMS_Template', 'SMS Template'),
(339, 'Web', 'Port', 'Port'),
(340, 'Web', 'Please_enter_Api_Key', 'Please enter Api Key'),
(341, 'Web', 'please_enter_Host', 'Please enter Host'),
(342, 'Web', 'please_enter_Port', 'Please enter Port'),
(343, 'Web', 'SMS_Template_Details', 'SMS Template Details'),
(344, 'Web', 'sms_template_id', 'Sms template id'),
(345, 'Web', 'Update_SMS_Templates', 'Update SMS Templates'),
(346, 'Web', 'Mail_Config', 'Mail Config'),
(347, 'Web', 'please_Enter_Subject', 'Please Enter Subject'),
(348, 'Web', 'please_Enter_SMS_Template', 'Please Enter SMS Template'),
(349, 'Web', 'Password_must_be_atleast_6_characters', 'Password must be atleast 6 characters'),
(350, 'Web', 'Update_Paypal_Settings', 'Update Paypal Settings'),
(352, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production'),
(353, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox'),
(354, 'Web', 'merchantName', 'MerchantName'),
(355, 'Web', 'merchant_PrivacyPolicy_URL', 'Merchant PrivacyPolicy URL'),
(356, 'Web', 'merchant_UserAgreement_URL', 'Merchant UserAgreement URL'),
(357, 'Web', 'account_type', 'Account Type'),
(358, 'Web', 'Please_Enter_PayPal_Environment_Production', 'Please Enter PayPal Environment Production'),
(359, 'Web', 'Please_Enter_PayPal_Environment_Sandbox', 'Please Enter PayPal Environment Sandbox'),
(360, 'Web', 'Please_Enter_Merchant_Name', 'Please Enter Merchant Name'),
(361, 'Web', 'Please_Enter_Merchant_PrivacyPolicy_URL', 'Please Enter Merchant PrivacyPolicy URL'),
(362, 'Web', 'Please_Enter_Merchant_UserAgreement_URL', 'Please Enter Merchant UserAgreement URL'),
(363, 'Web', 'PayPal_Environment_Production', 'PayPal Environment Production'),
(364, 'Web', 'PayPal_Environment_Sandbox', 'PayPal Environment Sandbox'),
(365, 'Web', 'merchant_Name', 'Merchant Name'),
(366, 'Web', 'merchant_Privacy_Policy_URL', 'Merchant Privacy Policy URL'),
(367, 'Web', 'merchant_User_Agreement_URL', 'Merchant User Agreement URL'),
(368, 'Web', 'Sms_Gateways', 'Sms Gateways'),
(369, 'Web', 'Sms_Gateway_Name', 'Sms Gateway Name'),
(370, 'Web', 'is_Default', 'Is Default'),
(371, 'Web', 'Make_Default', 'Make Default'),
(372, 'Web', 'Info_Updated_Successfully', 'Info Updated Successfully'),
(373, 'Web', 'SMS_Gate_Ways', 'SMS Gate Ways'),
(374, 'Web', 'User_Name', 'User Name'),
(375, 'Web', 'From_No', 'From No'),
(376, 'Web', 'API_Id', 'API Id'),
(378, 'Web', 'you_are_not_authorized_to_perform_this_action', 'You are not authorized to perform this action'),
(382, 'Web', 'Add_Pages', 'Add Pages'),
(383, 'Web', 'View_Pages', 'View Pages'),
(384, 'Web', 'Page_Name', 'Page Name'),
(385, 'Web', 'Meta_Tag', 'Meta Tag'),
(386, 'Web', 'Meta_Description', 'Meta Description'),
(387, 'Web', 'Seo_Keywords', 'Seo Keywords'),
(388, 'Web', 'please_Enter_Page_Name', 'Please Enter Page Name'),
(389, 'Web', 'please_Enter_Description', 'Please Enter Description'),
(390, 'Web', 'account_information_successfully_updated', 'Account information successfully updated'),
(391, 'Web', 'View_Page_Details', 'View Page Details'),
(392, 'Web', 'Update_Pages', 'Update Pages'),
(397, 'Web', 'old_password_is_wrong', '##Old password is wrong##'),
(401, 'Web', 'Please_Select_Service', 'Please Select Service'),
(402, 'Web', 'service_id', 'Service id'),
(404, 'Web', 'No_Changes_Done', 'No Changes Done'),
(405, 'Web', 'Reset_your_Password', 'Reset your Password'),
(407, 'Web', 'appartments', 'Appartments'),
(408, 'Web', 'Account_Successfully_Created_and_Activation_Email_Sent', 'Account Successfully Created and Activation Email Sent'),
(409, 'Web', 'your_account_activated_successfully_please_login', 'Your account activated successfully please login'),
(410, 'Web', 'Url_for_Design_By', 'Url for Design By'),
(411, 'Web', 'End_Users', 'End Users'),
(412, 'Web', 'Total_End_Users', 'Total End Users'),
(413, 'Web', 'Total_Users', 'Total Users'),
(414, 'Web', 'Web_Phrases', 'Web Phrases'),
(415, 'Web', 'App_Phrases', 'App Phrases'),
(416, 'Web', 'New_Users_Information', 'New Users Information'),
(417, 'Web', 'ago', 'Ago'),
(418, 'Web', 'View_All', 'View All'),
(421, 'Web', 'one_signal_server_api_key', 'One signal server api key'),
(422, 'Web', 'one_signal_app_id', 'One signal app id'),
(423, 'Web', 'one_signal_server_api_key', 'One signal server api key'),
(424, 'Web', 'one_signal_app_id', 'One signal app id'),
(427, 'App', 'Invalid_Operation', 'Invalid Operation'),
(428, 'App', 'loginSuccess', 'Login Success'),
(429, 'Web', 'Total_Appartments', 'Total Appartments'),
(432, 'Web', 'please_Enter_Street_Name', 'Please Enter Street Name'),
(434, 'Web', 'MSG_NO_ENTRY', 'MSG NO ENTRY'),
(435, 'Web', 'Buy_now', 'Buy now'),
(436, 'Web', 'id', 'Id'),
(437, 'Web', 'PayPal_Email', 'PayPal Email'),
(438, 'Web', 'Please_Enter_Paypal_Email', 'Please Enter Paypal Email'),
(439, 'Web', 'You_have_cancelled_your_transaction', 'You have cancelled your transaction'),
(440, 'Web', 'Payment_success_Transaction_Id_', 'Payment success Transaction Id '),
(441, 'Web', 'Wrong_operation', 'Wrong operation'),
(442, 'Web', 'My_Susbscriptions', 'My Susbscriptions'),
(443, 'Web', 'My_Subscriptions', 'My Subscriptions'),
(445, 'Web', 'Amount_Paid', 'Amount Paid'),
(447, 'Web', 'subscribe_date', 'Subscribe date'),
(449, 'App', 'registration', 'Registration'),
(450, 'App', 'registration_completed_successfully_OTP_sent_to_mobile', 'Registration completed successfully OTP sent to mobile'),
(451, 'App', 'registration_completed_successfully_activation_email_sent', 'Registration completed successfully activation email sent'),
(452, 'Web', 'please_login_to_access_this_page', 'Please login to access this page'),
(453, 'Web', 'category_name', 'Category name'),
(454, 'Web', 'please_enter_Category_Name', 'Please enter Category Name'),
(455, 'Web', 'phrases', 'Phrases'),
(456, 'Web', 'view_menu', 'View Menu'),
(457, 'Web', 'menu_name', 'Menu Name'),
(458, 'Web', 'punch_line', 'Punch Line'),
(459, 'Web', 'menu_image', 'Menu Image'),
(460, 'Web', 'view_items', 'View Items'),
(461, 'Web', 'item_name', 'Item Name'),
(462, 'Web', 'item_cost', 'Item Cost'),
(463, 'Web', 'item_type', 'Item Type'),
(464, 'Web', 'item_image', 'Item Image'),
(465, 'Web', 'dashboard', 'Dashboard'),
(466, 'Web', 'menu', 'Menu'),
(467, 'Web', 'items', 'Items'),
(468, 'Web', 'addon_name', 'Addon Name'),
(469, 'Web', 'addon_image', 'Addon Image'),
(470, 'Web', 'view_addons', 'View Addons'),
(471, 'Web', 'addons', 'Add-ons'),
(472, 'Web', 'view_options', 'View Options'),
(473, 'Web', 'name', 'Name'),
(474, 'Web', 'options', 'Options'),
(475, 'Web', 'view_offers', 'View Offers'),
(476, 'Web', 'offer_name', 'Offer Name'),
(477, 'Web', 'offer_cost', 'Offer Cost'),
(478, 'Web', 'offer_start_date', 'Offer Start Date'),
(479, 'Web', 'offer_valid_date', 'Offer Valid Date'),
(480, 'Web', 'no_of_items', 'No Of Items'),
(481, 'Web', 'serve_no_of_people', 'Serve No Of People'),
(482, 'Web', 'offers', 'Offers'),
(483, 'Web', 'view_cities', 'View Cities'),
(484, 'Web', 'city_name', 'City Name'),
(485, 'Web', 'view_service_provide_locations', 'View Service Provide Locations'),
(486, 'Web', 'locality', 'Locality'),
(487, 'Web', 'languages', 'Languages'),
(488, 'Web', 'location_master', 'Location Master'),
(489, 'Web', 'cities', 'Cities'),
(490, 'Web', 'service_provide_locations', 'Service Provide Locations'),
(491, 'Web', 'contact_email', 'Contact Email'),
(492, 'Web', 'restaurant_timings', 'Restaurant Timings'),
(493, 'Web', 'from', 'From'),
(494, 'Web', 'to', 'To'),
(495, 'Web', 'notifications', 'Notifications'),
(496, 'Web', 'rights_reserved', 'Rights Reserved'),
(497, 'Web', 'site_title_is_required', 'Site title is required'),
(498, 'Web', 'site_name_is_required', 'Site name is required'),
(499, 'Web', 'address_is_required', 'Address is required'),
(500, 'Web', 'city_is_required', 'City is required'),
(501, 'Web', 'state_is_required', 'State is required'),
(502, 'Web', 'country_is_required', 'Country is required'),
(503, 'Web', 'pincode_is_required', 'Pincode is required'),
(504, 'Web', 'latitude_is_required', 'Latitude is required'),
(505, 'Web', 'longitude_is_required', 'Longitude is required'),
(506, 'Web', 'phone_number_is_required', 'Phone number is required'),
(507, 'Web', 'landline_number_is_required', 'Landline number is required'),
(508, 'Web', 'fax_is_required', 'Fax is required'),
(509, 'Web', 'contact_email_is_required', 'Contact email is required'),
(510, 'Web', 'site_language_is_required', 'Site language is required'),
(511, 'Web', 'currency_is_required', 'Currency is required'),
(512, 'Web', 'currency_symbol_is_required', 'Currency symbol is required'),
(513, 'Web', 'restaurant_from_time_is_required', 'Restaurant from time is required'),
(514, 'Web', 'restaurant_to_time_is_required', 'Restaurant to time is required'),
(515, 'Web', 'design_by_is_required', 'Design by is required'),
(516, 'Web', 'rights_reserved_is_required', 'Rights reserved is required'),
(517, 'Web', 'date_format', 'Date Format'),
(518, 'Web', 'site_country', 'Site Country'),
(519, 'Web', 'time_zone', 'Time Zone'),
(520, 'Web', 'site_country_is_required', 'Site Country Is Required'),
(521, 'Web', 'time_zone_is_required', 'Time Zone Is Required'),
(522, 'Web', 'file_is_not_valid', 'File Is Not Valid'),
(523, 'Web', 'from_time', 'From Time'),
(524, 'Web', 'to_time', 'To Time'),
(525, 'Web', 'merchant_name', 'Merchant Name'),
(526, 'Web', 'merchant_privacy_policy_url', 'Merchant Privacy Policy URL'),
(527, 'Web', 'merchant_user_agreement_url', 'Merchant User Agreement URL'),
(528, 'Web', 'select', 'Select'),
(529, 'Web', 'sandbox', 'Sandbox'),
(530, 'Web', 'production', 'Production'),
(531, 'Web', 'paypal_environment_production_required', 'Paypal Environment Production Required'),
(532, 'Web', 'paypal_environment_sandbox_required', 'Paypal Environment Sandbox Required'),
(533, 'Web', 'merchant_name_required', 'Merchant Name Required'),
(534, 'Web', 'merchant_privacy_policy_url_required', 'Merchant Privacy Policy Url Required'),
(535, 'Web', 'merchant_user_agreement_url_required', 'Merchant User Agreement Url Required'),
(536, 'Web', 'currency_required', 'Currency Required'),
(537, 'Web', 'account_type_required', 'Account Type Required'),
(538, 'Web', 'status_required', 'Status Required'),
(539, 'Web', 'details_updated_successfully', 'Details Updated Successfully'),
(540, 'Web', 'payu_settings', 'Payu Settings'),
(541, 'Web', 'merchant_key', 'Merchant Key'),
(542, 'Web', 'salt', 'Salt'),
(543, 'Web', 'live_url', 'Live Url'),
(544, 'Web', 'test_url', 'Test Url'),
(545, 'Web', 'merchant_key_required', 'Merchant Key Required'),
(546, 'Web', 'salt_required', 'Salt Required'),
(547, 'Web', 'live_url_required', 'Live Url Required'),
(548, 'Web', 'test_url_required', 'Test Url Required'),
(549, 'Web', 'smtp_host', 'Smtp Host'),
(550, 'Web', 'smtp_port', 'Smtp Port'),
(551, 'Web', 'smtp_user', 'Smtp User'),
(552, 'Web', 'smtp_password', 'Smtp Password'),
(553, 'Web', 'smtp_host_required', 'Smtp Host Required'),
(554, 'Web', 'smtp_port_required', 'Smtp Port Required'),
(555, 'Web', 'smtp_user_required', 'Smtp User Required'),
(556, 'Web', 'smtp_password_required', 'Smtp Password Required'),
(557, 'Web', 'action', 'Action'),
(558, 'Web', 'updated_successfully', 'Updated Successfully'),
(559, 'Web', 'push_notification_settings', 'Push Notification Settings'),
(560, 'Web', 'one_signal_server_api_key_required', 'One Signal Server Api Key Required'),
(561, 'Web', 'one_signal_app_id_required', 'One Signal App Id Required'),
(562, 'Web', 'email_template', 'Email Template'),
(563, 'Web', 'edit_email_template', 'Edit Email Template'),
(564, 'Web', 'subject_required', 'Subject Required'),
(565, 'Web', 'email_template_required', 'Email Template Required'),
(566, 'Web', 'edit_sms_template', 'Edit Sms Template'),
(567, 'Web', 'sms_template_required', 'Sms Template Required'),
(568, 'Web', 'add_menu', 'Add Menu'),
(569, 'Web', 'records_saved_successfully', 'Records Saved Successfully'),
(570, 'Web', 'edit_menu', 'Edit Menu'),
(571, 'Web', 'save', 'Save'),
(572, 'Web', 'add_multi_records', 'Add Multi Records'),
(573, 'Web', 'add_single_record', 'Add Single Record'),
(574, 'Web', 'menu_name_required', 'Menu Name Required'),
(575, 'Web', 'punch_line_required', 'Punch Line Required'),
(576, 'Web', 'description_required', 'Description Required'),
(577, 'Web', 'menu_image_required', 'Menu Image Required'),
(578, 'Web', 'details_saved_successfully', 'Details Saved Successfully'),
(579, 'Web', 'menu_image_is_not_valid_file', 'Menu Image Is Not Valid File'),
(580, 'Web', 'add_addon', 'Add Addon'),
(581, 'Web', 'addon_name_required', 'Addon Name Required'),
(582, 'Web', 'price_required', 'Price Required'),
(583, 'Web', 'addon_image_is_not_valid_file', 'Addon Image Is Not Valid File'),
(584, 'Web', 'edit_addon', 'Edit Addon'),
(585, 'Web', 'add_option', 'Add Option'),
(586, 'Web', 'option_name', 'Option Name'),
(587, 'Web', 'option_name_required', 'Option Name Required'),
(588, 'Web', 'edit_option', 'Edit Option'),
(589, 'Web', 'language_name_required', 'Language Name Required'),
(590, 'Web', 'MSG_LANGUAGE_ADDED', 'MSG LANGUAGE ADDED'),
(592, 'Web', 'edit_phrase', 'Edit Phrase'),
(593, 'Web', 'test', 'Test'),
(594, 'Web', 'phrase_for_required', 'Phrase For Required'),
(595, 'Web', 'lang_key_required', 'Lang Key Required'),
(596, 'Web', 'add_cities', 'Add Cities'),
(597, 'Web', 'add_city', 'Add City'),
(598, 'Web', 'city_name_required', 'City Name Required'),
(599, 'Web', 'add_service_provide_location', 'Add Service Provide Location'),
(600, 'Web', 'edit_service_provide_location', 'Edit Service Provide Location'),
(601, 'Web', 'city_required', 'City Required'),
(602, 'Web', 'locality_required', 'Locality Required'),
(603, 'Web', 'pincode_required', 'Pincode Required'),
(604, 'Web', 'add_page', 'Add Page'),
(605, 'Web', 'edit_page', 'Edit Page'),
(606, 'Web', 'CRUD_operations_disabled_in_DEMO_version', 'CRUD Operations Disabled In DEMO Version'),
(607, 'Web', 'add_item', 'Add Item'),
(608, 'Web', 'edit_item', 'Edit Item'),
(609, 'Web', 'veg', 'Veg'),
(610, 'Web', 'nonveg', 'Non-veg'),
(611, 'Web', 'other', 'Other'),
(612, 'Web', 'menu_required', 'Menu Required'),
(613, 'Web', 'item_name_required', 'Item Name Required'),
(614, 'Web', 'item_cost_required', 'Item Cost Required'),
(615, 'Web', 'item_type_required', 'Item Type Required'),
(616, 'Web', 'item_description_required', 'Item Description Required'),
(617, 'Web', 'item_image_is_not_valid_file', 'Item Image Is Not Valid File'),
(618, 'Web', 'item_description', 'Item Description'),
(619, 'Web', 'add_items', 'Add Items'),
(620, 'Web', 'cost', 'Cost'),
(621, 'Web', 'item_details', 'Item Details'),
(622, 'Web', 'add_remove', 'Add Remove'),
(623, 'Web', 'select_atleast_one_option', 'Select Atleast One Option'),
(624, 'Web', 'name_required', 'Name Required'),
(625, 'Web', 'please_enter_proper_value_for_price_field', 'Please Enter Proper Value For Price Field'),
(626, 'Web', 'already_existed', 'Already Existed'),
(627, 'Web', 'select_option', 'Select Option'),
(628, 'Web', 'note_to_add_a_record_click_on_plus_button', 'Note: To add a record click on the (+) button'),
(631, 'Web', 'MSG_LANGUAGE_DELETED', 'MSG LANGUAGE DELETED'),
(632, 'Web', 'add_offer', 'Add Offer'),
(633, 'Web', 'offer_end_date', 'Offer End Date'),
(634, 'Web', 'offer_conditions', 'Offer Conditions'),
(635, 'Web', 'offer_image_name', 'Offer Image Name'),
(636, 'Web', 'offer_name_required', 'Offer Name Required'),
(637, 'Web', 'offer_cost_required', 'Offer Cost Required'),
(638, 'Web', 'offer_start_date_required', 'Offer Start Date Required'),
(639, 'Web', 'offer_valid_date_required', 'Offer Valid Date Required'),
(640, 'Web', 'serve_no_of_people_required', 'Serve No Of People Required'),
(641, 'Web', 'offer_image_is_not_valid_file', 'Offer Image Is Not Valid File'),
(642, 'Web', 'offer_conditions_required', 'Offer Conditions Required'),
(643, 'Web', 'gallary', 'Gallery'),
(644, 'Web', 'add_images', 'Add Images'),
(645, 'Web', 'alt_text', 'Alt Text'),
(646, 'Web', 'alternative_text', 'Alternative Text'),
(647, 'Web', 'edit_image', 'Edit Image'),
(648, 'Web', 'alternative_text_required', 'Alternative Text Required'),
(649, 'Web', 'image_is_not_valid_file', 'Image Is Not Valid File'),
(650, 'Web', 'update_profile', 'Update Profile'),
(651, 'Web', 'quantity', 'Quantity'),
(652, 'Web', 'item_required', 'Item Required'),
(653, 'Web', 'quantity_required', 'Quantity Required'),
(654, 'Web', 'please_enter_numbers_only', 'Please Enter Numbers Only'),
(655, 'Web', 'edit_offer', 'Edit Offer'),
(656, 'Web', 'view_faqs', 'View Faqs'),
(657, 'Web', 'question', 'Question'),
(658, 'Web', 'answer', 'Answer'),
(659, 'Web', 'add_faq', 'Add Faq'),
(660, 'Web', 'question_required', 'Question Required'),
(661, 'Web', 'answer_required', 'Answer Required'),
(662, 'Web', 'edit_faq', 'Edit Faq'),
(663, 'Web', 'add_faqs', 'Add Faqs'),
(664, 'Web', 'social_networks', 'Social Networks'),
(665, 'Web', 'facebook', 'Facebook'),
(666, 'Web', 'twitter', 'Twitter'),
(667, 'Web', 'google_plus', 'Google Plus'),
(668, 'Web', 'linked_in', 'Linked In'),
(669, 'Web', 'instagram', 'Instagram'),
(670, 'Web', 'pinterest', 'Pinterest'),
(671, 'Web', 'facebook_url_not_valid', 'Facebook Url Not Valid'),
(672, 'Web', 'twitter_url_not_valid', 'Twitter Url Not Valid'),
(673, 'Web', 'google_plus_url_not_valid', 'Google Plus Url Not Valid'),
(674, 'Web', 'linked_in_url_not_valid', 'Linked In Url Not Valid'),
(675, 'Web', 'instagram_url_not_valid', 'Instagram Url Not Valid'),
(676, 'Web', 'pinterest_url_not_valid', 'Pinterest Url Not Valid'),
(677, 'Web', 'tumblr', 'Tumblr'),
(678, 'Web', 'tumblr_url_not_valid', 'Tumblr Url Not Valid'),
(679, 'Web', 'day', 'Day'),
(680, 'Web', 'opened', 'Opened'),
(681, 'Web', 'closed', 'Closed'),
(682, 'Web', 'opening_hours', 'Opening Hours'),
(683, 'Web', 'login', 'Login'),
(684, 'Web', 'contact_us', 'Contact Us'),
(685, 'Web', 'loyality_points', 'Loyality Points'),
(686, 'Web', 'points_settings', 'Points Settings'),
(687, 'Web', 'user_reward_points', 'User Reward Points'),
(688, 'Web', 'points_logs', 'Points Logs'),
(689, 'Web', 'reports', 'Reports'),
(690, 'Web', 'from_date', 'From Date'),
(691, 'Web', 'to_date', 'To Date'),
(692, 'Web', 'from_date_required', 'From Date Required'),
(693, 'Web', 'to_date_required', 'To Date Required'),
(694, 'Web', 'master_settings', 'Master Settings'),
(695, 'Web', 'app_settings', 'App Settings'),
(696, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder'),
(697, 'Web', 'points_label_earn', 'Points Label Earn'),
(698, 'Web', 'points_label_template', 'Points Label Template'),
(699, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer'),
(700, 'Web', 'points_earn_apply_only_on_the_following_payment_option', 'Points Earn Apply Only On The Following Payment Option'),
(701, 'Web', 'cash_on_delivery', 'Cash On Delivery'),
(702, 'Web', 'paypal', 'Paypal'),
(703, 'Web', 'stripe', 'Stripe'),
(704, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings'),
(705, 'Web', 'earning_point', 'Earning Points'),
(706, 'Web', 'earning_point_value_in_R', 'Earning Point Value In R$'),
(707, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings'),
(708, 'Web', 'redeeming_point', 'Redeeming Point'),
(709, 'Web', 'redeeming_point_value_in_R', 'Redeeming Point Value In R$'),
(710, 'Web', 'disabled_redeeming', 'Disabled Redeeming'),
(711, 'Web', 'points_earned_for_actions', 'Points Earned For Actions'),
(712, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup'),
(713, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review'),
(714, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order'),
(715, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App'),
(716, 'Web', 'points_expiry', 'Points Expiry'),
(717, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them'),
(718, 'Web', 'points_never_expire', 'Points Never Expire'),
(719, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used'),
(720, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used'),
(721, 'Web', 'enabled_points_system', 'Enabled Points System'),
(722, 'Web', 'required', 'Required'),
(723, 'Web', 's_no', 'S No'),
(724, 'Web', 'customer_name', 'Customer Name'),
(725, 'Web', 'customer_phone', 'Customer Phone'),
(726, 'Web', 'no_of_items_booked', 'No Of Items Booked'),
(727, 'Web', 'order_cost', 'Order Cost'),
(728, 'Web', 'booked_date_time', 'Booked Date Time'),
(729, 'Web', 'payment', 'Payment'),
(730, 'Web', 'paid_amount', 'Paid Amount'),
(731, 'Web', 'booked_date', 'Booked Date'),
(732, 'Web', 'total_amount', 'Total Amount'),
(733, 'Web', 'no_customers_available', 'No Customers Available'),
(734, 'Web', 'client_wise_reports', 'Client Wise Reports'),
(735, 'Web', 'customer', 'Customer'),
(736, 'Web', 'customer_required', 'Customer Required'),
(737, 'Web', 'location_wise_reports', 'Location Wise Reports'),
(738, 'Web', 'item_wise_reports', 'Item Wise Reports'),
(739, 'Web', 'item', 'Item'),
(740, 'Web', 'date_wise_reports', 'Date Wise Reports'),
(741, 'Web', 'updated_successfully', 'Updated Successfully'),
(742, 'Web', 'calendar', 'Calendar'),
(743, 'Web', 'point_settings', 'Point Settings'),
(744, 'Web', 'points_label_redeem_placeholder', 'Points Label Redeem Placeholder'),
(745, 'Web', 'points_label_earn', 'Points Label Earn'),
(746, 'Web', 'points_label_template', 'Points Label Template'),
(747, 'Web', 'maximum_earning_points_for_customer', 'Maximum Earning Points For Customer'),
(748, 'Web', 'points_earn_apply_only_on_the_following_payment_options', 'Points Earn Apply Only On The Following Payment Options'),
(749, 'Web', 'earning_point', 'Earning Points'),
(750, 'Web', 'earning_point_value_in_', 'Earning Point Value In '),
(751, 'Web', 'redeeming_points_conversion_settings', 'Redeeming Points Conversion Settings'),
(752, 'Web', 'redeeming_point', 'Redeeming Point'),
(754, 'Web', 'disabled_redeeming', 'Disabled Redeeming'),
(755, 'Web', 'redeeming_point_value_in_', 'Redeeming Point Value In'),
(756, 'Web', 'points_earned_for_actions', 'Points Earned For Actions'),
(757, 'Web', 'reward_points_for_restaurant_review', 'Reward Points For Restaurant Review'),
(758, 'Web', 'reward_points_for_first_order', 'Reward Points For First Order'),
(759, 'Web', 'reward_points_for_sharing_app', 'Reward Points For Sharing App'),
(760, 'Web', 'points_expiry', 'Points Expiry'),
(761, 'Web', 'points_expire_at_the_end_of_the_next_year_after_you_earned_them', 'Points Expire At The End Of The Next Year After You Earned Them'),
(762, 'Web', 'points_never_expire', 'Points Never Expire'),
(763, 'Web', 'minimum_points_can_be_used', 'Minimum Points Can Be Used'),
(764, 'Web', 'maximum_points_can_be_used', 'Maximum Points Can Be Used'),
(765, 'Web', 'enabled_points_system', 'Enabled Points System'),
(766, 'Web', 'points_label_redeem_placeholder_required', 'Points Label Redeem Placeholder Required'),
(767, 'Web', 'points_label_earn_required', 'Points Label Earn Required'),
(768, 'Web', 'points_label_template_required', 'Points Label Template Required'),
(769, 'Web', 'maximum_earning_points_for_customer_required', 'Maximum Earning Points For Customer Required'),
(770, 'Web', 'payment_options_required', 'Payment Options Required'),
(771, 'Web', 'earning_point_required', 'Earning Point Required'),
(772, 'Web', 'earning_point_value_required', 'Earning Point Value Required'),
(773, 'Web', 'redeeming_point_required', 'Redeeming Point Required'),
(774, 'Web', 'redeeming_point_value_required', 'Redeeming Point Value Required'),
(775, 'Web', 'points_for_restaurant_review_required', 'Points For Restaurant Review Required'),
(776, 'Web', 'points_for_first_order_required', 'Points For First Order Required'),
(777, 'Web', 'points_for_sharing_app_required', 'Points For Sharing App Required'),
(778, 'Web', 'points_expiry_required', 'Points Expiry Required'),
(779, 'Web', 'minimum_points_can_be_used_required', 'Minimum Points Can Be Used Required'),
(780, 'Web', 'maximum_points_can_be_used_required', 'Maximum Points Can Be Used Required'),
(781, 'Web', 'reward_points_for_account_signup', 'Reward Points For Account Signup'),
(782, 'Web', 'reward_points_for_account_signup_required', 'Reward Points For Account Signup Required'),
(783, 'Web', 'earning_point_value', 'Earning Point Value'),
(784, 'Web', 'redeeming_point_value', 'Redeeming Point Value'),
(785, 'Web', 'points_for_restaurant_review', 'Points For Restaurant Review'),
(786, 'Web', 'points_for_first_order', 'Points For First Order'),
(787, 'Web', 'points_for_sharing_app', 'Points For Sharing App'),
(788, 'Web', 'total_points', 'Total Points'),
(789, 'Web', 'referral_settings', 'Referral Settings'),
(790, 'Web', 'referral_enabled', 'Referral Enabled'),
(791, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone'),
(792, 'Web', 'points_for_referred_by_anyone', '	Points For Referred By Anyone'),
(793, 'Web', 'points_for_refer_anyone_required', 'Points For Refer Anyone Required'),
(794, 'Web', 'points_for_referred_by_anyone_required', 'Points For Referred By Anyone Required'),
(795, 'Web', 'points_for_refer_anyone', 'Points For Refer Anyone'),
(796, 'Web', 'points_for_referring_person', '	Points For Referring Person'),
(797, 'Web', 'points_for_referred_person', '	points for referred person'),
(798, 'Web', 'fevicon', 'Favicon'),
(799, 'Web', 'view_customers', 'View Customers'),
(800, 'Web', 'designed_by', 'Designed By'),
(801, 'Web', 'orders', 'Orders'),
(802, 'Web', 'refferal_users', 'Refferal Users'),
(803, 'Web', 'order', 'Order'),
(804, 'Web', 'login_register', 'Login Register'),
(805, 'Web', 'loginregister', 'Login-register'),
(806, 'Web', 'email_required', 'Email Required'),
(807, 'Web', 'password_required', 'Password Required'),
(808, 'Web', 'forgot_password', 'Forgot Password'),
(809, 'Web', 'login_through_facebook', 'Login Through Facebook'),
(810, 'Web', 'login_through_google', 'Login Through Google'),
(811, 'Web', 'first_name_required', 'First Name Required'),
(812, 'Web', 'last_name_required', 'Last Name Required'),
(813, 'Web', 'phone_required', 'Phone Required'),
(814, 'Web', 'confirm_password_required', 'Confirm Password Required'),
(815, 'Web', 'password_confirm_password_should_be_same', 'Password Confirm Password Should Be Same'),
(816, 'Web', 'min_length6', 'Min Length6'),
(817, 'Web', 'min_length_6', 'Min Length 6'),
(818, 'Web', 'min_length_should_be_6', 'Min Length Should Be 6'),
(819, 'Web', 'login_signup', 'Login Signup'),
(820, 'Web', 'reset_password', 'Reset Password'),
(821, 'Web', 'follow_us', 'Follow Us'),
(822, 'Web', 'about_us', 'About Us'),
(823, 'Web', 'message', 'Message'),
(824, 'Web', 'message_required', 'Message Required'),
(825, 'Web', 'contact_query', 'Contact Query'),
(826, 'Web', 'your_contact_request_not_sent_due_to_some_technical_issue_please_contact_us_after_some_time_thankyou', 'Your Contact Request Not Sent Due To Some Technical Issue Please Contact Us After Some Time Thankyou'),
(827, 'Web', 'my_orders', 'My Orders'),
(828, 'Web', 'my_points', 'My Points'),
(829, 'Web', 'my_account', 'My Account'),
(830, 'Web', 'logout', 'Logout'),
(831, 'Web', 'logged_out_successfully', 'Logged Out Successfully'),
(832, 'Web', 'profile_updated_successfully', 'Profile Updated Successfully'),
(833, 'Web', 'profile_image', 'Profile Image'),
(834, 'Web', 'old_password', 'Old Password'),
(835, 'Web', 'new_password', 'New Password'),
(836, 'Web', 'new_confirm_password', 'New Confirm Password'),
(837, 'Web', 'old_password_required', 'Old Password Required'),
(838, 'Web', 'new_password_required', 'New Password Required'),
(839, 'Web', 'new_confirm_password_required', 'New Confirm Password Required'),
(840, 'Web', 'current_password', 'Current Password'),
(841, 'Web', 'record_not_found', 'Record Not Found'),
(842, 'Web', 'profile_image_is_not_valid_file', 'Profile Image Is Not Valid File'),
(843, 'Web', 'change', 'Change'),
(844, 'Web', 'signup', 'Signup'),
(845, 'Web', 'referral_code', 'Referral Code'),
(846, 'Web', 'user_points', 'User Points'),
(847, 'Web', 'login_into_facebook', 'Login Into Facebook'),
(848, 'Web', 'login_into_google', 'Login Into Google'),
(849, 'Web', 'customers', 'Customers'),
(850, 'Web', 'Our_Links', 'Our Links'),
(851, 'Web', 'view_card_images', 'View Card Images'),
(852, 'Web', 'card_image', 'Card image'),
(853, 'Web', 'add_card', 'Add Card'),
(854, 'Web', 'card_image_is_not_valid_file', 'Card image is not valid file'),
(855, 'Web', 'edit_card', 'Edit card'),
(856, 'Web', 'street', 'Street'),
(857, 'Web', 'house_no_required', 'House no required'),
(858, 'Web', 'street_required', 'Street required'),
(859, 'Web', 'landmark_required', 'Landmark required'),
(860, 'Web', 'add_address', 'Add address'),
(861, 'Web', 'house_no', 'House no'),
(862, 'Web', 'address_saved_successfully', 'Address saved successfully'),
(863, 'Web', 'address_deleted_successfully', 'Address deleted successfully'),
(864, 'Web', 'addresses', 'Addresses'),
(865, 'Web', 'delivery_fee', 'Delivery Fee'),
(866, 'Web', 'delivery_from_time', 'Delivery From Time'),
(867, 'Web', 'delivery_to_time', 'Delivery to Time'),
(868, 'Web', 'delivery_time_units', 'Delivery Time Units'),
(869, 'Web', 'minutes', 'Minutes'),
(870, 'Web', 'hours', 'Hours'),
(871, 'Web', 'payment_type_required', 'Payment type required'),
(872, 'Web', 'payment_methods', 'Payment Methods'),
(873, 'Web', 'online', 'Online'),
(874, 'Web', 'cash_on_delivery', 'Cash On Delivery'),
(875, 'Web', 'card_on_delivery', 'Card on Delivery'),
(876, 'Web', 'payment_methods_required', 'Payment Methods Required'),
(877, 'Web', 'site_logo_file_is_not_valid', 'Site logo file is not valid'),
(878, 'Web', 'fevicon_file_is_not_valid', 'Fevicon file is not valid'),
(879, 'Web', 'no_payment_methods_available', 'No Payment Methods Available'),
(880, 'Web', 'paypal_email_required', 'Paypal email required'),
(881, 'Web', 'country_code_is_required', 'Country code is required'),
(882, 'Web', 'for_app', 'For app'),
(883, 'Web', 'app_details', 'App details'),
(884, 'Web', 'paypal_details_for_app', 'Paypal details for app'),
(885, 'Web', 'is_most_selling_item', 'Is Most Selling item'),
(886, 'Web', 'order_successfully_saved', 'Order successfully saved'),
(887, 'Web', 'most_selling_items', 'Most Selling Items'),
(888, 'Web', 'view_orders', 'View Orders'),
(889, 'Web', 'order_no', 'Order No'),
(890, 'Web', 'order_date', 'Order Date'),
(891, 'Web', 'order_time', 'Order Time'),
(892, 'Web', 'new_orders', 'New Orders'),
(893, 'Web', 'under_process_orders', 'Under Process Orders'),
(894, 'Web', 'out_to_deliver_orders', 'Out to Deliver Orders'),
(895, 'Web', 'delivered_orders', 'Delivered Orders'),
(896, 'Web', 'cancelled_orders', 'Cancelled Orders'),
(897, 'Web', 'view_order', 'View Order'),
(898, 'Web', 'delivery_cost', 'Delivery Cost'),
(899, 'Web', 'is_points_redeemed', 'Is Points Redeemed'),
(900, 'Web', 'option', 'Option'),
(901, 'Web', 'item_quantity', 'Item Quantity'),
(902, 'Web', 'total_cost', 'Total Cost'),
(903, 'Web', 'is_deleted', 'Is Deleted'),
(904, 'Web', 'order_items', 'Order Items'),
(905, 'Web', 'order_addons', 'Order Addons'),
(906, 'Web', 'order_offers', 'Order Offers'),
(907, 'Web', 'offer_quantity', 'Offer Quantity'),
(908, 'Web', 'no_of_products', 'No of Products'),
(909, 'Web', 'order_update', 'Order update'),
(910, 'Web', 'update_order_status', 'Update order status'),
(911, 'Web', 'processing', 'Processing'),
(912, 'Web', 'out_to_deliver', 'Out to Deliver'),
(913, 'Web', 'delivered', 'Delivered'),
(914, 'Web', 'cancelled', 'Cancelled'),
(915, 'Web', 'please_select_order_status', 'Please select order status'),
(916, 'Web', 'order_status_updated_successfully', 'Order status updated successfully'),
(917, 'Web', 'order_status', 'Order status'),
(918, 'Web', 'email_not_send_to_user', 'Email not send to user'),
(919, 'Web', 'process', 'Process'),
(920, 'Web', 'earning_points_for_customer_for_an_order', 'Earning Points for Customer for an Order'),
(921, 'Web', 'print', 'Print'),
(922, 'Web', 'stripe_cards', 'Stripe Cards'),
(923, 'Web', 'point_logs_of', 'Point Logs of'),
(924, 'Web', 'points', 'Points'),
(925, 'Web', 'transaction_type', 'Transaction Type'),
(926, 'Web', 'referral_users', 'Referral Users'),
(927, 'Web', 'refer_user', 'Refer User'),
(928, 'Web', 'referred_by', 'Referred by'),
(929, 'Web', 'date', 'Date'),
(930, 'Web', 'user_arleady_existed_with_this_email_id', 'User arleady existed with this email id'),
(931, 'Web', 'please_enter_valid_email_id', 'Please enter valid email id'),
(932, 'Web', 'no_user_found_with_this_referral_code', 'No user found with this referral code'),
(933, 'Web', 'orders_overview', 'Orders Overview'),
(934, 'Web', 'no_items_available_please_contact_administration', 'No items available please contact administration'),
(935, 'Web', 'show_all', 'Show all'),
(936, 'Web', 'add_to_cart', 'Add to cart'),
(937, 'Web', 'order_can_not_be_booked_please_follow_restaurant_timings', 'Order can not be booked please follow restaurant timings'),
(938, 'Web', 'get_languageword', 'Get language word'),
(939, 'Web', 'thank_you', 'Thank you'),
(940, 'Web', 'your_order_is_received_we_will_contact_you_soon', 'Your order is received we will contact you soon'),
(941, 'Web', 'sms_sent_to_user', 'Sms sent to user'),
(942, 'Web', 'order_item_deleted_successfully', 'Order item deleted successfully'),
(943, 'Web', 'Activation_Email_Sent', 'Activation Email Sent'),
(944, 'Web', 'arabic', 'Arabic'),
(945, 'Web', 'dutch', 'Dutch'),
(946, 'Web', 'records_not_saved', 'Records not saved'),
(947, 'Web', 'email_sent_to_user', 'Email sent to user'),
(948, 'Web', 'customer_wise_reports', 'Customer Wise Reports'),
(949, 'Web', 'please_enter_valid_value', 'Please enter valid value'),
(950, 'Web', 'facebook_app_id', 'Facebook App id'),
(951, 'Web', 'facebook_app_secret', 'Facebook App Secret'),
(952, 'Web', 'facebook_app_id_required', 'Facebook app id required'),
(953, 'Web', 'facebook_app_secret_required', 'Facebook App Secret Required'),
(954, 'Web', 'order_addon_item_deleted_successfully', 'Order addon item deleted successfully'),
(955, 'Web', 'units', 'Units'),
(956, 'Web', 'profile_image_updated_successfully', 'Profile image updated successfully'),
(957, 'Web', 'language_code', 'Language Code'),
(958, 'Web', 'language_code_required', 'Language code required'),
(959, 'Web', 'title_required', 'Title required'),
(960, 'Web', 'language_required', 'Language required'),
(961, 'Web', 'ios_urlxss_clean', 'Ios url|xss clean'),
(962, 'Web', 'android_urlxss_clean', 'Android url|xss clean'),
(963, 'Web', 'points_for_referred_person', '	points for referred person'),
(964, 'Web', 'view_item_types', 'View Item Types'),
(965, 'Web', 'add_item_type', 'Add Item Type'),
(966, 'Web', 'add_item_types', 'Add Item Types'),
(967, 'Web', 'no_items_available', 'No items available'),
(968, 'Web', 'item_types', 'Item Types'),
(969, 'Web', 'email_sms_not_send_to_user', 'Email sms not send to user'),
(970, 'Web', 'order_offer_item_deleted_successfully', 'Order offer item deleted successfully'),
(971, 'Web', 'edit_item_type', 'Edit item type'),
(972, 'Web', 'total_orders_amount', 'Total orders amount'),
(973, 'Web', 'total_items_amount', 'Total items amount'),
(974, 'Web', 'no_of_points_redeemed', 'No of points redeemed'),
(975, 'Web', 'points_value', 'Points value'),
(976, 'Web', 'google_client_id', 'Google Client id'),
(977, 'Web', 'google_client_secret', 'Google Client Secret'),
(978, 'Web', 'google_client_id_required', 'Google Client Id Required'),
(979, 'Web', 'google_client_secret_required', 'Google Client Secret Required'),
(980, 'Web', 'no_offers_available_please_contact_administration', 'No offers available please contact administration'),
(981, 'Web', 'Account_is_inactive', 'Account is inactive'),
(982, 'Web', 'login_success', 'Login success'),
(983, 'Web', 'Incorrect_Login', 'Incorrect Login'),
(984, 'Web', 'Password_Successfully_Changed', 'Password Successfully Changed'),
(985, 'Web', 'Old_password_is_wrong', '##Old password is wrong##'),
(986, 'Web', 'restaurant_opening_hours', 'Restaurant opening hours'),
(987, 'Web', 'No_Orders', 'No Orders'),
(988, 'Web', 'Order_Details', 'Order Details'),
(989, 'Web', 'admin_panel', 'Admin panel'),
(990, 'Web', 'product_details', 'Product details'),
(991, 'Web', 'sub_total', 'Sub total'),
(992, 'Web', 'grand_total', 'Grand total'),
(993, 'Web', 'points_redeemed', 'Points redeemed'),
(994, 'Web', 'points_discount', 'Points discount'),
(995, 'Web', 'address_details', 'Address details'),
(996, 'Web', 'new_address', 'New address'),
(997, 'Web', 'house_number_required', 'House number required'),
(998, 'Web', 'pincode', 'PIN Code'),
(999, 'Web', 'addons', 'Add-ons'),
(1000, 'Web', 'points_earned_for_buy_an_item_order', 'Points earned for buy an item order'),
(1001, 'Web', 'home_images', 'Home Images'),
(1002, 'Web', 'add_image', 'Add image'),
(1003, 'Web', 'image_uploaded_successfully', 'Image uploaded successfully'),
(1004, 'Web', 'image_status_updated_successfully', 'Image status updated successfully'),
(1005, 'Web', 'back', 'Back'),
(1006, 'Web', 'points_redeemed_for_buy_an_item_order', 'Points redeemed for buy an item order'),
(1007, 'Web', 'please_provide_delivery_address_details', 'Please provide delivery address details'),
(1008, 'Web', 'saved_addresses', 'Saved addresses'),
(1009, 'App', 'referal_code', 'Referal Code'),
(1010, 'App', 'sign_up', 'Sign up'),
(1011, 'App', 'cart_list', 'Cart List'),
(1012, 'App', 'new_user', 'New User'),
(1013, 'App', 'terms_and_conditions', 'Terms and Conditions'),
(1014, 'App', 'version', 'Version'),
(1015, 'App', 'confirm_new_password', 'Confirm New Password'),
(1016, 'App', 'no_orders_found', 'No Orders Found'),
(1017, 'App', 'order_history', 'Order History'),
(1018, 'App', 'order_details', 'Order Details'),
(1019, 'App', 'order_products', 'Order Products'),
(1020, 'App', 'offer_products', 'Offer Products'),
(1021, 'App', 'time', 'Time'),
(1022, 'App', 'payment_type', 'Payment Type'),
(1023, 'App', 'order_address', 'Order Address'),
(1025, 'Web', 'order_address', 'Order Address'),
(1026, 'App', 'home', 'Home'),
(1027, 'App', 'first_name', 'First Name'),
(1028, 'App', 'last_name', 'Last Name'),
(1029, 'App', 'email', 'Email'),
(1030, 'App', 'phone', 'Phone'),
(1031, 'App', 'password', 'Password'),
(1032, 'App', 'confirm_password', 'Confirm Password'),
(1033, 'App', 'logout', 'Logout'),
(1034, 'App', 'login', 'Login'),
(1036, 'App', 'about_us', 'About Us'),
(1037, 'App', 'change_langauage', 'Change Language'),
(1038, 'App', 'forgot_password', 'Forgot Password'),
(1039, 'App', 'address', 'Address');
INSERT INTO `cr_languagewords` (`lang_id`, `phrase_for`, `lang_key`, `english`) VALUES
(1040, 'App', 'fax', 'Fax'),
(1041, 'App', 'current_password', 'Current Password'),
(1042, 'App', 'new_password', 'New Password'),
(1043, 'App', 'change', 'Change'),
(1044, 'App', 'delivered', 'Delivered'),
(1045, 'App', 'cancelled', 'Cancelled'),
(1046, 'App', 'processing', 'Processing'),
(1047, 'App', 'addons', 'Add-ons'),
(1048, 'App', 'offers', 'Offers'),
(1049, 'App', 'cost', 'Cost'),
(1050, 'App', 'order_no', 'Order No'),
(1051, 'App', 'points_redeemed', 'Points redeemed'),
(1052, 'App', 'no_of_points_redeemed', 'No of points redeemed'),
(1053, 'App', 'order_status', 'Order status'),
(1055, 'Web', 'first name', 'First name'),
(1056, 'Web', 'Incorrect Login', 'Incorrect Login'),
(1057, 'Web', 'profile_picture', 'Profile picture'),
(1058, 'Web', 'please_upload_profile_picture', 'Please upload profile picture'),
(1059, 'Web', 'please_upload_valid_profile_picture', 'Please upload valid profile picture'),
(1060, 'Web', 'phone_number_required', 'Phone number required'),
(1061, 'Web', 'min_length_should_be 6', 'Min length should be 6'),
(1062, 'Web', 'Activation Email Sent', 'Activation Email Sent'),
(1063, 'Web', 'points_for_registration', 'Points for registration'),
(1064, 'Web', 'points_for_referred_user', 'Points for referred user'),
(1065, 'Web', 'points_for_referred_by_user', 'Points for referred by user'),
(1066, 'Web', 'earning_points_conversion_settings', 'Earning Points Conversion Settings'),
(1067, 'Web', 'add-ons', 'Add-ons'),
(1068, 'Web', 'points_earned_for_first_order', 'Points earned for first order'),
(1069, 'Web', 'delivery_address', 'Delivery address'),
(1070, 'Web', 'payment_method', 'Payment method'),
(1071, 'Web', 'add_ons', 'Add ons'),
(1072, 'Web', 'points_returned_for_cancelled_an_item_order', 'Points returned for cancelled an item order'),
(1073, 'Web', 'ios_url|xss_clean', 'Ios url|xss clean'),
(1074, 'Web', 'android_url|xss_clean', 'Android url|xss clean'),
(1075, 'Web', '	points_for_referring_person', 'points for referring person'),
(1076, 'Web', '	points_for_referred_person', 'points for referred person'),
(1077, 'Web', 'login success', 'Login success'),
(1078, 'Web', 'No Orders', 'No Orders'),
(1079, 'Web', 'Order Details', 'Order Details'),
(1080, 'Web', 'Address deleted successfully', 'Address deleted successfully'),
(1081, 'Web', 'Address added successfully', 'Address added successfully'),
(1082, 'App', 'add_address', 'Add address'),
(1083, 'App', 'save', 'Save'),
(1084, 'App', 'pincode', 'Pincode'),
(1085, 'App', 'locality', 'Locality'),
(1086, 'App', 'city', 'City'),
(1087, 'App', 'landmark', 'Landmark'),
(1088, 'App', 'street', 'Street'),
(1089, 'App', 'cancel', 'Cancel'),
(1090, 'App', 'delete', 'Delete'),
(1091, 'App', 'do_you_want_to_delete_address', 'Do you want to delete address'),
(1092, 'App', 'order_offers', 'Order Offers'),
(1093, 'App', 'user_profile', 'User Profile'),
(1094, 'App', 'house_no', 'House No'),
(1095, 'App', 'select_language', 'Select Language'),
(1096, 'App', 'change_language', 'Change Language'),
(1097, 'Web', 'Lang Key', 'Lang Key'),
(1098, 'Web', 'max_size', 'Max size'),
(1099, 'Web', 'home_slider_images', 'Home slider images'),
(1100, 'App', 'menu', 'Menu'),
(1101, 'Web', 'greek', 'Greek'),
(1102, 'Web', 'forgot password email not found', 'Forgot password email not found'),
(1103, 'Web', 'your_contact_request_sent_successfully', 'Your contact request sent successfully'),
(1104, 'Web', '	points_for_referred_by_anyone', 'points for referred by anyone'),
(1105, 'Web', 'have_account', 'Have account'),
(1106, 'Web', 'pusher_notification_settings', 'Pusher Notification Settings'),
(1107, 'Web', 'APP_ID', 'APP ID'),
(1108, 'Web', 'KEY', 'KEY'),
(1109, 'Web', 'SECRET', 'SECRET'),
(1110, 'Web', 'pusher_app_id_required', 'Pusher app id required'),
(1111, 'Web', 'pusher_key_required', 'Pusher key required'),
(1112, 'Web', 'pusher_secret_required', 'Pusher secret required'),
(1113, 'Web', 'pusher_notifications', 'Pusher notifications'),
(1114, 'Web', 'new_order', 'New order'),
(1115, 'Web', 'you_have_new_order_would_you_like_to_view', 'You have new order would you like to view'),
(1116, 'Web', 'Offer Products', 'Offer Products'),
(1117, 'Web', 'portuguese', 'Portuguese'),
(1118, 'Web', 'earning points conversion settings', 'Earning points conversion settings'),
(1119, 'Web', 'registration completed successfully activation email sent', 'Registration completed successfully activation email sent'),
(1120, 'Web', 'Account is inactive', 'Account is inactive'),
(1121, 'App', 'no_items_in_cart', 'No items in cart'),
(1122, 'App', 'add_items', 'Add Items'),
(1123, 'App', 'offer_details', 'Offer Details'),
(1124, 'App', 'order', 'Order'),
(1125, 'Web', 'please_select_llanguage', 'Please select llanguage'),
(1126, 'Web', 'please_select_language', 'Please select language'),
(1127, 'Web', 'are_you_sure_to_delete_address', 'Are you sure to delete address'),
(1128, 'App', 'sub_total', 'Sub total'),
(1129, 'App', 'delivery_fee', 'Delivery fee'),
(1130, 'App', 'total', 'Total'),
(1131, 'App', 'payment', 'Payment'),
(1132, 'App', 'online', 'Online'),
(1133, 'App', 'cash', 'Cash'),
(1134, 'App', 'proceed', 'Proceed'),
(1135, 'App', 'cost_details', 'Cost Details'),
(1136, 'App', 'place_order', 'Place Order'),
(1137, 'App', 'phone_number', 'Phone number'),
(1138, 'App', 'date', 'Date'),
(1139, 'App', 'select_address', 'Select Address'),
(1140, 'App', 'no_address_added', 'No address added'),
(1141, 'App', 'redeem_points', 'Redeem Points'),
(1142, 'App', 'add_new_address', 'Add New Address'),
(1143, 'App', 'would_you_like_to_reedeem_points', 'Would you like to redeem points'),
(1144, 'App', 'points_value', 'Points Value'),
(1145, 'Web', 'logged in successfully', 'Logged in successfully'),
(1146, 'Web', 'Service Cities', 'Service Cities'),
(1147, 'Web', 'Thanks for your rating', 'Thanks for your rating'),
(1148, 'Web', 'Thanks for updated rating', 'Thanks for updated rating'),
(1149, 'App', 'loading', 'Loading'),
(1150, 'App', 'item_added_to_cart', 'Item added to cart'),
(1151, 'App', 'already_added_to_cart', 'Already added to cart'),
(1152, 'App', 'specify_date', 'Specify Date'),
(1153, 'App', 'our_location', 'Our Location'),
(1154, 'App', 'points', 'Points'),
(1155, 'App', 'my_points', 'My points'),
(1156, 'App', 'rate_this_order', 'Rate this order'),
(1157, 'Web', 'registration completed successfully password sent to email', 'Registration completed successfully password sent to email'),
(1158, 'App', 'done', 'Done'),
(1159, 'App', 'phone_required', 'Phone required'),
(1160, 'App', 'payment_status', 'Payment status'),
(1161, 'App', 'thanks_for_your_order', 'Thanks for your order'),
(1162, 'App', 'your_order_of', 'Your order of'),
(1163, 'App', 'has_been_successfully_booked', 'has been successfully booked'),
(1164, 'Web', 'kitchen_managers', 'Kitchen Managers'),
(1165, 'Web', 'add_record', 'Add record'),
(1166, 'Web', 'add_kitchen_manager', 'Add Kitchen Manager'),
(1167, 'Web', 'user_already_exists', 'User already exists'),
(1168, 'Web', 'edit_kitchen_manager', 'Edit Kitchen Manager'),
(1169, 'Web', 'delivery_managers', 'Delivery Managers'),
(1170, 'Web', 'add_delivery_manager', 'Add Delivery Manager'),
(1171, 'Web', 'user_record_created_successfully', 'User record created successfully'),
(1172, 'Web', 'edit_delivery_manager', 'Edit Delivery Manager'),
(1173, 'Web', 'assigned_cities', 'Assigned cities'),
(1174, 'Web', 'message_to_customer', 'Message to customer'),
(1175, 'Web', 'kitchen_manager', 'Kitchen Manager'),
(1176, 'Web', 'delivery_manager', 'Delivery Manager'),
(1177, 'Web', 'kitchen_manager_dashboard', 'Kitchen Manager Dashboard'),
(1178, 'Web', 'kitchen_manager_has_been_sent_an_order_to_delivery_manager', 'Kitchen Manager has been sent an Order to Delivery Manager'),
(1179, 'Web', 'would_you_like_to_view', 'Would you like to view'),
(1180, 'Web', 'please_select_delivery_manager', 'Please select delivery manager'),
(1181, 'Web', 'delivery_manager_dashboard', 'Delivery Manager Dashboard'),
(1182, 'Web', 'delivery_manager_has_been_updated_an_order_as_delivered', 'Delivery Manager has been updated an order as delivered'),
(1183, 'Web', 'kitchen_manager_has_been_sent_an_order', 'Kitchen Manager has been sent an order'),
(1184, 'Web', 'contact_details', 'Contact details'),
(1185, 'Web', 'visit_us', 'Visit us'),
(1186, 'Web', 'email_us', 'Email us'),
(1187, 'Web', 'call_us', 'Call us'),
(1188, 'Web', 'links', 'Links'),
(1189, 'Web', 'site_map', 'Site map'),
(1190, 'Web', 'hot_and_spicy', 'Hot & Spicy'),
(1191, 'Web', 'delicious_food', 'DELICIOUS FOOD'),
(1192, 'Web', 'our_menu', 'Our Menu'),
(1193, 'Web', 'get_connected_with_us', 'Get connected with us'),
(1194, 'Web', 'opening_time', 'OPENING TIME'),
(1195, 'Web', 'send', 'Send'),
(1196, 'Web', 'invalid_email', 'Invalid email'),
(1197, 'Web', 'view_menu_categories', 'View menu categories'),
(1198, 'Web', 'add_menu_category', 'Add menu category'),
(1199, 'Web', 'category_name_required', 'Category name required'),
(1200, 'Web', 'edit_menu_category', 'Edit menu category'),
(1201, 'Web', 'menu_categories', 'Menu categories'),
(1202, 'Web', 'select_menu_category', 'Select menu category'),
(1203, 'Web', 'menu_category', 'Menu category'),
(1204, 'Web', 'menu_category_required', 'Menu category required'),
(1205, 'Web', 'your orders', 'Your orders'),
(1206, 'Web', 'my address', 'My address'),
(1207, 'Web', 'No service localities', 'No service localities'),
(1208, 'Web', 'street_name_required', 'Street name required'),
(1209, 'Web', 'how_it_works', 'How it works'),
(1210, 'Web', 'privacy_and_policy', 'Privacy and policy'),
(1211, 'Web', 'terms_conditions', 'Terms conditions'),
(1212, 'Web', 'privacy_policy', 'Privacy policy'),
(1213, 'Web', 'site_url', 'Site url'),
(1214, 'Web', 'menu_image_url', 'Menu image url'),
(1215, 'Web', 'item_image_url', 'Item image url'),
(1216, 'Web', 'addon_image_url', 'Addon image url'),
(1217, 'Web', 'offer_image_url', 'Offer image url'),
(1218, 'Web', 'site_url_required', 'Site url required'),
(1219, 'Web', 'menu_image_url_required', 'Menu image url required'),
(1220, 'Web', 'item_image_url_required', 'Item image url required'),
(1221, 'Web', 'addon_image_url_required', 'Addon image url required'),
(1222, 'Web', 'offer_image_url_required', 'Offer image url required'),
(1223, 'Web', 'service_url', 'Service url'),
(1224, 'Web', 'menu_image_thumb_url', 'Menu image thumb url'),
(1225, 'Web', 'item_image_thumb_url', 'Item image thumb url'),
(1226, 'Web', 'addon_image_thumb_url', 'Addon image thumb url'),
(1227, 'Web', 'offer_image_thumb_url', 'Offer image thumb url'),
(1228, 'Web', 'tinify_settings', 'Tinify settings'),
(1229, 'Web', 'use_tinify', 'Use tinify'),
(1230, 'Web', 'tinify_API_KEY', 'Tinify API KEY'),
(1231, 'Web', 'download_app', 'Download app'),
(1232, 'Web', 'Send message', 'Send message'),
(1233, 'Web', 'enable_redeeming', 'Enable redeeming'),
(1234, 'Web', 'faqs_categories', 'Faqs categories'),
(1235, 'Web', 'add_faq_category', 'Add faq category'),
(1236, 'Web', 'faq_category_required', 'Faq category required'),
(1237, 'Web', 'edit_faq_category', 'Edit faq category'),
(1238, 'Web', 'select_category', 'Select category'),
(1239, 'Web', 'category_required', 'Category required'),
(1240, 'Web', 'no_categories_available', 'No categories available'),
(1241, 'Web', 'search_dish', 'Search dish'),
(1242, 'Web', 'order_online', 'Order online'),
(1243, 'Web', 'home_delivery', 'Home delivery'),
(1244, 'Web', 'get_in_touch', 'Get in touch'),
(1245, 'Web', 'for_enquiries_or_suggestions', 'For enquiries or suggestions'),
(1246, 'Web', 'send_message', 'Send message'),
(1247, 'Web', 'popular_items', 'Popular items'),
(1248, 'Web', 'no_offers_available', 'No offers available'),
(1249, 'Web', 'home_page_site_logo', 'Home page site logo'),
(1250, 'Web', 'other_pages_site_logo', 'Other pages site logo'),
(1251, 'Web', 'home_page_site_logo_file_is_not_valid', 'Home page site logo file is not valid'),
(1252, 'Web', 'inner_pages_site_logo_file_is_not_valid', 'Inner pages site logo file is not valid'),
(1253, 'Web', 'or_signup_with', 'Or signup with'),
(1254, 'Web', 'forgot_password?', 'Forgot password?'),
(1255, 'Web', 'or_login_through', 'Or login through'),
(1256, 'Web', 'or_signup_through', 'Or signup through'),
(1257, 'Web', 'no_faqs_available', 'No faqs available'),
(1258, 'Web', '\n                            language_required ', '\n                            language required '),
(1259, 'Web', '\n                            language_code_required ', '\n                            language code required '),
(1260, 'Web', 'would_you_like_to_use_tinify_settings_for_images?', 'Would you like to use tinify settings for images?'),
(1261, 'Web', 'would_you_like_to_use_tinify_for_image_compression?', 'Would you like to use tinify for image compression?'),
(1262, 'Web', 'would_you_like_to_use_tinify_for_create_image_thumbnails?', 'Would you like to use tinify for create image thumbnails?'),
(1263, 'Web', 'tinify_used_for', 'Tinify used for'),
(1264, 'Web', 'images_in_current_month', 'Images in current month'),
(1265, 'Web', 'is_popular_item', 'Is popular item'),
(1266, 'Web', 'is_it_popular_item', 'Is it popular item'),
(1267, 'Web', 'item_price', 'Item price'),
(1268, 'Web', 'item_price_required', 'Item price required'),
(1269, 'Web', 'my_addresses', 'My addresses'),
(1270, 'Web', 'offer_price', 'Offer price'),
(1271, 'Web', 'default', 'Default'),
(1272, 'Web', 'select_city', 'Select city'),
(1273, 'Web', 'offer_price_required', 'Offer price required'),
(1274, 'Web', 'address_added_successfully', 'Address added successfully'),
(1275, 'Web', 'payment_details', 'Payment details'),
(1276, 'Web', 'items_total', 'Items total'),
(1277, 'Web', 'delivery_charges', 'Delivery charges'),
(1278, 'Web', 'payment_mode', 'Payment mode'),
(1279, 'Web', 'delivery_details', 'Delivery details'),
(1280, 'Web', 'balance', 'Balance'),
(1281, 'Web', 'delete_address', 'Delete address'),
(1282, 'Web', 'default_address', 'Default address'),
(1283, 'Web', 'default_address_updated', 'Default address updated'),
(1284, 'Web', 'home_page_caption', 'Home page caption'),
(1285, 'Web', 'home_page_tagline', 'Home page tagline'),
(1286, 'Web', 'home_page_caption_required', 'Home page caption required'),
(1287, 'Web', 'home_page_image', 'Home page image'),
(1288, 'Web', 'home_page_image_file_is_not_valid', 'Home page image file is not valid'),
(1289, 'Web', 'special_food_items', 'Special food items'),
(1290, 'Web', 'we_have_the_glory_beginning_in_restaurant_business', 'We have the glory beginning in restaurant business'),
(1291, 'Web', 'default_address_set_successfully', 'Default address set successfully'),
(1292, 'Web', 'choose', 'Choose'),
(1293, 'Web', 'home_page_settings', 'Home page settings'),
(1294, 'Web', 'load_more', 'Load more'),
(1295, 'Web', 'available_for_android_and_ios', 'Available for android and ios'),
(1296, 'Web', 'order_faster_with_mobile_app', 'Order faster with mobile app'),
(1297, 'Web', 'clean_and_minimal_interface', 'Clean and minimal interface'),
(1298, 'Web', 'enjoy_the_native_app_experience', 'Enjoy the native app experience'),
(1299, 'Web', 'seo_settings', 'Seo settings'),
(1300, 'Web', 'meta_keyword', 'Meta keyword'),
(1301, 'Web', 'google_analytics', 'Google analytics'),
(1302, 'Web', 'your_cart', 'Your cart'),
(1303, 'Web', 'checkout', 'Checkout'),
(1304, 'Web', 'view', 'View'),
(1305, 'Web', 'customize', 'Customize'),
(1306, 'Web', 'select_delivery_address', 'Select delivery address'),
(1307, 'Web', 'we_are_the_world_class_food_providers_with_the_highest_quality_of_food_services', 'We are the world class food providers with the highest quality of food services'),
(1308, 'Web', 'deliver_to_this_address', 'Deliver to this address'),
(1309, 'Web', 'would_you_like_to_redeem_your_earned_points?', 'Would you like to redeem your earned points?'),
(1310, 'Web', 'you_have_20_points', 'You have 20 points'),
(1311, 'Web', 'you_have_', 'You have '),
(1312, 'Web', 'redeem', 'Redeem'),
(1313, 'Web', 'continue', 'Continue'),
(1314, 'Web', 'no_items_in_your_cart', 'No items in your cart'),
(1315, 'Web', 'please_provide_delivery_address', 'Please provide delivery address'),
(1316, 'Web', 'please_select_payment_method', 'Please select payment method'),
(1317, 'Web', 'details', 'Details'),
(1318, 'Web', 'are_you_sure_to_delete_address?', 'Are you sure to delete address?'),
(1319, 'Web', 'are_you_sure_to_make_this_address_as_your_default_address?', 'Are you sure to make this address as your default address?'),
(1320, 'Web', 'are_you_sure_to_change_this_address_as_your_default_address?', 'Are you sure to change this address as your default address?'),
(1321, 'Web', 'are_you_sure_to_set_this_address_as_your_default_address?', 'Are you sure to set this address as your default address?'),
(1322, 'Web', 'order_successful', 'Order successful'),
(1323, 'Web', 'your_order_no_is', 'Your order no is'),
(1324, 'Web', 'you_will_get', 'You will get'),
(1325, 'Web', 'points_if_this_order_is_delivered_to_you_successfully', 'Points if this order is delivered to you successfully'),
(1326, 'Web', 'admin_has_been_sent_an_order', 'Admin has been sent an order'),
(1327, 'Web', 'delivery_manager_has_been_updated_an_order_status_as_delivered', 'Delivery manager has been updated an order status as delivered'),
(1328, 'Web', 'please_select_valid_dates', 'Please select valid dates'),
(1329, 'Web', 'ordered_online', 'Ordered online'),
(1330, 'Web', 'dishes_served', 'Dishes served'),
(1331, 'Web', 'home_delivered', 'Home delivered'),
(1332, 'Web', 'search', 'Search'),
(1333, 'Web', 'no_cities_available', 'No cities available'),
(1334, 'Web', 'no_popular_items_available', 'No popular items available'),
(1335, 'Web', 'documentation', 'Documentation'),
(1336, 'Web', 'For Android', 'For Android'),
(1337, 'Web', 'Visit Playstore Store', 'Visit Playstore Store'),
(1338, 'Web', 'For IOS', 'For IOS'),
(1339, 'Web', 'Visit Apple Store', 'Visit Apple Store'),
(1340, 'Web', 'Fresh food', 'Fresh food'),
(1341, 'Web', 'experienced chefs', 'Experienced chefs'),
(1342, 'Web', 'CI_VERSION', 'CI VERSION'),
(1343, 'Web', 'contact_map', 'Contact map');

-- --------------------------------------------------------

--
-- Table structure for table `cr_language_codes`
--

CREATE TABLE `cr_language_codes` (
  `code_id` int(11) NOT NULL,
  `language` varchar(20) CHARACTER SET utf8 NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_language_codes`
--

INSERT INTO `cr_language_codes` (`code_id`, `language`, `code`) VALUES
(1, 'english', 'en');

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
(1, 'No', 'Crunchy', 'Points', 'You earned {points} points', '20', '1', '2.00', '1', '2.00', 'No', '20', '0', '30', '20', '20', '30', 'No');

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

-- --------------------------------------------------------

--
-- Table structure for table `cr_options`
--

CREATE TABLE `cr_options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'production id', 'sandobx id', 'Hungry Duck', 'merchant url', 'merchant user agreement url', 'USD', 'sandbox', 'your paypal account email', 'Active');

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
(1, 'No', 20, 10);

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

-- --------------------------------------------------------

--
-- Table structure for table `cr_sessions`
--

CREATE TABLE `cr_sessions` (
  `id` varchar(128) CHARACTER SET latin1 NOT NULL,
  `ip_address` varchar(45) CHARACTER SET latin1 NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'Menorah Restaurant', 'RESTAURANT', 'Menorah Restaurant', 'Hyderabad', 'Telangana', 'India', '500081', '1112223336', '123456789', '123456789', 'contact@gmail.com', 'US', 'Asia/Kolkata', '09:00', '23:45', 'english', 'Digital Samaritan', '© Menorah Restaurant 2019. All Rights Reserved.', 'site_logo.png', 'second_site_logo.png', 'fevicon.ico', 'USD', '$', '111', '17.456294', '78.367759', '', '', '', '', 'one signal server api key', 'one signal app id', 'No', 'No', 'orange', 'd-m-Y', 'online,cash_on_delivery,card_on_delivery', 'pusher app id', 'pusher secret', 'KEY', 'Yes', 'facebook app id', 'facebook app secret', 'google client id', 'google client secret', 'home_page_img.jpg', 'Best Quality and Tasty Food', '35 min average delivery time', '<div class=\"mapouter\"><div class=\"gmap_canvas\"><iframe width=\"1004\" height=\"500\" id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=Conquerors%20Software%20Technologies&t=&z=13&ie=UTF8&iwloc=&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\"></iframe><a href=\"https://www.pureblack.de\">pure black</a></div><style>.mapouter{text-align:right;height:500px;width:1004px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:1004px;}</style></div>');

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
(125, 1, 'User Name', 'User_Name', 'Yes', 'Cliakatell username', '2016-07-25 11:20:38', '2017-10-25 04:31:41'),
(126, 1, 'Password', 'Password', 'Yes', 'password', '2016-07-25 12:29:11', '2017-10-25 04:31:42'),
(127, 1, 'From No', 'From_No', 'Yes', '1234567895', '2016-07-25 12:29:47', '2017-10-25 04:31:42'),
(128, 1, 'API Id', 'API_Id', 'Yes', 'Cliakatell app id', '2016-07-25 12:30:10', '2017-10-25 04:31:42'),
(129, 2, 'API KEY', 'API_KEY', 'Yes', 'Nexmo API Key', '2016-07-26 05:51:28', '2017-10-25 04:32:02'),
(130, 2, 'API SECRET', 'API_SECRET', 'Yes', 'Nexmo API Secret', '2016-07-26 06:00:50', '2017-10-25 04:32:02'),
(131, 3, 'AUTH ID', 'AUTH_ID', 'Yes', 'Plivo auth id', '2016-07-26 09:26:52', '2017-10-25 04:32:25'),
(132, 3, 'AUTH TOKEN', 'AUTH_TOKEN', 'Yes', 'Plivo auth token', '2016-07-26 09:27:16', '2017-10-25 04:32:25'),
(133, 3, 'API VERSION', 'API_VERSION', 'Yes', 'v1', '2016-07-26 09:27:49', '2017-10-25 04:32:26'),
(134, 3, 'END POINT', 'END_POINT', 'Yes', 'https://api.plivo.com', '2016-07-26 09:28:14', '2017-10-25 04:32:26'),
(135, 4, 'Working Key', 'working_key', 'Yes', 'Solutionsinfini key', '2016-07-26 09:29:30', '2017-10-25 04:32:42'),
(136, 4, 'Sender Id', 'sender_id', 'Yes', 'Solutionsinfini sender id', '2016-07-26 09:29:53', '2017-10-25 04:32:42'),
(137, 4, 'API URL', 'api', 'Yes', 'http://alerts.solutionsinfini.com/', '2016-07-26 09:30:15', '2017-10-25 04:32:42'),
(138, 5, 'Account SID', 'account_sid', 'Yes', 'Twilio account SID', '2016-07-26 09:31:21', '2017-10-25 04:33:07'),
(139, 5, 'Auth Token', 'auth_token', 'Yes', 'Twilio auth token', '2016-07-26 09:31:54', '2017-10-25 04:33:07'),
(140, 5, 'API Version', 'api_version', 'Yes', '2010-04-01', '2016-07-26 09:32:20', '2017-10-25 04:33:07'),
(141, 5, 'Twilio Phone Number', 'Twilio_Phone_Number', 'Yes', 'Twilio phone number', '2016-07-26 09:32:57', '2017-10-25 04:33:07'),
(142, 7, 'AUTH', 'AUTH', 'Yes', 'MSG91 auth', '2016-11-17 08:03:11', '2017-10-25 04:33:21'),
(143, 7, 'SENDER_ID', 'SENDER_ID', 'Yes', 'MSG91 sender id', '2016-11-17 08:03:11', '2017-10-25 04:33:21');

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
(1, '127.0.0.1', 'Admin istrator', '$2y$08$eDDNaMEiW94nqH4Qw/K4puYNvibPO8OaIhUJWewbZWMJBHOHHtIri', '', 'admin@admin.com', NULL, 'B0whGSIVG-1Tr4MlqANqk.dcdc780ffa99d0633c', 1498553784, NULL, 1268889823, 1549515276, 1, 'Admin', 'istrator', 'user_1.png', '1234567890', '2009-12-24', '', '123456', '', '', '', NULL, NULL, '', 0, NULL, NULL, NULL, '2016-06-07 00:00:00', 'No', NULL),
(99, '::1', 'User Test', '$2y$08$eDDNaMEiW94nqH4Qw/K4puYNvibPO8OaIhUJWewbZWMJBHOHHtIri', NULL, 'customer@customer.com', '9fc5fbf9832471926569c7ec39b2ca756073ecef', NULL, NULL, NULL, 1508936167, 1549108096, 1, 'User', 'Test', NULL, '1234567895', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', '4wl23auMS4', 0, NULL, NULL, '2017-10-25 04:56:07', NULL, 'No', NULL),
(100, '::1', 'Kitchen Manager', '$2y$08$eDDNaMEiW94nqH4Qw/K4puYNvibPO8OaIhUJWewbZWMJBHOHHtIri', NULL, 'kitchenmanager@gmail.com', '5637fbba7abc2454e4fe3ae312fc3d5b15d8c887', NULL, NULL, NULL, 1508936262, 1549514192, 1, 'Kitchen', 'Manager', NULL, '1234567897', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-25 04:57:42', NULL, 'No', NULL),
(101, '::1', 'Delivery Manager', '$2y$08$eDDNaMEiW94nqH4Qw/K4puYNvibPO8OaIhUJWewbZWMJBHOHHtIri', NULL, 'deliverymanager@gmail.com', '007ab7a2c34c82699cff9bb64877179358d8b98a', NULL, NULL, NULL, 1508936335, 1549515588, 1, 'Delivery', 'Manager', NULL, '1234567896', NULL, NULL, NULL, NULL, NULL, NULL, 'portal', 'normal', NULL, 0, NULL, NULL, '2017-10-25 04:58:55', NULL, 'No', NULL);

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
(99, 99, 2),
(100, 100, 3),
(101, 101, 4);

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
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_card_images`
--
ALTER TABLE `cr_card_images`
  MODIFY `card_image_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_cities`
--
ALTER TABLE `cr_cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_country`
--
ALTER TABLE `cr_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `cr_email_settings`
--
ALTER TABLE `cr_email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_email_templates`
--
ALTER TABLE `cr_email_templates`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `cr_faqs`
--
ALTER TABLE `cr_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_faq_categories`
--
ALTER TABLE `cr_faq_categories`
  MODIFY `fc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_groups`
--
ALTER TABLE `cr_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cr_items`
--
ALTER TABLE `cr_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_item_addons`
--
ALTER TABLE `cr_item_addons`
  MODIFY `item_addon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_item_options`
--
ALTER TABLE `cr_item_options`
  MODIFY `item_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_item_types`
--
ALTER TABLE `cr_item_types`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_languagewords`
--
ALTER TABLE `cr_languagewords`
  MODIFY `lang_id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1344;
--
-- AUTO_INCREMENT for table `cr_language_codes`
--
ALTER TABLE `cr_language_codes`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `cr_login_attempts`
--
ALTER TABLE `cr_login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_loyality_points`
--
ALTER TABLE `cr_loyality_points`
  MODIFY `lp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_menu`
--
ALTER TABLE `cr_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_offers`
--
ALTER TABLE `cr_offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_offer_products`
--
ALTER TABLE `cr_offer_products`
  MODIFY `offer_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_options`
--
ALTER TABLE `cr_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_orders`
--
ALTER TABLE `cr_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_order_addons`
--
ALTER TABLE `cr_order_addons`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_order_offers`
--
ALTER TABLE `cr_order_offers`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_order_offer_products`
--
ALTER TABLE `cr_order_offer_products`
  MODIFY `order_offer_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_order_products`
--
ALTER TABLE `cr_order_products`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_seo_settings`
--
ALTER TABLE `cr_seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cr_service_provide_locations`
--
ALTER TABLE `cr_service_provide_locations`
  MODIFY `service_provide_location_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `cr_users_groups`
--
ALTER TABLE `cr_users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `cr_user_address`
--
ALTER TABLE `cr_user_address`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cr_user_points`
--
ALTER TABLE `cr_user_points`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
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
