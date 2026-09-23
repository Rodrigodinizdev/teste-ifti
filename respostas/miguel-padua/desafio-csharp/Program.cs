// Program.cs - Central da Bica Vida Livre


using System.Reflection.Metadata;

List<int> idades = new List<int> {};
List<string> categorias = new List<string> {};
List<FormaDePagamento> FormasDePagamentos = new List<FormaDePagamento> {};
List<decimal> ValorFinal = new List<decimal> {};
List<DateTime> MomentoDoPagamento = new List<DateTime> {};

int quantidadeVisitantes = 0;
bool quantidadeValida = false;

Console.WriteLine("=== CENTRAL DA BICA VIDA LIVRE ===");

Console.WriteLine("=== BILHETERIA ===");

while (!quantidadeValida)
{
    Console.Write("Quantos visitantes serão registrados nessa sessão? ");
    string entradaQuantidade = Console.ReadLine();

    if (int.TryParse(entradaQuantidade, out quantidadeVisitantes) && quantidadeVisitantes > 0)
    {
        quantidadeValida = true;
    }
    else
    {
        Console.WriteLine("Valor inválido. Digite um numero inteiro maior que zero. ");
    }

}
for (int i = 1; i <= quantidadeVisitantes; i++)
{
    Console.WriteLine($"\n--- Visitante {i} ---");

    DateTime momentoAtual = DateTime.Now;
    int idade = 0;
    bool validadeIdade = false;
    while (!validadeIdade)
    {
        Console.Write("Quantos ano tem? ");
        string lerIdade = Console.ReadLine();
        if (int.TryParse(lerIdade, out idade) && idade >= 0 && idade <= 110)
        {
            validadeIdade = true;
        }
        else
        {
            Console.WriteLine("Idade invalida. digite um numero inteiro de 0 ate 110. ");
        }
    }

    string categoria;
    decimal valorbase = 0;
    if (idade <= 5)
    {
        categoria = "Gratuito";
        valorbase = 0.00m;
    }
    else if (idade <= 12)
    {
        categoria = "Infantil";
        valorbase = 15.00m;
    }
    else if (idade <= 64)
    {
        categoria = "Inteira";
        valorbase = 30.00m;
    }
    else
    {
        categoria = "Idoso";
        valorbase = 15.00m;
    }
    Console.WriteLine($"Categoria: {categoria} - Valor base: {valorbase.ToString("C")}");

    FormaDePagamento pagamento = FormaDePagamento.Dinheiro;
    bool pagamentoValido = false;

    while (!pagamentoValido)
    {
        Console.Write("Formas de pagamento: 1-Dinheiro, 2-Pix, 3-Credito: ");
        string escolhaDoPagamento = Console.ReadLine();
        int numeroPagamento;
        if (int.TryParse(escolhaDoPagamento, out numeroPagamento) && Enum.IsDefined(typeof(FormaDePagamento), numeroPagamento))
        {
            pagamento = (FormaDePagamento)numeroPagamento;
            pagamentoValido = true;
        }
        else
        {
            Console.WriteLine("Opção invalida. Tente novamente.");
        }
    }
    decimal ValorFinalDoVisitante;
    switch (pagamento)
    {
        case FormaDePagamento.Pix:
            ValorFinalDoVisitante = valorbase * 0.95m;
            break;
        
        case FormaDePagamento.Credito:
            ValorFinalDoVisitante = valorbase * 1.03m;
            break;
        
        default:
            ValorFinalDoVisitante = valorbase;
            break;
    }
    Console.WriteLine($"Valor final: {ValorFinalDoVisitante.ToString("C")}");

    if (pagamento == FormaDePagamento.Credito && ValorFinalDoVisitante > 50.00m)
    {
        Console.Write("Quer parcelar? S/N: ");
        string vaiParcelar = Console.ReadLine();
        if (vaiParcelar != null && vaiParcelar.ToUpper() == "S")
        {
            int numParcelas = 0;
            bool parcelasValidas = false;
            while (!parcelasValidas)
            {
                Console.Write("Quantas parcelas(1-3)? ");
                string qntParcelas = Console.ReadLine();

                if (int.TryParse(qntParcelas, out numParcelas)&& numParcelas >= 1 && numParcelas <= 3)
                {
                    parcelasValidas = true;
                }
                else
                {
                    Console.WriteLine("Quantidade de parcelas invalida. Tente novamente");
                }

                decimal valorDaParcela = (decimal)Math.Floor((double)(ValorFinalDoVisitante / numParcelas) * 100) / 100;

                decimal somaDasParcelas = valorDaParcela * numParcelas;
                decimal diferenca = ValorFinalDoVisitante - somaDasParcelas;

                Console.WriteLine($"Parcelado em {numParcelas}x de {valorDaParcela.ToString("C")}");
            }
        }
        
            
    }
    
    idades.Add(idade);
    categorias.Add(categoria);
    FormasDePagamentos.Add(pagamento);
    ValorFinal.Add(ValorFinalDoVisitante);
    MomentoDoPagamento.Add(momentoAtual);
    Console.WriteLine($"Cadastrado em: {momentoAtual.ToString("dd/MM/yyyy HH:mm:ss")}");
}



// --- PARTE 2: CONSOLIDACAO DO PLANTEL ---
string[] sistemaAntigo = { "BICA-014", "BICA-002", "BICA-014", "BICA-030" };
List<string> sistemaNovo = new List<string> { "BICA-030", "BICA-055", "XX-009"}; 
List<string> todosOsCodigos = new List<string> {};

todosOsCodigos.AddRange(sistemaAntigo);
todosOsCodigos.AddRange(sistemaNovo);

List<string> codigosValidos = new List<string> {};
List<string> codigosInvalidos = new List<string> {};

Console.WriteLine("=== AUDITORIA DO PLANTEL ===");

foreach (string codigo in todosOsCodigos)
{
    if (codigo.StartsWith("BICA-"))
    {
        if (!codigosValidos.Contains(codigo))
        {
        codigosValidos.Add(codigo);
        }
    }
    else
    {
        if (!codigosInvalidos.Contains(codigo))
        {
            codigosInvalidos.Add(codigo);
        }
    }
}

codigosValidos.Sort();

if (codigosValidos.Count == 0)
{
    Console.WriteLine("Nenhum animal para auditar");
}
else
{
    foreach (string codigo in codigosValidos)
    {
        Console.WriteLine(codigo);
    }
    Console.WriteLine($"Codigos unicos no cadastro: {codigosValidos.Count + codigosInvalidos.Count}");
    Console.WriteLine($"Codigos validos: {codigosValidos.Count}");
    Console.WriteLine($"Codigos invalidos: {codigosInvalidos.Count}");
}
  

// --- PARTE 3: PRIORIDADE VETERINARIA ---
List<string> animaisMonitorados = new List<string> { "Leão Simba", "Tartaruga Flora", "Arara Bela", "Onça Preta" };
List<int> diasSemCheckup = new List<int> { 45, 120, 10, 95 };
string[] especiesSensiveis = { "Onça Preta", "Arara Bela" };
List<string> statusAnimais = new List<string> {};

Console.WriteLine("=== PRIORIDADE VETERINÁRIO");

for (int i = 0; i < animaisMonitorados.Count; i++)
{
    string nomeDoAnimal = animaisMonitorados[i];
    int dias = diasSemCheckup[i];
    bool sensivel = especiesSensiveis.Contains(nomeDoAnimal);
    
    string status;
    if ( dias > 90 || (dias > 30 && sensivel))
    {
        status = "Urgente"; 
    }
    else
    {
        status = "Rotina";
    }
    statusAnimais.Add(status);
    Console.WriteLine($"{nomeDoAnimal} -- {dias} dias sem checkup - {status}");

}

Console.Write("qual o nome do animal que fez checkup: ");
string nomeDigitado = Console.ReadLine();
int indice = animaisMonitorados.IndexOf(nomeDigitado);
if (indice != -1)
{
    diasSemCheckup[indice] = 0;
    Console.WriteLine($"Checkup realizado em: {animaisMonitorados[indice]}");
    Console.WriteLine($"Dias sem checkup atualizado: {diasSemCheckup[indice]}");
}
else
{
    Console.WriteLine("Animal não encontrado.");
}


// --- PARTE 4: RELATORIO FINAL ---
Console.WriteLine("=== RESUMO DO DIA ===");

decimal faturamentoTotal = 0;

foreach (decimal valor in ValorFinal)
{
    faturamentoTotal = faturamentoTotal + valor;
}
Console.WriteLine($"O total de visitantes atendidos foram de {idades.Count}");
Console.WriteLine($"Faturamento total: {faturamentoTotal.ToString("C")}");
Console.WriteLine($"Codigos validados: {codigosValidos.Count}");
bool existemValidos = codigosValidos.Count > 0;
Console.WriteLine($"Ha codigos validos para auditoria: {(existemValidos ? "Sim" : "Não")}");
int totalUrgentes = 0;
foreach (string status in statusAnimais)
{
    if (status == "Urgente")
    {
        totalUrgentes = totalUrgentes + 1;
    }
}
Console.WriteLine($"Animais auditados: {animaisMonitorados.Count}");
Console.WriteLine($"Animais em prioridade urgente: {totalUrgentes}");




enum FormaDePagamento
{
    Dinheiro = 1,
    Pix = 2,
    Credito = 3
}