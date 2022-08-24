#language: pt

#Descrição
#Como cliente da EBAC-SHOP
#Quero configurar meu produto de acordo com meu tamanho e gosto
#E escolher a quantidade
#Para depois inserir no carrinho

#Critérios de Aceitação:
#1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
#2 – Deve permitir apenas 10 produtos por venda
#3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

Funcionalidade: Configuração de produto
Como cliente da EBAC-SHOP, desejo configurar meu produto de acordo com meu tamanho e inserir no carrinho

Contexto: Logar na EBAC-SHOP
Dado que estou logado

Cenário: Escolher a cor do produto
Dado que selecinei o produto desejado
Quando configurar meu produto de acordo com cores disponiveis
Então devo ver a cor do produto conforme alteração

Cenário: Escolher o Tamanho do produto
Dado que selecine o produto desejado
Quando configurar meu produto de acordo com o tamanho desejado
Então devo ver o tamanho do produto conforme alteração

Cenário: Escolher a quantidade do produto
Dado que selecine o produto desejado
Quando inserir a quantidade
Então devo ver a quantidade aleterada

Cenário: Validar campos Obrigatorios
Dado que selecine o produto desejado
Quando inserir algum parametro de cor, quantidade ou tamanho vazio
Então devo ver a informação de parametro Obrigatorios

Cenário: Escolher a quantidade apenas 10 produtos por venda
Dado que selecine o produto desejado
Quando inserir a quantidade
E a opção deve permitir apenas 10 produtos por venda
Então devo ver a quantidade aleterada

Cenário: Validar campos Obrigatorios
Dado que selecine o produto desejado
Quando inserir algum parametro de cor, quantidade ou tamanho vazio
Então devo ver a informação de parametro Obrigatorios

Cenário: Validar a ação do Limpar
Dado que selecine o produto desejado
Quando inserir algum parametro de cor, quantidade ou tamanho vazio e Limpar
Então devo ver as informações ao estado original

Cenário: incluir produto no carrinho
Dado que incluo um produto no carrinho com parametos Obrigatorios
Quando eu acessar o carrinho
Então devo ver o produto configurado no carrinho