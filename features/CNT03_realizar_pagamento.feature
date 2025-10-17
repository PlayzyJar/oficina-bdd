# language: pt
Funcionalidade: Realizar pagamento

  Cenário: Verificar pagamento válido por PIX
    Quando abrir a tela de pagamento em "https://oficina.pagamento.com"
    E selecionar o método de pagamento "PIX"
    E efetuar o pagamento no app bancário
    E confirmar a transação
    Então o status de pagamento deve ser confirmado no sistema

  Cenário: Validar o somatório dos serviços e peças
    Quando abrir a tela de detalhamento da cobrança em "https://oficina.pagamento.id.com"
    E listar valores dos serviços realizados
    E listar valores das peças utilizadas
    Então o total exibido deve corresponder à soma correta dos itens

  Cenário: Validar a data de vencimento do boleto
    Quando abrir a tela de geração de boleto em "https://oficina.pagamento.id.boleto.com"
    E gerar o boleto bancário
    Então o boleto deve ter data de emissão atual
    E data de vencimento três dias após a emissão
    E o vencimento não pode ser anterior à data de emissão
