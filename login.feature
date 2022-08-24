            #language: pt

            #Descrição
            #Como cliente da EBAC-SHOP
            #Quero fazer o login (autenticação) na plataforma
            #Para visualizar meus pedidos

            #Critérios de Aceitação:
            #1 – Ao inserir dados válidos deve ser direcionado para a tela de meus pedidos
            #2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP, gostaria de efetuar login para verificar meus pedidos

            Contexto: Logar na EBAC-SHOP
            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuario "usuario_válido@teste.com.br"
            E a senha "senha@54321"
            Então deve exibir uma mensagem de boas vindas "Olá Fulano01!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuario "usuario_inexistente@teste.com.br"
            E a senha "senha@54321"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuario "usuario_válido@teste.com.br"
            E a senha "senha@12345"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                         | senha         | mensagem        |
            | "usuario_válido@teste.com.br"   | "senha@54321" | "Olá Fulano01!" |
            | "usuario_válido02@teste.com.br" | "senha@12345" | "Olá Fulano02!" |
            | "usuario_válido03@teste.com.br" | "senha@1111"  | "Olá Fulano03!" |