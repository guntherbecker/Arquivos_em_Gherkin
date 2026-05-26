Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Esquema do Cenário: Validação do cadastro no checkout
    Dado que estou na tela de cadastro
    Quando insiro o nome <nome>, o e-mail <email>, o endereço <endereco>,e o telefone <telefone>
    Então o sistema deve exibir <mensagem>

    Exemplos:
      | nome        | email                  | endereco           | telefone     | mensagem                                |
      | João Silva  | joao.silva@teste.com   | Rua A, 123         | 21999999999  | "Cadastro concluído com sucesso"        |
      | Maria Souza | maria.souza@teste.com  | Av. Central, 456   | 21988888888  | "Cadastro concluído com sucesso"        |
      | Pedro Lima  | pedro.lima@teste       | Rua B, 789         | 21977777777  | "Formato de e-mail inválido"            |
      | Ana Costa   |                        | Av. Atlântica, 321 | 21966666666  | "Campos obrigatórios não podem ser vazios" |
      | Carlos Dias | carlos.dias@teste.com  |                    | 21955555555  | "Campos obrigatórios não podem ser vazios" |





