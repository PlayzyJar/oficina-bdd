# language: pt

Funcionalidade: Processar o serviço realizado
  Como mecânico ou recepcionista
  Quero processar os serviços realizados
  Para garantir que todas as peças e serviços estejam registrados corretamente

  Cenário: Verificar o registro de início e término do serviço
    Dado que eu abri a tela de histórico de serviços
    E preenchi o CPF "111.111.111-11"
    E preenchi a PLACA "ABC1234"
    Quando eu clicar em um serviço específico
    Então os dados do serviço devem ser exibidos corretamente

  Cenário: Validar o(s) código(s) da(s) peça(s) trocada(s)
    Dado que eu abri a tela de histórico de serviços com ID "123"
    Quando eu verificar as peças trocadas
    E validar o formato dos códigos das peças
    E validar a existência das peças no cadastro
    E validar a duplicidade dos códigos
    E validar consistência com o tipo de serviço executado "troca de óleo"
    Então todos os códigos das peças devem estar corretos e consistentes

