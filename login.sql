-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema phpmyadmin
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema tabelas
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema clinica_particular
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema clinica_particular
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `clinica_particular` ;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `clinica_particular`.`login`
-- -----------------------------------------------------
-- Ver:
-- https://www.lostmypass.com/blog/db-passwords/
-- https://www.maketecheasier.com/what-is-password-hashing/
-- https://stackoverflow.com/questions/184112/what-is-the-optimal-length-for-user-password-salt
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`login` (
  `idlogin` INT NOT NULL AUTO_INCREMENT,
  `nomeUsuario` VARCHAR(45) NULL,
  `senhaSHA256Hash` CHAR(64) NULL,
  `senhaSalt` CHAR(64) NULL,
  PRIMARY KEY (`idlogin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `clinica_particular`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medico` (
  `idmedico` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `CPF` VARCHAR(17) NULL,
  `login_idlogin` INT NOT NULL,
  PRIMARY KEY (`idmedico`),
  INDEX `fk_medico_login_idx` (`login_idlogin` ASC) VISIBLE,
  CONSTRAINT `fk_medico_login`
    FOREIGN KEY (`login_idlogin`)
    REFERENCES `clinica_particular`.`login` (`idlogin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
