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

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `clinica_particular` ;

-- -----------------------------------------------------
-- Table `clinica_particular`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`medico` (
  `idmedico` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `CPF` VARCHAR(17) NULL,
  PRIMARY KEY (`idmedico`))
ENGINE = InnoDB;

USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`historico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`historico` (
  `idhistorico` INT(11) NOT NULL AUTO_INCREMENT,
  `permaneceMuitoSentado` TINYINT(4) NULL DEFAULT NULL,
  `temAntecedentesCirurgicos` TINYINT(4) NULL DEFAULT NULL,
  `antecedentesCirurgicos` VARCHAR(1024) NULL DEFAULT NULL,
  `fezTratamentoEsteticoAnteriormente` TINYINT(4) NULL DEFAULT NULL,
  `tratamentoEsteticoAnterior` VARCHAR(1024) NULL DEFAULT NULL,
  `temAtecendentesAlergicos` TINYINT(4) NULL DEFAULT NULL,
  `atecendentesAlergicos` VARCHAR(1024) NULL DEFAULT NULL,
  `praticaAtividadeFisica` TINYINT(4) NULL DEFAULT NULL,
  `atividadesFisicas` VARCHAR(1024) NULL DEFAULT NULL,
  `fumante` TINYINT(4) NULL DEFAULT NULL,
  `temAlimentacaoBalanceada` TINYINT(4) NULL DEFAULT NULL,
  `alimentacao` VARCHAR(1024) NULL DEFAULT NULL,
  `bebeLiquidosComFrequencia` TINYINT(4) NULL DEFAULT NULL,
  `liquidos` VARCHAR(1024) NULL DEFAULT NULL,
  `gestante` TINYINT(4) NULL DEFAULT NULL,
  `temFilhos` TINYINT(4) NULL DEFAULT NULL,
  `numeroFilhos` INT(11) NULL DEFAULT NULL,
  `algumProblemaOrtopédico` TINYINT(4) NULL DEFAULT NULL,
  `problemaOrtpédico` VARCHAR(1024) NULL DEFAULT NULL,
  `algumTratamentoMedico` TINYINT(4) NULL DEFAULT NULL,
  `tratamentoMedico` VARCHAR(1024) NULL DEFAULT NULL,
  `usouAcidosNaPele` TINYINT(4) NULL DEFAULT NULL,
  `acidosUsados` VARCHAR(1024) NULL DEFAULT NULL,
  `algumTratamentoOrtomecular` TINYINT(4) NULL DEFAULT NULL,
  `tratamentoOrtomecular` VARCHAR(1024) NULL DEFAULT NULL,
  `temCuidadosDiarios` TINYINT(4) NULL DEFAULT NULL,
  `cuidadosDiarios` VARCHAR(1024) NULL DEFAULT NULL,
  `portadorDeMarcapasso` TINYINT(4) NULL DEFAULT NULL,
  `marcapasso` VARCHAR(1024) NULL DEFAULT NULL,
  `presencaeMetais` TINYINT(4) NULL DEFAULT NULL,
  `metais` VARCHAR(1024) NULL DEFAULT NULL,
  `temAntecedentesOncologicos` TINYINT(4) NULL DEFAULT NULL,
  `antecedentesOncologicos` VARCHAR(1024) NULL DEFAULT NULL,
  `temCicloMestrualRegular` TINYINT(4) NULL DEFAULT NULL,
  `observacoesCicloMestrual` VARCHAR(1024) NULL DEFAULT NULL,
  `usaAnticoncepcional` TINYINT(4) NULL DEFAULT NULL,
  `metodoAnticoncepcional` VARCHAR(1024) NULL DEFAULT NULL,
  `temVarizes` TINYINT(4) NULL DEFAULT NULL,
  `grauVarizes` VARCHAR(1024) NULL DEFAULT NULL,
  `temLesoes` TINYINT(4) NULL DEFAULT NULL,
  `tipoDeLesoes` VARCHAR(1024) NULL DEFAULT NULL,
  `hipertensao` TINYINT(4) NULL DEFAULT NULL,
  `epilepsia` TINYINT(4) NULL DEFAULT NULL,
  `temEpilepsia` VARCHAR(1024) NULL DEFAULT NULL,
  `hipotensao` TINYINT(4) NULL DEFAULT NULL,
  `diabetes` TINYINT(4) NULL DEFAULT NULL,
  PRIMARY KEY (`idhistorico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`anamneseCorporal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`anamneseCorporal` (
  `idanamneseCorporal` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `endereco` VARCHAR(256) NULL DEFAULT NULL,
  `sexo` CHAR(1) NULL DEFAULT NULL,
  `bairro` VARCHAR(45) NULL DEFAULT NULL,
  `dataCadastro` DATE NULL DEFAULT NULL,
  `dataNascimento` DATE NULL DEFAULT NULL,
  `foneRes` VARCHAR(45) NULL DEFAULT NULL,
  `foneComercial` VARCHAR(45) NULL DEFAULT NULL,
  `CEP` VARCHAR(9) NULL DEFAULT NULL,
  `etnia` VARCHAR(45) NULL DEFAULT NULL,
  `profissao` VARCHAR(45) NULL DEFAULT NULL,
  `indicacao` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `motivoDaVisita` VARCHAR(128) NULL DEFAULT NULL,
  `nomeEmergencia` VARCHAR(45) NULL DEFAULT NULL,
  `telefoneEmergencia` VARCHAR(45) NULL DEFAULT NULL,
  `nomeMedico` VARCHAR(45) NULL DEFAULT NULL,
  `telefoneMedico` VARCHAR(45) NULL DEFAULT NULL,
  `convenioMedico` VARCHAR(45) NULL DEFAULT NULL,
  `carteirinhaConvenio` VARCHAR(45) NULL DEFAULT NULL,
  `hospital` VARCHAR(45) NULL DEFAULT NULL,
  `medico_idmedico1` INT NOT NULL,
  `historico_idhistorico` INT(11) NOT NULL,
  PRIMARY KEY (`idanamneseCorporal`),
  INDEX `fk_anamneseCorporal_medico1_idx` (`medico_idmedico1` ASC) VISIBLE,
  INDEX `fk_anamneseCorporal_historico1_idx` (`historico_idhistorico` ASC) VISIBLE,
  CONSTRAINT `fk_anamneseCorporal_medico1`
    FOREIGN KEY (`medico_idmedico1`)
    REFERENCES `clinica_particular`.`medico` (`idmedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_anamneseCorporal_historico1`
    FOREIGN KEY (`historico_idhistorico`)
    REFERENCES `mydb`.`historico` (`idhistorico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`anamneseEnfermagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`anamneseEnfermagem` (
  `idanamneseEnfermagem` INT(11) NOT NULL AUTO_INCREMENT,
  `anamneseCorporal_idanamneseCorporal` INT(11) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  `sexo` CHAR(1) NULL DEFAULT NULL,
  `raca` VARCHAR(45) NULL DEFAULT NULL,
  `estadoCivil` VARCHAR(45) NULL DEFAULT NULL,
  `medico_idmedico` INT NOT NULL,
  `enfermeira` VARCHAR(45) NULL DEFAULT NULL,
  `leito` INT(11) NULL DEFAULT NULL,
  `queixaPrincipal` VARCHAR(1024) NULL DEFAULT NULL,
  `alergias` VARCHAR(1024) NULL DEFAULT NULL,
  `dieta` VARCHAR(1024) NULL DEFAULT NULL,
  `altura` FLOAT NULL DEFAULT NULL,
  `peso` FLOAT NULL DEFAULT NULL,
  `pressaoArterial` VARCHAR(45) NULL DEFAULT NULL,
  `pulsos` INT(11) NULL DEFAULT NULL,
  `temperatura` FLOAT NULL DEFAULT NULL,
  `nomeEnteQuerido` VARCHAR(45) NULL DEFAULT NULL,
  `telefoneEnteQuerido` VARCHAR(45) NULL DEFAULT NULL,
  `cidade` VARCHAR(45) NULL DEFAULT NULL,
  `diagnostico` VARCHAR(1024) NULL DEFAULT NULL,
  `condicoesDeAdmissao` VARCHAR(256) NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  `hora` TIME NULL DEFAULT NULL,
  `acompanhante` VARCHAR(45) NULL DEFAULT NULL,
  `viaDeAdmissao` VARCHAR(45) NULL DEFAULT NULL,
  `familiaDeOrigem` VARCHAR(45) NULL DEFAULT NULL,
  `familiaAtual` VARCHAR(45) NULL DEFAULT NULL,
  `dinamicaFamiliar` VARCHAR(256) NULL DEFAULT NULL,
  `historiaMedicaCliente` VARCHAR(1024) NULL DEFAULT NULL,
  `historiaMembrosFamilia` VARCHAR(1024) NULL DEFAULT NULL,
  `influenciasGeneticas` VARCHAR(1024) NULL DEFAULT NULL,
  `fatoresAmbientais` VARCHAR(1024) NULL DEFAULT NULL,
  `crencaPraticasSaude` VARCHAR(1024) NULL DEFAULT NULL,
  `crencaPraticasReligiao` VARCHAR(1024) NULL DEFAULT NULL,
  PRIMARY KEY (`idanamneseEnfermagem`),
  INDEX `fk_anamneseEnfermagem_anamneseCorporal1_idx` (`anamneseCorporal_idanamneseCorporal` ASC) VISIBLE,
  INDEX `fk_anamneseEnfermagem_medico1_idx` (`medico_idmedico` ASC) VISIBLE,
  CONSTRAINT `fk_anamneseEnfermagem_anamneseCorporal1`
    FOREIGN KEY (`anamneseCorporal_idanamneseCorporal`)
    REFERENCES `mydb`.`anamneseCorporal` (`idanamneseCorporal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_anamneseEnfermagem_medico1`
    FOREIGN KEY (`medico_idmedico`)
    REFERENCES `clinica_particular`.`medico` (`idmedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
