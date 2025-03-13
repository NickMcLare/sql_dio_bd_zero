🏢 1. Tabelas Principais

🔹 cliente 🧑‍🤝‍🧑: Armazena informações sobre os clientes, como nome, CPF, telefone e endereço.

🔹 ordem_service 🔧: Registra as ordens de serviço, incluindo data de emissão, data de conclusão, valor total, status, data de entrega, descrição do problema, garantia, e a ligação com o cliente, o veículo e a equipe de mecânicos.

🔹 payment 💰: Relaciona os clientes aos pagamentos, incluindo o tipo de pagamento (Crédito, Pix ou PayPal), o limite disponível e a ligação com o cliente.

🔹 veiculo 🚗: Guarda os dados dos veículos que entram na oficina, como modelo, marca, chassi e ano.

📦 2. Gestão de Serviços e Pessoal

🔹 mecanico 👨‍🔧: Armazena as informações sobre os mecânicos da oficina, como nome, endereço e especialidade.

🔹 equipe 👥: Registra as equipes de mecânicos que trabalham na oficina, com o nome de cada equipe.

🔹 equipe_mecanico 🤝: Conecta os mecânicos às equipes, mostrando quem faz parte de cada equipe e uma breve descrição.

🔹 service 🧰: Armazena os serviços que a oficina oferece, com o tipo de tarefa e o valor calculado para cada serviço.

🔹 mao_obra 🔨: Faz a ligação entre os serviços e as ordens de serviço, mostrando quais serviços foram realizados em cada ordem.

🧩 3. Peças e Estoque

🔹 peca ⚙️: Registra as peças que a oficina utiliza, com o tipo de peça e o valor da peça.

🔹 OS_peca 📦: Conecta as peças às ordens de serviço, mostrando quais peças foram utilizadas em cada ordem e a quantidade.

🔗 4. Relacionamentos Importantes

✅ Clientes e Veículos: Um cliente pode ter vários veículos, mas cada veículo pertence a apenas um cliente. 🚗🧑‍🤝‍🧑

✅ Ordens de Serviço e Clientes, Veículos, Equipes: Cada ordem de serviço está associada a um cliente, um veículo e uma equipe de mecânicos. 🔧🚗🧑‍🤝‍🧑👥

✅ Equipes e Mecânicos: Cada equipe de mecânicos é composta por um ou mais mecânicos. 👥👨‍🔧

✅ Serviços e Ordens de Serviço: Cada serviço é associado a uma ordem de serviço. 🧰🔧

✅ Peças e Ordens de Serviço: Cada peça é associada a uma ordem de serviço. ⚙️🔧
