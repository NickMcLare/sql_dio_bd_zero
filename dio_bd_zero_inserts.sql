use bd_zero;

insert into cliente (cpf, fname, lname, cellphone, address) values
('12345678901', 'carlos', 'silva', '11987654321', 'rua a, 100 - são paulo'),
('98765432100', 'mariana', 'souza', '21976543210', 'avenida b, 200 - rio de janeiro'),
('45678912345', 'roberto', 'lima', '31965432198', 'travessa c, 300 - belo horizonte'),
('32165498700', 'ana', 'ferreira', '41987456321', 'rua d, 400 - curitiba'),
('65498732111', 'lucas', 'santos', '51965437890', 'avenida e, 500 - porto alegre');

insert into payment (idPayment, idpaymentcliente, typepayment, limitavaible) values
(1, 1, 'credito', 5000.00),
(2, 2, 'pix', 1500.00),
(3, 3, 'paypal', 3000.00),
(4, 4, 'credito', 2500.00),
(5, 5, 'pix', 1800.00);

insert into veiculo (model, marca, chassi, year_car) values
('civic', 'honda', '1hgcm82633a123456', 2022),
('corolla', 'toyota', '2t1burhe5kc123457', 2021),
('onix', 'chevrolet', '3g1be5sm0hs123458', 2020),
('hb20', 'hyundai', '4M9BG22J1LE123459', 2023),
('fiesta', 'ford', '5FADB12345K987654', 2019);

insert into cliente_car (idcliente, idveiculo) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

insert into equipe (nome_equipe) values
('equipe 1'),
('equipe 2'),
('equipe 3');

insert into mecanico (fname, lname, address, especialidade) values
('joão', 'pereira', 'rua mecânico 1', 'suspensão'),
('fernando', 'gomes', 'rua mecânico 2', 'motor'),
('ricardo', 'alves', 'rua mecânico 3', 'elétrica'),
('bruno', 'costa', 'rua mecânico 4', 'freios'),
('felipe', 'mendes', 'rua mecânico 5', 'transmissão');

insert into equipe_mecanico (idEM, idequipe, idmecanico, descricao) values
(1, 1, 1, 'especialista em suspensão'),
(2, 1, 2, 'mecânico geral'),
(3, 2, 3, 'especialista em elétrica'),
(4, 3, 4, 'especialista em freios'),
(5, 3, 5, 'especialista em transmissão');

insert into service (type_tarefa, valor_calculado) values
('troca de óleo', 150.00),
('alinhamento e balanceamento', 200.00),
('revisão geral', 500.00),
('troca de embreagem', 900.00),
('substituição de amortecedores', 1200.00);

insert into peca (type_peca, valor_peca) values
('filtro de óleo', 50.00),
('pastilha de freio', 120.00),
('correia dentada', 300.00),
('kit embreagem', 850.00),
('amortecedor dianteiro', 600.00);

insert into ordem_service (date_emissao, date_conclusao, total_valor, status_os, date_entrega, descricao_problema, garantia, idcliente, idveiculo, idem) values
('2025-03-01', '2025-03-02', 350.00, 'consertado', '2025-03-03', 'troca de óleo e filtro', 30, 1, 1, 1),
('2025-03-05', null, 800.00, 'em reparação', null, 'troca de pastilha de freio e alinhamento', 60, 2, 2, 2),
('2025-03-10', null, 1200.00, 'em análise', null, 'troca de correia dentada', 90, 3, 3, 1),
('2025-03-12', null, 1800.00, 'em reparação', null, 'troca de embreagem', 60, 4, 4, 3),
('2025-03-15', null, 2200.00, 'esperando mecânico', null, 'substituição de amortecedores', 90, 5, 5, 3);

insert into mao_obra (idService, idOS) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

insert into os_peca (idos, idpeca, quantidade) values
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2);
