            #language: pt

            #Descrição
            #Como cliente da EBAC-SHOP
            #Quero fazer o login (autenticação) na plataforma
            #Para visualizar meus pedidos

            #Critérios de Aceitação:(ok)
            #1 – Ao inserir dados válidos deve ser direcionado para a tela de meus pedidos
            #2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP, gostaria de efetuar login para verificar meus pedidos

            Contexto: Acesso à tela de login
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu inserir minhas credenciais válidas de login <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso de boas vindas

            Exemplos:
            | usuario                         | senha         | mensagem        |
            | "usuario_válido@teste.com.br"   | "senha@54321" | "Olá Fulano01!" |
            | "usuario_válido02@teste.com.br" | "senha@12345" | "Olá Fulano02!" |
            | "usuario_válido03@teste.com.br" | "senha@1111"  | "Olá Fulano03!" |
            | "usuario_válido03@teste.com.br" | "senha@1111"  | "Olá Fulano03!" |

            Cenário: Login mal-sucedido
            Quando eu inserir uma ou mais credenciais inválidas de login <usuario2>
            E a <senha>
            Então deve exibir a <mensagem> de de alerta de erro

            Exemplos:
            | usuario2                      | senha         | mensagem                     |
            | "usuario_válido@teste.com.br" | "senhaerrada" | "Usuário ou senha inválidos" |
            | "sem-email@kkkkkkkkkkkkkkkkk" | "senha@12345" | "Usuário ou senha inválidos" |
