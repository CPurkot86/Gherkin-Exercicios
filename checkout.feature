            #language: pt

            #Descrição
            #Como cliente da EBAC-SHOP
            #Quero fazer concluir meu cadastro
            #Para finalizar minha compra

            #Critérios de Aceitação:(ok)
            #1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            #2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            #3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

            Funcionalidade: Tela de cadastro Checkout
            Como cliente da EBAC-SHOP, gostaria de efetuar meu cadastrado para finalizar a compra

            Contexto: Logar na EBAC-SHOP
            Dado que estou na página de cadastro
            E que todos os campos estão visíveis e disponíveis para preenchimento

            Cenário: Cadastro completo
            Dado que estou na página de cadastro
            E preencho todos os dados obrigatórios (*)
            Quando clico em "Concluir Cadastro"
            Então o sistema deve exibir a mensagem "Cadastro concluído com sucesso"

            Cenário: Campo de e-mail inválido
            Dado que estou na página de cadastro
            E preencho todos os dados obrigatórios (*)
            E insiro um endereço de e-mail inválido: "<email_invalido>"
            Quando clico em "Concluir Cadastro"
            Então o sistema deve exibir a mensagem "Endereço de e-mail inválido"

            Cenário: Campos vazios
            Dado que estou na página de cadastro
            E deixo algum dos campos obrigatórios (*) vazios: "<campo_vazio>"
            Quando clico em "Concluir Cadastro"
            Então o sistema deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Cenário: Campos opcionais vazios
            Dado que estou na página de cadastro
            E preencho todos os campos obrigatórios (*)
            E deixo algum dos campos opcionais vazios: "<campo_opcional_vazio>"
            Quando clico em "Concluir Cadastro"
            Então o sistema deve exibir a mensagem "Cadastro concluído com sucesso"

            Esquema do Cenário: Cadastro completo com tabela de exemplos
            Dado que estou na página de cadastro
            E preencho os seguintes campos obrigatórios (*) com os seguintes valores:
            | Nome     | Sobrenome     | E-mail    | Senha     | Confirmação de Senha |
            | <nome_1> | <sobrenome_1> | <email_1> | <senha_1> | <confirmacao_1>      |
            | <nome_2> | <sobrenome_2> | <email_2> | <senha_2> | <confirmacao_2>      |
            | <nome_3> | <sobrenome_3> | <email_3> | <senha_3> | <confirmacao_3>      |
Quando clico em "Concluir Cadastro"
Então o sistema deve exibir a mensagem "Cadastro concluído com sucesso"