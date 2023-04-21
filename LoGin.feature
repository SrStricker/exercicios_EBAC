            #language: pt

            Funcionalidade: login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o EBAC-SHOP

            Cenário: usuário Valido
            Quando eu digitar usuário "lucas123@gmail.com"
            E senha "lucas123"
            Então sera direcionado para tela de check out

            Cenário: usuário invalido
            Quando eu digitar usuário "xxpotalxx@gmail.com"
            E senha "ola123"
            Então deve exibir mensagem "Usuário ou senha inválidos"

            Cenário: senha invalida
            Quando eu digitar usuário "lucas123@gmail.com"
            E senha "ola123"
            Então deve exibir mensagem "Usuário ou senha inválidos"

            Esquema do Cenário: multiplos usuarios ou senha invalidos
            Quando eu digitar <usuario>
            E <senha>
            Então deve exibir <mensagem>

            | usuario             | senha      | mensagem                   |
            | xxpotalxx@gmail.com | ola123     | Usuário ou senha inválidos |
            | hello@gamil.com     | ksdh152    | Usuário ou senha inválidos |
            | motomoto@gmail.com  | momo123    | Usuário ou senha inválidos |
            | mariobros@gmail.com | peach321   | Usuário ou senha inválidos |
            | fadaebac@gmail.com  | ebact@P123 | Usuário ou senha inválidos |