// Program.cs - Central da Bica Vida Livre
using System.Globalization;

CultureInfo culture = new("pt-BR");
Thread.CurrentThread.CurrentCulture = culture;

Console.WriteLine("=== CENTRAL DA BICA VIDA LIVRE ===");

// --- PARTE 1: BILHETERIA ---
// TODO: quantidade de visitantes (validada, > 0)
// TODO: loop por visitante: idade, categoria, forma de pagamento, valor final
// TODO: guardar cada venda em lista (idade, categoria, pagamento, valor, momento do cadastro)
Console.WriteLine("\n=== BILHETERIA ===");

int quantidadeVisitantes;

Console.Write("Quantos visitantes serao registrados? ");
while (!int.TryParse(Console.ReadLine(), out quantidadeVisitantes) || quantidadeVisitantes <= 0)
{
  Console.WriteLine("Valor inválido! Digite um número inteiro maior que zero.");
  Console.Write("\nQuantos visitantes serao registrados? ");
}

List<Venda> vendas = new List<Venda>();

for (int i = 0; i < quantidadeVisitantes; i++)
{
  Console.WriteLine($"\n--- Visitante {i + 1} ---");
  int idade;

  Console.Write($"Idade do visitante: ");
  while (!int.TryParse(Console.ReadLine(), out idade) || idade < 0 || idade > 110)
  {
    Console.WriteLine("Idade inválida! Digite um número inteiro entre 0 e 110.");
    Console.Write($"Idade do visitante: ");
  }

  string categoria;
  double valorBase;

  if (idade >= 65)
  {
    categoria = "Idoso";
    valorBase = 15;
  }
  else if (idade >= 13)
  {
    categoria = "Inteira";
    valorBase = 30;
  }
  else if (idade >= 6)
  {
    categoria = "Infantil";
    valorBase = 15;
  }
  else
  {
    categoria = "Gratuito";
    valorBase = 0;
  }

  Console.WriteLine($"Categoria: {categoria}");
  Console.WriteLine($"Valor base: {valorBase:C}");

  int opcao;

  Console.WriteLine(@"Formas de pagamento:
1 - Dinheiro
2 - Pix
3 - Credito");

  Console.Write("Escolha uma opcao: ");
  while (!int.TryParse(Console.ReadLine(), out opcao) || (opcao != 1 && opcao != 2 && opcao != 3))
  {
    Console.WriteLine("Opção inválida! Escolha uma opção numerada de 1 a 3.");
    Console.WriteLine(@"Formas de pagamento:
1 - Dinheiro
2 - Pix
3 - Credito");
    Console.Write("Escolha uma opcao: ");
  }

  string formaPagamento;
  double desconto;

  switch (opcao)
  {
    case 1:
      formaPagamento = "Dinheiro";
      desconto = 0;
      break;
    case 2:
      formaPagamento = "Pix";
      desconto = -0.05;
      break;
    case 3:
      formaPagamento = "Credito";
      desconto = 0.03;
      break;
    default:
      Console.WriteLine("Erro! Opção de pagamento inexistente.");
      return;
  }
  Console.WriteLine($"Forma de pagamento: {formaPagamento}");

  double valorFinal = valorBase + (valorBase * desconto);
  Console.WriteLine($"Valor final: {valorFinal:C}");

  if (valorFinal > 50 && opcao == 3) Console.WriteLine("Parcelamento em até 3x sem juros disponível!");

  DateTime dateNow = DateTime.Now;
  Console.WriteLine($"Cadastrado em: {dateNow}");

  Venda venda = new Venda(idade, categoria, formaPagamento, valorFinal, dateNow);
  vendas.Add(venda);
}

// --- PARTE 2: CONSOLIDACAO DO PLANTEL ---
string[] sistemaAntigo = { "BICA-014", "BICA-002", "BICA-014", "BICA-030" };
List<string> sistemaNovo = new List<string> { "BICA-030", "BICA-055", "XX-009" };
// TODO: cadastro unico, sem duplicados, ordenado
List<string> sistemaUnificado = new List<string>();
sistemaUnificado.AddRange(sistemaAntigo);
sistemaUnificado.AddRange(sistemaNovo);

List<string> sistemaUnico = new List<string>();

foreach (string codigo in sistemaUnificado)
{
  if (!sistemaUnico.Contains(codigo))
  {
    sistemaUnico.Add(codigo);
  }
}

sistemaUnico.Sort();
// TODO: validar prefixo, contar validos/invalidos, tratar cadastro vazio
List<string> codigosValidos = new List<string>();
List<string> codigosInvalidos = new List<string>();

foreach (string codigo in sistemaUnico)
{
  if (codigo.StartsWith("BICA-"))
  {
    codigosValidos.Add(codigo);
  }
  else
  {
    codigosInvalidos.Add(codigo);
  }
}

Console.WriteLine("\n=== AUDITORIA DO PLANTEL ===");

if (codigosValidos.Count == 0)
{
  Console.WriteLine("Não há nenhum código válido para auditar.");
}
else
{
  foreach (string codigo in codigosValidos)
  {
    Console.WriteLine(codigo);
  }
}

Console.WriteLine(@$"
Codigos unicos no cadastro: {sistemaUnico.Count}
Codigos validos: {codigosValidos.Count}
Codigos invalidos: {codigosInvalidos.Count}
");

// --- PARTE 3: PRIORIDADE VETERINARIA ---
List<string> animaisMonitorados = new List<string> { "Leao Simba", "Tartaruga Flora", "Arara Bela", "Onça Preta" };
List<int> diasSemCheckup = new List<int> { 45, 120, 10, 95 };
string[] especiesSensiveis = { "Onça Preta", "Arara Bela" };
// TODO: classificar cada animal (Urgente/Rotina)
// TODO: simular checkup de um animal especifico

// --- PARTE 4: RELATORIO FINAL ---
// TODO: relatorio final em secoes

record Venda(int Idade, string Categoria, string FormaPagamento, double ValorFinal, DateTime DataCadastro);
