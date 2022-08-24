#language: pt

#Descrição
#Como cliente da EBAC-SHOP
#Quero fazer concluir meu cadastro
#Para finalizar minha compra

#Critérios de Aceitação:
#1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
#2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
#3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.


Funcionalidade: Tela de cadastro Checkout
Como cliente da EBAC-SHOP, gostaria de efetuar meu cadastrado para finalizar a compra

Contexto: Logar na EBAC-SHOP
Dado que estou logado

Cenário: Preencher campos Obrigatorio
Quando eu estiver na página de cadastro
E inserir todas as informações corretas nos campos com asteriscos do formulário
E clicar no finalizar a compra
Então deve concluir meu cadastro

Cenário: Validar campo de e-mail
Quando eu estiver na página de cadastro
E no campo e-mail coloquei os dados com formato invalido
E clicar no finalizar a compra
Então deve exibir uma mensagem de erro

Cenário: Validar Campos vazios exibir mensagem de alerta
Quando eu estiver na página de cadastro
E deixar os campos vazios
E clicar no finalizar a compra
Então devo exibir uma mensagem de alerta de campos obrigatórios

Cenário: Finalizar Compra com sucesso
Quando eu estiver na página de cadastro
E inserir todas as informações corretas nos campos obrigatórios
E clicar no Finalizar 
Então deve finalizar minha compra