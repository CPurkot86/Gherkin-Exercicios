            #language: pt

            #Descrição
            #Como cliente da EBAC-SHOP
            #Quero fazer concluir meu cadastro
            #Para finalizar minha compra

            #Critérios de Aceitação: ok
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
            Quando preencho todos os campos obrigatórios (*) com um endereço de "e-mail inválido"
            E clico em "Concluir Cadastro"
            Então devo ver a mensagem de erro "Endereço de e-mail inválido"

            Cenário: Campos vazios
            Dado que estou na página de cadastro
            E deixo algum dos campos obrigatórios (*) vazios: "<campo_vazio>"
            Quando clico em "Concluir Cadastro"
            Então o sistema deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Cadastro completo com tabela de exemplos
            Dado que estou na página de cadastro
            E preencho os seguintes campos obrigatórios (*) com os seguintes valores:
            | Nome                | Sobrenome | E-mail                   | Senha          | Confirmação de Senha |
            | João Purkot         | Purkot    | joao.purkot@gmaillll.com | senha123       | senha123             |
            | Maria Cleusa Purkot | Cleuza    | maria.cp@yahoooo.com     | senha456       | senha456             |
            | usuário ABC         | Abc       | abc@bol.com              | senh@forte2023 | senh@forte2023       |
            | usuário 2 ABC       | 2 Abc     | abc2.abc2@hotmail.com    | senha_123abc   | senha_123abc         |
            | Usuário XPTO        | XPTO      | xpto_1980@uol.br         | 12345678       | 12345678             |
            | Usuário XPTO2       | XPT02     | xpto2_02@ig.com.br       | senha&2023     | senha&2023           |
            | Usuário XYZ         | XYZ       | junior_xyz@ebac.com      | abc123!@#      | abc123!@#            |

Quando clico em "Concluir Cadastro"
Então o sistema deve exibir a mensagem "Cadastro concluído com sucesso"