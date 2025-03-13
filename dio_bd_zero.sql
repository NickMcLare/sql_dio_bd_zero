drop database bd_zero;
create database bd_zero;
use bd_zero;

create table cliente(
	idCliente int auto_increment unique,
    CPF char(11) not null,
    Fname varchar(20),
    Lname varchar(45),
    cellphone char(11),
    Address varchar(233),
    primary key(idCliente, CPF)
);

create table payment(
	idPaymentCliente int,
    idPayment int,
    typePayment enum('Credito', 'Pix', 'PayPal'),
    limitAvaible float,
    primary key(idPaymentCliente, idPayment),
    constraint unique_payment unique(idPayment),
    constraint fk_payment_client foreign key(idPaymentCliente) references cliente(idCliente)
);

create table veiculo(
	idVeiculo int auto_increment unique,
    model varchar(45),
    marca varchar(45),
    chassi char(17) unique,
    year_car int,
    primary key(idVeiculo, chassi)
);

-- drop table veiculo;

create table ordem_service(
	idOS int auto_increment primary key,
    date_emissao date,
    date_conclusao date,
    total_valor float,
    status_OS enum('Esperando mecânico', 'Em análise', 'Em reparação', 'Consertado') default 'Esperando mecânico',
    date_entrega date,
    descricao_problema varchar(255),
    garantia int,
    idCliente int,
    idVeiculo int,
    idEM int, 
    constraint fk_id_Cliente foreign key(idCliente) references cliente(idCliente),
    constraint fk_id_Veiculo foreign key(idVeiculo) references Veiculo(idVeiculo),
    constraint fk_id_EM foreign key(idEM) references equipe_mecanico(idEM)
);

create table mecanico(
	idMecanico int auto_increment primary key,
    Fname varchar(20),
    Lname varchar(20),
    Address varchar(233),
    especialidade varchar(45)
);

create table equipe(
	idEquipe int primary key auto_increment,
    nome_equipe varchar(45) not null
);

create table equipe_mecanico(
	idEM int unique,
	idEquipe int,
    idMecanico int,
    descricao varchar(100),
    primary key(idEM, idEquipe, idMecanico),
    constraint fk_idEquipe foreign key (idEquipe) references equipe(idEquipe),
    constraint fk_idMecanico foreign key (idMecanico) references mecanico(idMecanico)
);

-- drop table equipe_mecanico;

create table service(
	idService int auto_increment primary key,
    type_tarefa varchar(100),
    valor_calculado float
);

create table mao_obra(
	idMO int auto_increment,
    idService int,
    idOS int,
    primary key (idMO, idService),
    constraint fk_idOS foreign key (idOS) references ordem_service(idOS),
    constraint fk_idService foreign key (idService) references service(idService)
);

create table peca(
	idPeca int auto_increment primary key,
    type_peca varchar(233),
    valor_peca float
);

create table cliente_car(
	idCliente int,
    idVeiculo int,
    primary key(idCliente, idVeiculo),
    constraint fk_idCliente foreign key(idCliente) references cliente(idCliente),
    constraint fk_idVeiculo foreign key(idVeiculo) references veiculo(idVeiculo)
);

create table OS_peca(
	idOS_peca int auto_increment,
    idOS int,
    idPeca int,
    quantidade int not null,
    primary key(idOS_peca, idOS, idPeca),
    constraint fk_id_OS foreign key (idOS) references ordem_service(idOS),
    constraint fk_idPeca foreign key (idPeca) references peca(idPeca)
);

