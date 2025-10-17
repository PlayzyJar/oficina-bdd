# language: pt
Funcionalidade: Cadastrar veículo no sistema

  Cenário: Verificar se a placa do veículo é válida
    Quando abrir a tela inicial "https://oficina.com"
    E acessar a seção de cadastro de veículo
    E inserir a placa "HMG-0248"
    E clicar em cadastrar
    Então deve aparecer "Veículo cadastrado com sucesso"

  Cenário: Travar cadastro quando a API de validação estiver inacessível
    Quando abrir a tela inicial "https://oficina.com"
    E acessar a seção de cadastro de veículo
    E inserir a placa "HMG-0248"
    E clicar em cadastrar
    Então deve aparecer "Por problemas técnicos, não foi possível verificar a placa de seu carro. Tente novamente mais tarde"
