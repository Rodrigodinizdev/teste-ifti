# Teste IFTI

Este repositório contém as duas provas do processo: **SQL Server** e **Lógica C#**.

## Antes de começar

Clone o repositório e crie **uma única branch** para entregar as respostas dos dois desafios, seguindo o padrão `feat/nome-sobrenome`:

Exemplo (Rodrigo Diniz): `feat/rodrigo-diniz`.

## Como organizar sua entrega

Dentro da sua branch, crie duas pastas — uma para cada desafio:

```
respostas/nome-sobrenome/
├── desafio-sql/
│   ├── Q1.sql
│   ├── Q2.sql
│   ├── ...
│   └── Q10.sql
└── desafio-csharp/
    ├── Program.cs
    └── nome-sobrenome.csproj
```

- Em `desafio-sql/`, crie **um arquivo `.sql` por questão** (`Q1.sql`, `Q2.sql`, ..., `Q10.sql`), cada um com o comando correspondente àquela questão.
- Em `desafio-csharp/`, coloque o projeto Console com a solução do desafio integrado.

Os enunciados completos de cada desafio estão em:
- SQL: [`sql/README.md`](./sql/README.md)
- Lógica C#: [`logica-csharp/README.md`](./logica-csharp/README.md)

## Regras gerais

- Cada pessoa trabalha **somente na própria branch**.
- Não é permitido push direto na `main`.
- Ao terminar os dois desafios, abra um único Pull Request da sua branch contra a `main`.
