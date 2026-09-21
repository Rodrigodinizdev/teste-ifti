# Prova de SQL Server — Processo Seletivo de Estágio
### Banco: LocadoraVeiculos

---

## Parte 1 — Estrutura: sistema de Reservas (DDL)

As próximas 5 questões formam uma sequência. A diretoria da locadora decidiu implantar um sistema de reservas: o cliente pode reservar um veículo antes de retirá-lo na filial. Você vai criar a tabela, evoluí-la, e depois cadastrar, atualizar e remover registros. **Execute as questões em ordem — cada uma depende da anterior.**

**Questão 1 — DDL**
Crie a tabela `Reserva` com `Id` como chave primária autoincrementada, `IdVeiculo`, `IdCliente`, `DataReserva` e `StatusReserva` (Ativa, Atendida ou Cancelada). Use tipos adequados e chaves estrangeiras para `Veiculo` e `Cliente`.

**Questão 2 — DDL**
Após conversar com o time de atendimento, ficou definido que a tabela `Reserva` também precisa registrar em que data a reserva foi atendida (ou seja, quando o cliente retirou o veículo). Altere a tabela `Reserva`, adicionando `DataAtendimento` com um tipo adequado, permitindo valores nulos e sem recriar ou afetar as reservas existentes.

---

## Parte 2 — Dados: sistema de Reservas (DML)

**Questão 3 — DML**
Cadastre as três reservas abaixo na tabela `Reserva`, em um único comando `INSERT`. Para esta prova, considere `2026-07-20` como a data de referência da simulação. Todas devem ficar com `StatusReserva` igual a `Ativa` e `DataAtendimento` igual a `NULL`:

| IdVeiculo | IdCliente | DataReserva | StatusReserva | DataAtendimento |
|---|---|---|---|---|
| 3 | 12 | 2026-07-20 | Ativa | NULL |
| 8 | 7  | 2026-07-20 | Ativa | NULL |
| 4 | 25 | 2026-07-20 | Ativa | NULL |

**Questão 4 — DML**
A reserva de `Id = 2` (Volkswagen Nivus reservado pelo cliente Thales Câmara) foi atendida na data de referência da simulação. Atualize somente esse registro, alterando `DataAtendimento` para `2026-07-20` e mudando `StatusReserva` para `Atendida`.

**Questão 5 — DML**
A reserva de `Id = 3` (Fiat Mobi para a cliente Mirella Nascimento) foi cadastrada por engano e precisa ser removida do sistema. Remova esse registro da tabela `Reserva`, afetando apenas esse registro.

---

## Parte 3 — Consultas (DQL)

> Nas questões a seguir **não é permitido uso de subquery** (consulta aninhada). Resolva usando `JOIN`, `GROUP BY`, `HAVING` e `ORDER BY` conforme necessário.

**Questão 6 — DQL**
Liste a placa, o modelo, a categoria, a filial e o status atual dos veículos fabricados entre 2019 e 2023 cujo modelo contenha a letra "o", ordenando do ano de fabricação mais recente para o mais antigo.

**Questão 7 — DQL**
Mostre os 3 clientes mais ativos da locadora — ou seja, os que mais realizaram aluguéis — exibindo o nome do cliente e a quantidade total de aluguéis de cada um, do maior para o menor. Considere apenas aluguéis cujo status seja diferente de "Cancelado".

**Questão 8 — DQL**
Para o relatório mensal, a diretoria quer identificar as categorias de veículo mais movimentadas. Exiba o nome da categoria, a quantidade total de aluguéis e o valor total de multas geradas — considerando apenas as categorias que tiveram mais de 3 aluguéis. Ordene da categoria mais movimentada para a menos movimentada.

**Questão 9 — DQL**
O balcão de atendimento precisa da lista de aluguéis em aberto (sem data de devolução real registrada). Para cada um, exiba o nome do cliente, o modelo do veículo, a forma de pagamento utilizada e o status do pagamento, ordenando da data prevista de devolução mais próxima para a mais distante.

**Questão 10 — DQL**
O time de marketing vai fazer uma campanha para incentivar o primeiro aluguel. Liste os clientes que nunca alugaram nenhum veículo, exibindo o nome, o email e o telefone de cada um.
