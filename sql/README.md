# Prova — Módulo SQL (Locadora de Veículos)

## Branch de entrega

Use a mesma branch dos dois desafios (veja o README geral do repositório):

```bash
git checkout -b feat/nome-sobrenome
```

## Estrutura da pasta

```
sql/
├── README.md
├── banco/
│   ├── criar_banco.sql      # DDL — cria o banco e as tabelas
│   └── popular_banco.sql    # DML — carga de dados de teste
└── questoes-sql.md          # enunciado das 10 questões
```

Suas respostas ficam em `respostas/nome-sobrenome/desafio-sql/` (fora da pasta `sql/`, na raiz do repositório — veja o README geral).

## Antes de começar

Execute, **nesta ordem**, os scripts da pasta `banco/`:

1. `banco/criar_banco.sql` — cria o banco e as tabelas.
2. `banco/popular_banco.sql` — insere a massa de dados sobre a qual as consultas serão validadas.

Não altere os scripts da pasta `banco/`.

## Como entregar

Em `respostas/nome-sobrenome/desafio-sql/`, crie **um arquivo por questão** (`Q1.sql`, `Q2.sql`, ..., `Q10.sql`), cada um contendo o comando SQL correspondente.

As questões seguem o fluxo de implementação: primeiro a estrutura da nova tabela (`Reserva`), depois os dados dessa tabela e, por último, as consultas.

- **Q1 a Q5**: execute em ordem — cada uma depende da anterior.
- **Q6 a Q10**: consultas (DQL), podem ser resolvidas em qualquer ordem.

O enunciado completo está em [`questoes-sql.md`](./questoes-sql.md).

## Commits

Registre a evolução em três commits na sua branch:

| Etapa | Mensagem |
|---|---|
| Após Q1 e Q2 (DDL) | `feat: Adiciona estrutura DDL do desafio de SQL` |
| Após Q3 a Q5 (DML) | `feat: Adiciona operacoes DML do desafio de SQL` |
| Após Q6 a Q10 (DQL) | `feat: Adiciona consultas DQL do desafio de SQL` |

## Abrindo o PR

O PR é único pros dois desafios — veja o README geral do repositório para as instruções de entrega.