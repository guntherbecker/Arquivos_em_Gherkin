Funcionalidade: Configuração de produto no EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho, meu gosto e escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Configurar produto e adicionar ao carrinho
    Dado que estou na página de um produto
    Quando seleciono a cor, o tamanho, e a quantidade
    Então o botão "Adicionar ao carrinho" deve estar habilitado

  Cenário: Limite máximo de produtos
    Dado que estou configurando um produto
    Quando seleciono uma quantidade maior que 10
    Então deve exibir uma mensagem de erro
    E não deve permitir adicionar ao carrinho

  Cenário: Botão limpar
    Dado que já configurei cor, tamanho e quantidade
    Quando clico no botão "Limpar"
    Então todas as seleções devem voltar ao estado original

  Esquema do Cenário: Validação da quantidade de produtos
    Dado que estou na página de um produto
    Quando seleciono a quantidade <quantidade>
    Então o sistema deve exibir <mensagem>

    Exemplos:
      | quantidade | mensagem                          |
      | 1          | "Produto adicionado ao carrinho"  |
      | 5          | "Produto adicionado ao carrinho"  |
      | 10         | "Produto adicionado ao carrinho"  |
      | 11         | "Quantidade máxima permitida é 10"|
      | 15         | "Quantidade máxima permitida é 10"|


  Esquema do Cenário: Restaurar estado original ao clicar em "Limpar"
    Dado que configurei o produto com cor <cor>, tamanho <tamanho> e quantidade <quantidade>
    Quando clico no botão "Limpar"
    Então todas as seleções devem voltar ao estado original, o campo de <quantidade> deve estar vazio ou zerado,  o botão "Adicionar ao carrinho" deve estar desabilitado

    Exemplos:
      | cor     | tamanho | quantidade |
      | Azul    | M       | 2          |
      | Vermelho| G       | 5          |
      | Preto   | P       | 1          |
      | Verde   | GG      | 10         |

