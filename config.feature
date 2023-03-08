
#language: pt

# Descrição
# Como cliente da EBAC-SHOP
# Quero configurar meu produto de acordo com meu tamanho e gosto
# E escolher a quantidade
# Para depois inserir no carrinho

# Critérios de Aceitação: (ok)
# 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
# 2 – Deve permitir apenas 10 produtos por venda
# 3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

Funcionalidade: Configuração de produto
Como cliente da EBAC-SHOP, desejo configurar meu produto de acordo com meu tamanho e inserir no carrinho

Contexto: Logar na EBAC-SHOP
Dado que estou logado com esquema de cenários

Cenário: Configuração completa do produto
Dado que estou na página de configuração do produto
E seleciono a <cor>
E seleciono o <tamanho>
E insiro a <quantidade>
Quando clico em "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho

Exemplos:
| cor     | tamanho | quantidade |
| Azul    | M       | 2          |
| Verde   | G       | 1          |
| Amarelo | P       | 5          |

Cenário: Seleção de cor obrigatória
Dado que estou na página de configuração do produto
E o campo de seleção de cor está vazio
Quando clico em "Adicionar ao carrinho"
Então devo ver uma mensagem informando que a seleção de cor é obrigatória

Cenário: Seleção de tamanho obrigatória
Dado que estou na página de configuração do produto
E o campo de seleção de tamanho está vazio
Quando clico em "Adicionar ao carrinho"
Então devo ver uma mensagem informando que a seleção de tamanho é obrigatória

Cenário: Seleção de quantidade obrigatória
Dado que estou na página de configuração do produto
E o campo de quantidade está vazio
Quando clico em "Adicionar ao carrinho"
Então devo ver uma mensagem informando que a seleção de quantidade é obrigatória

Cenário: Limpar a configuração do produto
Dado que estou na página de configuração do produto
E já selecionei a cor, o tamanho e a quantidade
Quando clico em "Limpar"
Então a configuração do produto deve voltar ao estado original