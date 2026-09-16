# language: pt
Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de Checkout da loja EBAC-SHOP

  Esquema do Cenário: Validação do formato do campo e-mail
    Quando eu preencher o campo e-mail com <email_informado>
    E submeter o formulário
    Então o sistema deve exibir a mensagem <mensagem>

    Exemplos:
      | email_informado          | mensagem                      |
      | "cliente@ebac.com.br"    | "E-mail válido"               |
      | "cliente_sem_arroba.com" | "E-mail com formato inválido" |
      | "cliente@dominio"        | "E-mail com formato inválido" |

  Cenário: Cadastro com todos os campos obrigatórios preenchidos
    Quando eu preencher todos os campos obrigatórios
    E clicar no botão "FINALIZAR COMPRA"
    Então a compra deve ser finalizada com sucesso

  Esquema do Cenário: Cadastro com campos obrigatórios em branco
    Quando eu deixar o campo obrigatório <campo> em branco
    E clicar no botão "FINALIZAR COMPRA"
    Então o sistema deve exibir a mensagem de alerta "Preencha todos os campos obrigatórios (*)"

    Exemplos:
      | campo       |
      | "Nome"      |
      | "Sobrenome" |
      | "Endereço"  |
      | "E-mail"    |
