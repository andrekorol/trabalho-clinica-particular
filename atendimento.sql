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
-- Table `clinica_particular`.`atendimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`atendimento` (
  `idatendimento` INT NOT NULL AUTO_INCREMENT,
  `medico_idmedico` INT(11) NOT NULL,
  `data` DATE NULL,
  `horario` TIME NULL,
  PRIMARY KEY (`idatendimento`),
  INDEX `fk_atendimento_medico1_idx` (`medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `fk_atendimento_medico1`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `mydb`.`medico` (`idmedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
