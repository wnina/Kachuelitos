-- MySQL Script generated by MySQL Workbench
-- 06/26/14 08:20:09
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Ubigeo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Ubigeo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Ubigeo` (
  `idUbigeo` INT NOT NULL,
  `DepartamentoUbigeo` VARCHAR(45) NULL,
  `ProvinciaUbigeo` VARCHAR(45) NULL,
  `DistritoUbigeo` VARCHAR(45) NULL,
  PRIMARY KEY (`idUbigeo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `DNIUser` INT NOT NULL AUTO_INCREMENT,
  `NombreUser` VARCHAR(100) NULL,
  `ApellidoUser` VARCHAR(100) NULL,
  `ContrasenhaUser` VARCHAR(45) NULL,
  `CorreoUser` VARCHAR(45) NULL,
  `Ubigeo_idUbigeo1` INT NOT NULL,
  `TelefonoUser` VARCHAR(9) NULL,
  `DireccionUser` VARCHAR(45) NULL,
  `Trabajador` TINYINT(1) NULL,
  PRIMARY KEY (`DNIUser`),
  INDEX `fk_User_Ubigeo2_idx` (`Ubigeo_idUbigeo1` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trabajador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Trabajador` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Trabajador` (
  `Trabajador_DNIUser` INT NOT NULL,
  `ReputacionTrabajador` FLOAT NULL,
  PRIMARY KEY (`Trabajador_DNIUser`),
  INDEX `fk_Trabajador_User1_idx` (`Trabajador_DNIUser` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Servicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Servicio` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Servicio` (
  `idServicio` INT NOT NULL,
  `DescripcionServicio` VARCHAR(45) NULL,
  `DetalleServicio` VARCHAR(45) NULL,
  PRIMARY KEY (`idServicio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Servicio_has_Trabajador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Servicio_has_Trabajador` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Servicio_has_Trabajador` (
  `Servicio_idServicio` INT NOT NULL,
  `Trabajador_User_DNIUser` INT NOT NULL,
  PRIMARY KEY (`Servicio_idServicio`, `Trabajador_User_DNIUser`),
  INDEX `fk_Servicio_has_Trabajador_Trabajador1_idx` (`Trabajador_User_DNIUser` ASC),
  INDEX `fk_Servicio_has_Trabajador_Servicio1_idx` (`Servicio_idServicio` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Trabajo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Trabajo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Trabajo` (
  `idTrabajo` INT NOT NULL,
  `User_DNIUser` INT NOT NULL,
  `CalificacionTrabajo` INT NULL,
  `DuracionTrabajo` INT NULL,
  `idServicio` INT NOT NULL,
  `idTrabajador` INT NOT NULL,
  PRIMARY KEY (`idTrabajo`, `User_DNIUser`, `idServicio`, `idTrabajador`),
  INDEX `fk_Kachuelito_User1_idx` (`User_DNIUser` ASC),
  INDEX `fk_Trabajo_Servicio_has_Trabajador1_idx` (`idServicio` ASC, `idTrabajador` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comentario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Comentario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Comentario` (
  `idTrabajo` INT NOT NULL,
  `DNIUser` INT NOT NULL,
  `idTrabajador` INT NOT NULL,
  `DescripcionComentario` VARCHAR(45) NULL,
  `DetalleComentario` VARCHAR(145) NULL,
  PRIMARY KEY (`idTrabajo`, `DNIUser`, `idTrabajador`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
