// Program.cs - Central da Bica Vida Livre

Console.WriteLine("=== CENTRAL DA BICA VIDA LIVRE ===");
Console.WriteLine();

// --- PARTE 1: BILHETERIA ---
Console.WriteLine("=== BILHETERIA ===");
Console.WriteLine();

int quantidadeVisitantes = 0;
bool valorValido = false;

Console.Write("Quantos visitantes serão registrados? ");
while (!valorValido)
{
    if (int.TryParse(Console.ReadLine(), out quantidadeVisitantes) && quantidadeVisitantes > 0)
        valorValido = true;
    else
        Console.Write("A quantidade de visitantes deve ser maior do que 0. Tente novamente: ");
}
Console.WriteLine();

int[] idadesVisitantes = new int[quantidadeVisitantes];
string[] categoriasIngressos = new string[quantidadeVisitantes];
decimal[] valoresIngressos = new decimal[quantidadeVisitantes];
FormasPagamento[] formasEscolhidas = new FormasPagamento[quantidadeVisitantes];
decimal[] valoresFinaisIngressos = new decimal[quantidadeVisitantes];
DateTime[] datasCadastros = new DateTime[quantidadeVisitantes];
int[] quantidadeParcelas = new int[quantidadeVisitantes];

for (int i = 0; i < quantidadeVisitantes; i++)
{
    Console.WriteLine($"--- Visitante {i + 1} ---");

    Console.Write($"Idade do visitante: ");
    valorValido = false;
    while (!valorValido)
    {
        if (int.TryParse(Console.ReadLine(), out idadesVisitantes[i]) && idadesVisitantes[i] >= 0 && idadesVisitantes[i] <= 110)
        {
            if (idadesVisitantes[i] >= 65)
            {
                categoriasIngressos[i] = "Idoso";
                valoresIngressos[i] = 15.00m;
            }
            else if (idadesVisitantes[i] >= 13)
            {
                categoriasIngressos[i] = "Inteiro";
                valoresIngressos[i] = 30.00m;
            }
            else if (idadesVisitantes[i] >= 6)
            {
                categoriasIngressos[i] = "Infantil";
                valoresIngressos[i] = 15.00m;
            }
            else
            {
                categoriasIngressos[i] = "Gratuito";
                valoresIngressos[i] = 0.00m;
            }

            Console.WriteLine($"Categoria: {categoriasIngressos[i]}");
            Console.WriteLine($"Valor base: {valoresIngressos[i].ToString("C")}");
            
            valorValido = true;
        } else
            Console.Write("A faixa etária permitida para visitantes é entre 0 e 110 anos. Tente novamente: ");
    }

    Console.WriteLine("Formas de pagamento:");
    foreach (FormasPagamento forma in Enum.GetValues(typeof(FormasPagamento)))
    {
        Console.WriteLine($"{(int) forma} - {forma}");
    }
    Console.Write("Escolha uma opção: ");
    valorValido = false;
    while (!valorValido)
    {
        if (int.TryParse(Console.ReadLine(), out int formaPagamento) && formaPagamento >= 1 && formaPagamento <= 3)
        {
            FormasPagamento forma = formaPagamento switch
            {
                1 => FormasPagamento.Dinheiro,
                2 => FormasPagamento.Pix,
                _ => FormasPagamento.Credito
            };

            formasEscolhidas[i] = forma;
            Console.WriteLine($"Forma de pagamento: {formasEscolhidas[i]}");

            valorValido = true;
        }
        else
            Console.Write("Forma de pagamento inválida. Tente novamente: ");
    }

    valoresFinaisIngressos[i] = formasEscolhidas[i] switch
    {
        FormasPagamento.Dinheiro => valoresIngressos[i],
        FormasPagamento.Pix => valoresIngressos[i] - (valoresIngressos[i] * 0.05m),
        _ => valoresIngressos[i] + (valoresIngressos[i] * 0.03m),
    };
    Console.WriteLine($"Valor final: {valoresFinaisIngressos[i].ToString("C")}");

    if (valoresFinaisIngressos[i] > 50.00m && formasEscolhidas[i] == FormasPagamento.Credito)
    {
        Console.Write("Você deseja parcelar o valor em até 3x sem juros no cartão? Digite \"sim\" ou \"não\": ");
        string parcelar = Console.ReadLine() ?? "";

        if (string.Equals(parcelar, "sim", StringComparison.OrdinalIgnoreCase))
        {
            Console.Write("Em quantas vezes você deseja parcelar (1, 2 ou 3 vezes)? ");
            valorValido = false;
            while (!valorValido)
            {
                if (int.TryParse(Console.ReadLine(), out quantidadeParcelas[i]) && quantidadeParcelas[i] >= 1 && quantidadeParcelas[i] <= 3)
                    valorValido = true;
                else
                    Console.Write("Somente estão disponíveis os parcelamentos entre 1 e 3 vezes. Tente novamente: ");
            }

            decimal valorParcelado = valoresFinaisIngressos[i] / quantidadeParcelas[i];
            Console.WriteLine($"Parcelado em {quantidadeParcelas[i]}x de {valorParcelado.ToString("C")}");
        }
    }
    else
        quantidadeParcelas[i] = 0;

    datasCadastros[i] = DateTime.Now;
    Console.WriteLine($"Cadastrado em: {datasCadastros[i]}");

    Console.WriteLine();
}

// --- PARTE 2: CONSOLIDACAO DO PLANTEL ---
Console.WriteLine("=== AUDITORIA DO PLANTEL ===");
Console.WriteLine();

int codigosValidos = 0;
int codigosInvalidos = 0;

string[] sistemaAntigo = { "BICA-014", "BICA-002", "BICA-014", "BICA-030" };
List<string> sistemaNovo = new List<string> { "BICA-030", "BICA-055", "XX-009" };

List<string> sistemaUnificado = new List<string>();

sistemaUnificado.AddRange(sistemaAntigo);
sistemaUnificado.AddRange(sistemaNovo);

List<string> sistemaUnicos = new List<string>();

foreach (string codigo in sistemaUnificado)
{
    if (!sistemaUnicos.Contains(codigo))
        sistemaUnicos.Add(codigo);
}

sistemaUnicos.Sort();

for (int i = 0; i < sistemaUnicos.Count(); i++)
{
    if (!sistemaUnicos[i].StartsWith("BICA-") || string.IsNullOrEmpty(sistemaUnicos[i]))
    {
        codigosInvalidos++;
        sistemaUnicos.Remove(sistemaUnicos[i]);
    } 
    else
        codigosValidos++;
}

if (codigosValidos == 0)
    Console.WriteLine("Nenhum animal para auditar.");
else
{
    foreach (string codigo in sistemaUnicos)
        Console.WriteLine(codigo);
    Console.WriteLine();

    Console.WriteLine($"Códigos únicos no cadastro: {sistemaUnicos.Count()}");
    Console.WriteLine($"Códigos válidos no cadastro: {codigosValidos}");
    Console.WriteLine($"Códigos inválidos no cadastro: {codigosInvalidos}");
}

enum FormasPagamento
{
    Dinheiro = 1,
    Pix = 2,
    Credito = 3
}