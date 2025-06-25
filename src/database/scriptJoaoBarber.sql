create database joaoBarber;
use joaoBarber;
-- Joao pode ter varias barbearias, com varios barbeiros e varios clientes

-- cada cliente pode cortar com barbeiros diferentes

create table barbearias(
id int primary key auto_increment,
nomeBarbearia varchar(50),
endereco varchar(70)
);
INSERT INTO barbearias(nomeBarbearia, endereco)
VALUES
("João Barber's", "av. Paulista 596");


create table barbeiros(
id int primary key auto_increment,
nome varchar(100),
idade int,
fkBarbearia int,
foreign key (fkBarbearia) references barbearias(id)
);

INSERT INTO barbeiros(nome, idade, fkBarbearia)
VALUES
("João O Barbeiro", 27, 1),
("Juan", 19, 1);


create table clientes(
id int primary key auto_increment,
nome varchar(100),
idade int,
email varchar(200),
senha varchar(20),
fkBarbeariaCli int,
foreign key (fkBarbeariaCli) references barbearias(id)
);

INSERT INTO clientes(nome, idade, email, senha, fkBarbeariaCli)
VALUES
("teste", 19, "teste", "1234", 1);

create table cortes(
id int primary key auto_increment,
dataCorte datetime,
cliente int,
barbeiro int,
notaCliente int,
foreign key (cliente) references clientes(id),
foreign key(barbeiro) references barbeiros(id)
);
