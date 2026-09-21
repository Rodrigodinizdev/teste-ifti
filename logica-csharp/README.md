# Prova — Módulo Lógica C# (Central da Bica Vida Livre)

## Branch de entrega

```bash
git checkout -b feat/nome-sobrenome-logica-csharp
```

## Estrutura da pasta

```
logica-csharp/
├── README.md
├── questoes-logica-csharp.md      # enunciado do desafio
└── respostas/
    └── nome-sobrenome/
        ├── Program.cs
        └── nome-sobrenome.csproj
```

## Como entregar

Este desafio é **um único programa integrado** (não são questões separadas) — crie a pasta `respostas/nome-sobrenome/` com um projeto Console contendo `Program.cs` e o arquivo de projeto (`nome-sobrenome.csproj`), implementando as 4 partes do enunciado na ordem: Bilheteria → Consolidação do Plantel → Prioridade Veterinária → Relatório Final.

O enunciado completo, com exemplo de saída esperada, está em [`questoes-logica-csharp.md`](./questoes-logica-csharp.md).

## Critérios de avaliação

| Critério | Descrição |
|---|---|
| Funcionalidade | O programa executa as 4 partes conforme solicitado |
| Corretude | Cálculos, validações e classificações estão corretos |
| Organização | Código limpo, bem estruturado |
| Boas Práticas | Nomes descritivos, uso adequado de tipos e coleções |
| Validação | Tratamento de entradas inválidas e casos especiais (cadastro vazio, código fora do padrão, etc.) |

## Commits

Registre a evolução em commits por etapa, seguindo as Partes do enunciado:

| Etapa | Mensagem |
|---|---|
| Parte 1 — Bilheteria | `feat: Adiciona bilheteria do desafio de logica C#` |
| Parte 2 — Consolidação do Plantel | `feat: Adiciona consolidacao do plantel do desafio de logica C#` |
| Parte 3 — Prioridade Veterinária | `feat: Adiciona prioridade veterinaria do desafio de logica C#` |
| Parte 4 — Relatório Final | `feat: Adiciona relatorio final do desafio de logica C#` |

## Abrindo o PR

Ao terminar, abra um Pull Request da sua branch `feat/nome-sobrenome-logica-csharp` contra a `main`.
