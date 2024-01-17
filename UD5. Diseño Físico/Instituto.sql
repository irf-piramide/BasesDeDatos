CREATE TABLE Departamento (
codigo int (3),
nombre varchar (50) NOT NULL,
CONSTRAINT pk_Departamento PRIMARY KEY(codigo)
);

CREATE TABLE Ciclo (
codigo int (3),
nombre varchar (50) NOT NULL,
horas int (4) NOT NULL,
CONSTRAINT pk_Ciclo PRIMARY KEY(codigo)
);

CREATE TABLE Modulo (
nombre varchar (50),
horas int (3) NOT NULL,
CONSTRAINT pk_Modulo PRIMARY KEY(nombre)
);

CREATE TABLE Docente (
dni int (8),
nombre varchar (50) NOT NULL,
email varchar (50) NOT NULL,
CONSTRAINT pk_Docente PRIMARY KEY(dni),
CONSTRAINT uk_Docente UNIQUE(email)
);

CREATE TABLE Departamento_Ciclo (
id int (9) AUTO_INCREMENT,
codigoDepartamento int (3) NOT NULL,
codigoCiclo int (3) NOT NULL,
CONSTRAINT pk_id PRIMARY KEY(id),
CONSTRAINT fk_Departamento_Ciclo_Departamento FOREIGN KEY (codigoDeparmento) REFERENCES Departamento (codigo) ON DELETE CASCADE,
CONSTRAINT fk_Departamento_Ciclo_Ciclo FOREIGN KEY (codigoCiclo) REFERENCES Ciclo (codigo) ON DELETE CASCADE
);

CREATE TABLE Ciclo_Modulo (
id int (9) AUTO_INCREMENT,
codigoCiclo int (3),
nombreModulo varchar (50),
CONSTRAINT pk_id PRIMARY KEY (id),
CONSTRAINT fk_Ciclo_Modulo_Ciclo FOREIGN KEY (codigoCiclo) REFERENCES Ciclo (codigo) ON DELETE CASCADE,
CONSTRAINT Fk_Ciclo_Modulo_Modulo FOREIGN KEY (nombreModulo) REFERENCES Modulo (nombre) ON DELETE CASCADE
);

CREATE TABLE Modulo_Docente (
id int (9) AUTO_INCREMENT,
nombreModulo varchar (50),
dniDocente int (8),
CONSTRAINT pk_id PRIMARY KEY (id),
CONSTRAINT fk_Modulo_Docente_Modulo FOREIGN KEY (nombreModulo) REFERENCES Modulo (nombre) ON DELETE CASCADE,
CONSTRAINT fk_Modulo_Docente_Docente FOREIGN KEY (dniDocente) REFERENCES Docente (dni) ON DELETE CASCADE
);
