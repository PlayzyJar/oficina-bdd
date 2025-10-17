# language: pt
Funcionalidade: Cadastrar cliente no sistema

  Cenário: Verificar se o campo de nome está vazio
    Quando abrir a tela inicial "https://oficina.com"
    E acessar a seção de cadastro de cliente
    E inserir o nome ""
    E clicar em cadastrar
    Então deve aparecer "Por favor, informe o nome do cliente"

  Cenário: Verificar se o formato do CPF é válido
    Quando abrir a tela inicial "https://oficina.com"
    E acessar a seção de cadastro de cliente
    E inserir o CPF "123.456.789-10"
    Então deve aparecer "Formato do CPF válido"
    E clicar em cadastrar
    Então deve aparecer "Informe um CPF válido"

  Cenário: Validar o CPF corretamente
    Quando abrir a tela inicial "https://oficina.com"
    E acessar a seção de cadastro de cliente
    E inserir o CPF "755.142.388-57"
    Então deve aparecer "Formato do CPF válido"
    E clicar em cadastrar
    Então deve aparecer "Cliente cadastro com sucesso!"
