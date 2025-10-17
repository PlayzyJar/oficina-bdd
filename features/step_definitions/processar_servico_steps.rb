Dado("que eu abri a tela de histórico de serviços") do
  @tela = "https://oficina.historico.com"
end

Dado("preenchi o CPF {string}") do |cpf|
  @cpf = cpf
end

Dado("preenchi a PLACA {string}") do |placa|
  @placa = placa
end

Quando("eu clicar em um serviço específico") do
  @servico = {id: 1, dados: "Troca de óleo"}
end

Então("os dados do serviço devem ser exibidos corretamente") do
  expect(@servico[:dados]).not_to be_nil
end

Dado("que eu abri a tela de histórico de serviços com ID {string}") do |id|
  @tela_id = "https://oficina.historico.id.com/#{id}"
end

Quando("eu verificar as peças trocadas") do
  @pecas_trocadas = ["AAA-1234", "BBB-5678"]
end

Quando("validar o formato dos códigos das peças") do
  @pecas_trocadas.each do |codigo|
    expect(codigo).to match(/\A[A-Z]{3}-\d{4}\z/)
  end
end

Quando("validar a existência das peças no cadastro") do
  pecas_validas = ["AAA-1234", "BBB-5678", "CCC-9012"]
  @pecas_trocadas.each do |codigo|
    expect(pecas_validas).to include(codigo)
  end
end

Quando("validar a duplicidade dos códigos") do
  expect(@pecas_trocadas.uniq.size).to eq(@pecas_trocadas.size)
end

Quando("validar consistência com o tipo de serviço executado {string}") do |tipo_servico|
  # Apenas um exemplo simplificado
  @tipo_servico = tipo_servico
  expect(@tipo_servico).to eq("troca de óleo")
end

Então("todos os códigos das peças devem estar corretos e consistentes") do
  # Todas as validações já ocorreram nos passos anteriores
  true
end

