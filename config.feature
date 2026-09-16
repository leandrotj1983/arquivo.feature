# language: pt
Funcionalidade: Configuração de produto na EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de detalhe do produto "Augusta Pullover Jacket"

  Cenário: Configuração válida e inserção no carrinho
    Quando eu selecionar o tamanho "S", selecionar a cor "Orange" e definir a quantidade em "2" e clicar no botão "COMPRAR"
    Então o produto deve ser adicionado ao carrinho com sucesso

  Cenário: Tentativa de inserção sem seleções obrigatórias
    Quando eu clicar no botão "COMPRAR" sem selecionar tamanho ou cor
    Então o sistema deve exibir um alerta exigindo a seleção obrigatória de cor, tamanho e quantidade

  Cenário: Limite de quantidade máxima de produtos por venda
    Quando eu selecionar o tamanho "M" e selecionar a cor "Blue" e definir a quantidade em "11" e clicar no botão "COMPRAR"
    Então o sistema deve exibir uma mensagem de erro informando o limite máximo de 10 produtos por venda

  Cenário: Restaurar estado original do produto
    Quando selecionar o tamanho "XL", a cor "Red" e a quantidade "5" e eu clicar no botão "Limpar"
    Então todas as seleções de tamanho, cor e quantidade devem retornar ao estado original padrão
