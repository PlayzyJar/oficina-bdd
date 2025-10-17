Quando('acessar a seção de cadastro de cliente') do
  puts "Acessando seção de cadastro de cliente..."
end

Quando('inserir o nome {string}') do |nome|
  puts "Nome inserido: #{nome}"
end

Quando('inserir o CPF {string}') do |cpf|
  puts "CPF inserido: #{cpf}"
end

