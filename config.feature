
            #language: pt

            # Descrição
            # Como cliente da EBAC-SHOP
            # Quero configurar meu produto de acordo com meu tamanho e gosto
            # E escolher a quantidade
            # Para depois inserir no carrinho

            # Critérios de Aceitação: ok
            # 1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
            # 2 – Deve permitir apenas 10 produtos por venda
            # 3 – Quando eu clicar no botão “limpar” deve voltar ao estado original

            Funcionalidade: Configuração de produto
            Como cliente da EBAC-SHOP, desejo configurar meu produto de acordo com meu tamanho e inserir no carrinho

            Contexto: Configuração do produto na EBAC-SHOP
            Dado que estou na página de configuração do produto

            Cenário: Configuração completa do produto
            Dado que selecionei a <cor>, o <tamanho> e a <quantidade>
            Quando clicar em "Adicionar ao carrinho"
            Então o produto deve ser adicionado ao carrinho

            Cenário: Limpar a configuração do produto
            Dado que selecionei a <cor>, o <tamanho> e a <quantidade>
            Quando clicar em "Limpar"
            Então a configuração do produto deve voltar ao estado original

            Exemplos:
            | cor     | tamanho | quantidade |
            | Azul    | M       | 2          |
            | Verde   | G       | 1          |
            | Amarelo | P       | 5          |

            Cenário: Seleção de campos obrigatórios
            Dado que o campo de seleção do <Campo>, está vazio
            Quando clicar em "Adicionar ao carrinho"
            Então devo ver uma <mensagem> informando que a seleção de <Campo> é obrigatória

            Exemplos:
            | Campo                 | Mensagem                               |
            | ----------------      | ----------------------------------     |
            | Seleção de cor        | "Por favor, selecione uma cor."        |
            | Seleção de tamanho    | "Por favor, selecione um tamanho."     |
            | Seleção de quantidade | "Por favor, selecione uma quantidade." |