CREATE TABLE `status` (
  `fk_Name` varchar(45) NOT NULL,
  `idAprtmentInformation` int(11) NOT NULL,
  `Aprtment Unit number` int(11) NOT NULL,
  `Apartnumber # bedrooms` int(11) NOT NULL,
  PRIMARY KEY (`idAprtmentInformation`,`fk_Name`),
  KEY `fk_idAprtmentInformation_idx` (`idAprtmentInformation`),
  KEY `fk_name_idx` (`fk_Name`),
  CONSTRAINT `fk_idAprtmentInformation` FOREIGN KEY (`idAprtmentInformation`) REFERENCES `aprtmentinformation` (`idAprtmentInformation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_name` FOREIGN KEY (`fk_Name`) REFERENCES `users` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `aprtmentinformation` (
  `idAprtmentInformation` int(11) NOT NULL,
  `AprtmentUnitAddress` varchar(45) NOT NULL,
  `Aprtment Unit number` int(11) NOT NULL,
  `Apartnumber # bedrooms` int(11) NOT NULL,
  `Apartment rent price` varchar(90) NOT NULL,
  PRIMARY KEY (`idAprtmentInformation`),
  UNIQUE KEY `idAprtmentInformation_UNIQUE` (`idAprtmentInformation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the aprtment information for store!  ';

CREATE TABLE `users` (
  `Name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address1` varchar(45) NOT NULL,
  `Address2` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `PhoneNumber_UNIQUE` (`PhoneNumber`),
  KEY `fk_name_idx` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Here is the log in information for the users';
CREATE DATABASE `project_test` /*!40100 DEFAULT CHARACTER SET latin1 */;
