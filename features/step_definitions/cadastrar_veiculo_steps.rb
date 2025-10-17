Quando('abrir a tela inicial {string}') do |url|
  puts "Abrindo #{url}..."
end

Quando('acessar a seção de cadastro de veículo') do
  puts "Acessando seção de cadastro de veículo..."
end

Quando('inserir a placa {string}') do |placa|
  puts "Placa inserida: #{placa}"
end

Quando('clicar em cadastrar') do
  puts "Clicando em cadastrar..."
end

Então('deve aparecer {string}') do |mensagem|
  puts "Mensagem exibida: #{mensagem}"
end

