CREATE DATABASE `project_test` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `aprtmentinformation`
(
    `idAprtmentInformation`    int NOT NULL,
    `AprtmentUnitAddress`      varchar(45)  DEFAULT NULL,
    `AprtmentUnitInformation`  varchar(100) DEFAULT NULL,
    `ApartnumberTotalbedrooms` varchar(85)  DEFAULT NULL,
    `Apartmentrentprice`       varchar(45)  DEFAULT NULL,
    PRIMARY KEY (`idAprtmentInformation`),
    UNIQUE KEY `idAprtmentInformation_UNIQUE` (`idAprtmentInformation`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
CREATE TABLE `status`
(
    `Name`                   varchar(45) NOT NULL,
    `idAprtmentInformation`  int         NOT NULL,
    `AprtmentUniInformation` varchar(45) DEFAULT NULL,
    `ApartNumberBedrooms`    varchar(45) DEFAULT NULL,
    PRIMARY KEY (`Name`, `idAprtmentInformation`),
    KEY `idAprtmentInformation-fk_idx` (`idAprtmentInformation`),
    CONSTRAINT `idAprtmentInformation-fk` FOREIGN KEY (`idAprtmentInformation`) REFERENCES `aprtmentinformation` (`idAprtmentInformation`),
    CONSTRAINT `Name-fk` FOREIGN KEY (`Name`) REFERENCES `users` (`Name`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
CREATE TABLE `users`
(
    `Name`     varchar(45) NOT NULL,
    `password` varchar(45) NOT NULL,
    `Email`    varchar(45) NOT NULL,
    `Address1` varchar(45) NOT NULL,
    `Address2` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`Name`),
    UNIQUE KEY `Email_UNIQUE` (`Email`),
    UNIQUE KEY `Address1_UNIQUE` (`Address1`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
