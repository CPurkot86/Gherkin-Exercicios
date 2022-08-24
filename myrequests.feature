#language: pt

#Descrição
#Como cliente da EBAC-SHOP
#Quero fazer o login (autenticação) na plataforma
#Para visualizar meus pedidos

#Critérios de Aceitação:
#1 – Ao inserir dados válidos deve ser direcionado para a tela de meus pedidos

Funcionalidade: visualizar meus pedidos
Como cliente da EBAC-SHOP, gostaria de visualizar meus pedidos

Contexto: Logar na EBAC-SHOP
Dado que estou logado

Cenário: Visualizar meus pedidos
Quando eu acessar o menu meus pedidos
Então devo ver a tela de meus pedidos

