# language: pt
Funcionalidade: Login na plataforma EBAC-SHOP
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de autenticação "Minha Conta"

  Cenário: Autenticação realizada com sucesso
    Quando eu inserir o usuário "cliente.ebac@teste.com"
    E digitar a senha "SenhaSegura123"
    E clicar no botão "LOGIN"
    Então devo ser direcionado para a tela de checkout

  Esquema do Cenário: Autenticação com dados inválidos
    Quando eu digitar o usuário <usuario>
    E a senha <senha>
    E clicar no botão "LOGIN"
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"

    Exemplos:
      | usuario                      | senha            |
      | "usuario_invalido@teste.com" | "SenhaSegura123" |
      | "cliente.ebac@teste.com"     | "SenhaErrada999" |
      | "invalido@teste.com"         | "SenhaErrada999" |

