# Desafio Integrador: Central da Bica Vida Livre

## Contexto

A **Bica Vida Livre** é um zoológico fictício que roda um sistema de console único pra fechar o dia: emitir ingressos, consolidar o cadastro de animais vindo de dois sistemas antigos e monitorar a prioridade veterinária.

## Requisitos

### Parte 1 — Bilheteria

1. Pergunte **quantos visitantes** serão registrados nessa sessão de vendas (inteiro maior que zero, validado em loop).
2. Para cada visitante, peça a **idade** (0–110, validada em loop até um valor aceito) e defina a categoria do ingresso: até 5 anos = **Gratuito**; 6 a 12 = **Infantil (R$ 15,00)**; 13 a 64 = **Inteira (R$ 30,00)**; 65+ = **Idoso (R$ 15,00)**.
3. Apresente as formas de pagamento disponíveis — **Dinheiro**, **Pix**, **Crédito** — numeradas, e peça que o visitante escolha uma. Uma opção fora da lista não pode ser aceita.
4. O valor final do ingresso muda conforme a forma escolhida: Pix dá 5% de desconto; Crédito soma 3% de taxa e, se o valor passar de R$ 50,00, oferece parcelamento em até 3x sem perder centavos.
5. Guarde cada venda em uma lista — idade, categoria, forma de pagamento, valor final e o **momento exato do cadastro** — de forma que, no fim, seja possível percorrer todas as vendas da sessão e saber exatamente quando cada uma aconteceu.

### Parte 2 — Consolidação do Plantel

6. Você recebeu os seguintes códigos de dois cadastros antigos da bica:

   - **Sistema antigo** (coleção de tamanho fixo): `BICA-014`, `BICA-002`, `BICA-014`, `BICA-030`
   - **Sistema novo** (coleção de tamanho variável): `BICA-030`, `BICA-055`, `XX-009`

   Repare que há códigos repetidos entre as duas fontes e um código fora do padrão esperado — isso é proposital.

7. Junte as duas fontes em um cadastro único, sem repetir nenhum código, e mantenha-o em ordem alfabética.
8. Todo código válido começa com `"BICA-"`. Separe os válidos dos inválidos e informe quantos são de cada tipo. Se, depois da consolidação, não sobrar nenhum código válido, avise que não há nada para auditar em vez de deixar o programa seguir com uma lista vazia.

### Parte 3 — Prioridade Veterinária

9. Existe um cadastro de animais monitorados, cada um com a quantidade de dias desde o último checkup — e essa informação precisa continuar associada ao animal certo em qualquer operação futura:

   - **Animais**: `Leao Simba`, `Tartaruga Flora`, `Arara Bela`, `Onça Preta`
   - **Dias sem checkup**: `45`, `120`, `10`, `95`
   - **Espécies sensíveis**: `Onça Preta`, `Arara Bela`

10. Um animal é considerado **Urgente** se está há mais de 90 dias sem checkup, ou se está há mais de 30 dias **e** pertence à lista de espécies sensíveis; caso contrário, é **Rotina**.
11. Simule o checkup de um animal específico: encontre-o pelo nome e zere sua contagem de dias, sem bagunçar os dados dos outros animais.

### Parte 4 — Relatório Final

12. Feche com um relatório em seções, valores monetários formatados como moeda, respostas Sim/Não em vez de `true/false`, e os totais do dia: quantidade de visitantes atendidos (a partir da lista), faturamento total (soma de todos os valores finais), animais auditados e quantos estão em prioridade urgente.

## Formato Esperado da Saída

Exemplo ilustrativo (os números não precisam bater exatamente — o que importa é a estrutura das seções):

```
=== CENTRAL DA BICA VIDA LIVRE ===

=== BILHETERIA ===
Quantos visitantes serao registrados? 2

--- Visitante 1 ---
Idade do visitante: 34
Categoria: Inteira
Valor base: R$ 30,00
Formas de pagamento:
1 - Dinheiro
2 - Pix
3 - Credito
Escolha uma opcao: 2
Forma de pagamento: Pix
Valor final: R$ 28,50
Cadastrado em: 21/09/2026 14:32:07

--- Visitante 2 ---
Idade do visitante: 8
Categoria: Infantil
Valor base: R$ 15,00
Formas de pagamento:
1 - Dinheiro
2 - Pix
3 - Credito
Escolha uma opcao: 3
Forma de pagamento: Credito
Valor final: R$ 15,45
Cadastrado em: 21/09/2026 14:33:42

=== AUDITORIA DO PLANTEL ===
BICA-002
BICA-014
BICA-030
BICA-055

Codigos unicos no cadastro: 4
Codigos validos: 4
Codigos invalidos: 1

=== PRIORIDADE VETERINARIA ===
Leao Simba: 45 dias sem checkup - Rotina
Tartaruga Flora: 120 dias sem checkup - Urgente
Arara Bela: 10 dias sem checkup - Rotina
Onça Preta: 95 dias sem checkup - Urgente

Checkup realizado em: Onça Preta
Dias sem checkup atualizado: 0

=== RESUMO DO DIA ===
Visitantes atendidos: 2
Faturamento do dia: R$ 43,95
Animais auditados: 4
Animais em prioridade urgente: 2
```

**Observações sobre o formato:**

- O parcelamento (item 4) só aparece na saída **se** o pagamento for Crédito e o valor passar de R$ 50,00 — nesse caso, some uma linha `Parcelado em 3x de R$ ...` logo depois do "Valor final".
- Se a auditoria do plantel (Parte 2) ficar vazia, a seção troca a listagem pela mensagem `Nenhum animal para auditar`, sem imprimir contagens.
- A ordem das seções segue a ordem das Partes do enunciado (Bilheteria → Auditoria → Veterinária → Resumo).

## Estrutura para Desenvolvimento

```csharp
// Program.cs - Central da Bica Vida Livre

Console.WriteLine("=== CENTRAL DA BICA VIDA LIVRE ===");

// --- PARTE 1: BILHETERIA ---
// TODO: quantidade de visitantes (validada, > 0)
// TODO: loop por visitante: idade, categoria, forma de pagamento, valor final
// TODO: guardar cada venda em lista (idade, categoria, pagamento, valor, momento do cadastro)

// --- PARTE 2: CONSOLIDACAO DO PLANTEL ---
string[] sistemaAntigo = { "BICA-014", "BICA-002", "BICA-014", "BICA-030" };
List<string> sistemaNovo = new List<string> { "BICA-030", "BICA-055", "XX-009" };
// TODO: cadastro unico, sem duplicados, ordenado
// TODO: validar prefixo, contar validos/invalidos, tratar cadastro vazio

// --- PARTE 3: PRIORIDADE VETERINARIA ---
List<string> animaisMonitorados = new List<string> { "Leao Simba", "Tartaruga Flora", "Arara Bela", "Onça Preta" };
List<int> diasSemCheckup = new List<int> { 45, 120, 10, 95 };
string[] especiesSensiveis = { "Onça Preta", "Arara Bela" };
// TODO: classificar cada animal (Urgente/Rotina)
// TODO: simular checkup de um animal especifico

// --- PARTE 4: RELATORIO FINAL ---
// TODO: relatorio final em secoes
```
