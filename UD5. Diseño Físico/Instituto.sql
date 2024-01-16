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
CONSTRAINT pk_Modulo PRIMARY KEY(Nombre)
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
CONSTRAINT fk_Departamento_Ciclo_Ciclo FOREIGN KEY (codigoCiclo) REFERENCES Ciclo (codigo) ON DELETE CASCADE,
);

CREATE TABLE Ciclo_Modulo (
id int (9) AUTO_INCREMENT,
codigoCiclo int (3)
);
