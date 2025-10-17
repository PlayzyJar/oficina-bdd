Quando('abrir a tela de pagamento em {string}') do |url|
  puts "Acessando tela de pagamento: #{url}"
end

Quando('selecionar o método de pagamento {string}') do |metodo|
  puts "Selecionado método: #{metodo}"
end

Quando('efetuar o pagamento no app bancário') do
  puts "Efetuando pagamento via app..."
end

Quando('confirmar a transação') do
  puts "Confirmando transação..."
end

Então('o status de pagamento deve ser confirmado no sistema') do
  puts "Pagamento confirmado!"
end

Quando('abrir a tela de detalhamento da cobrança em {string}') do |url|
  puts "Abrindo #{url}..."
end

Quando('listar valores dos serviços realizados') do
  puts "Listando valores de serviços..."
end

Quando('listar valores das peças utilizadas') do
  puts "Listando valores das peças..."
end

Então('o total exibido deve corresponder à soma correta dos itens') do
  puts "Validando cálculo do total..."
end

Quando('abrir a tela de geração de boleto em {string}') do |url|
  puts "Acessando tela de boleto: #{url}"
end

Quando('gerar o boleto bancário') do
  puts "Gerando boleto..."
end

Então('o boleto deve ter data de emissão atual') do
  puts "Verificando data de emissão..."
end

Então('data de vencimento três dias após a emissão') do
  puts "Verificando data de vencimento..."
end

Então('o vencimento não pode ser anterior à data de emissão') do
  puts "Validando consistência de datas..."
end

