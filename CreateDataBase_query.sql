CREATE DATABASE Farol_do_Saber;


-- -----------------------------------------------------
-- ------------------------------------------------------
-- Universidade do Minho
-- Licenciatura em Engenharia Informática
-- Unidade Curricular de Bases de Dados
--
-- Caso de Estudo: O farol do Saber
-- Criação do Esquema Físico
-- Maio/2023
-- ------------------------------------------------------
-- ------------------------------------------------------
-- -----------------------------------------------------
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema Farol_do_Saber
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Farol_do_Saber` DEFAULT CHARACTER SET utf8 ;
USE `Farol_do_Saber` ;

-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Administrador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Administrador` (
  `id_utilizador` INT NOT NULL,
  `nome` VARCHAR(75) NOT NULL,
  `email` VARCHAR(150) NULL,
  `numero_telefone` VARCHAR(50) NULL,
  PRIMARY KEY (`id_utilizador`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Disciplina` (
  `id` INT NOT NULL,
  `turno` INT NULL,
  `nome` VARCHAR(75) NOT NULL,
  `dia_lecionado` VARCHAR(150) NULL,
  `hora_inicio` TIME NULL,
  `hora_termino` TIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
  

-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Professor` (
  `id` INT NOT NULL,
  `email` VARCHAR(150) NULL,
  `numero_telefone` VARCHAR(50) NULL,
  `nome` VARCHAR(75) NOT NULL,
  `rua` VARCHAR(100) NULL,
  `numero_porta` VARCHAR(75) NULL,
  `localidade` VARCHAR(75) NULL,
  `preco_aula` INT NOT NULL,
  `Disciplina_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Professor_Disciplina1_idx` (`Disciplina_id` ASC),
  CONSTRAINT `fk_Professor_Disciplina1`
    FOREIGN KEY (`Disciplina_id`)
    REFERENCES `Farol_do_Saber`.`Disciplina` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Aluno` (
  `id` INT NOT NULL,
  `nome` VARCHAR(75) NOT NULL,
  `endereco` VARCHAR(75) NULL,
  `data_nascimento` DATE NULL,
  `faltas` INT NULL,
  `presencas_espectaveis` INT NULL,
  `email` VARCHAR(150) NULL,
  `numero_telefone` VARCHAR(50) NULL,
  `ano_escolar` INT NOT NULL,
  `nif` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Pagamento` (
  `id` INT NOT NULL,
  `estado_pagamento` VARCHAR(45) NOT NULL,
  `valor` INT NOT NULL,
  `fatura` VARCHAR(220) NULL,
  `data_pagamento` DATE NULL,
  `metodo_pagamento` VARCHAR(45) NULL,
  `Aluno_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Pagamento_Aluno1_idx` (`Aluno_id` ASC),
  CONSTRAINT `fk_Pagamento_Aluno1`
    FOREIGN KEY (`Aluno_id`)
    REFERENCES `Farol_do_Saber`.`Aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

----------- ALTER TABLE `Farol_do_Saber`.`Pagamento`
----------------------- MODIFY COLUMN `estado_pagamento` TINYINT(4) NOT NULL;

-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Emprega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Emprega` (
  `Administrador_id_utilizador` INT NOT NULL,
  `Professor_id` INT NOT NULL,
  PRIMARY KEY (`Administrador_id_utilizador`, `Professor_id`),
  INDEX `fk_Administrador_has_Professor_Professor1_idx` (`Professor_id` ASC),
  INDEX `fk_Administrador_has_Professor_Administrador_idx` (`Administrador_id_utilizador` ASC),
  CONSTRAINT `fk_Administrador_has_Professor_Administrador`
    FOREIGN KEY (`Administrador_id_utilizador`)
    REFERENCES `Farol_do_Saber`.`Administrador` (`id_utilizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Administrador_has_Professor_Professor1`
    FOREIGN KEY (`Professor_id`)
    REFERENCES `Farol_do_Saber`.`Professor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Explica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Explica` (
  `Professor_id` INT NOT NULL,
  `Aluno_id` INT NOT NULL,
  PRIMARY KEY (`Professor_id`, `Aluno_id`),
  INDEX `fk_Professor_has_Aluno_Aluno1_idx` (`Aluno_id` ASC),
  INDEX `fk_Professor_has_Aluno_Professor1_idx` (`Professor_id` ASC),
  CONSTRAINT `fk_Professor_has_Aluno_Professor1`
    FOREIGN KEY (`Professor_id`)
    REFERENCES `Farol_do_Saber`.`Professor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professor_has_Aluno_Aluno1`
    FOREIGN KEY (`Aluno_id`)
    REFERENCES `Farol_do_Saber`.`Aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `Farol_do_Saber`.`Gera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Farol_do_Saber`.`Gera` (
  `Administrador_id_utilizador` INT NOT NULL,
  `Pagamento_id` INT NOT NULL,
  PRIMARY KEY (`Administrador_id_utilizador`, `Pagamento_id`),
  INDEX `fk_Administrador_has_Pagamento_Pagamento1_idx` (`Pagamento_id` ASC),
  INDEX `fk_Administrador_has_Pagamento_Administrador1_idx` (`Administrador_id_utilizador` ASC),
  CONSTRAINT `fk_Administrador_has_Pagamento_Administrador1`
    FOREIGN KEY (`Administrador_id_utilizador`)
    REFERENCES `Farol_do_Saber`.`Administrador` (`id_utilizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Administrador_has_Pagamento_Pagamento1`
    FOREIGN KEY (`Pagamento_id`)
    REFERENCES `Farol_do_Saber`.`Pagamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- ------------------------------------------------------
-- <fim>
-- ------------------------------------------------------

SELECT * FROM Pagamento;


USE Farol_do_Saber;
SHOW TABLES;