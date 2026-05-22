Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Cenário: Login com dados válidos
    Dado que estou na página de login
    Quando insiro o usuário "cliente@ebac.com"
    E insiro a senha "senhaValida123"
    Então devo ser direcionado para a tela de checkout

  Esquema do Cenário: Login com dados inválidos
    Dado que estou na página de login
    Quando insiro o usuário <usuario>
    E insiro a senha <senha>
    Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario             | senha           |
      | cliente@ebac.com    | senhaErrada     |
      | usuarioInvalido     | senhaValida123  |
      | usuarioInvalido     | senhaErrada     |

