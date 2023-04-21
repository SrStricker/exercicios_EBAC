            #languagem: pt

            Funcionalidade: checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que acesse a tela de checkout

            Cenário: cadastro valido
            Quando realizar cadastro com email e senhas validos
            E preencher todos campos obrigatórios demarcados com asterisco
            Então deve conseguir finalizar a compra

            Cenário: campo e-mail inválido
            Quando preencher o campo email com formato inexistente
            Então será exibido mensagem de erro "formato inválido"

            Cenário: campos vazio
            Quando tentar finalizar a compra sem preencher os campos de cadastro
            Então exibira mensagem de alerta "favor preencher todos os campos obrigatórios"

            Esquema do Cenário:
            Dado que acesse a tela de checkout
            Quando cadastrar <usuario> valido
            E <senha> valida
            Então exibria <mensagem> de sucesso ou erro.

            | usuario            | senha       |
            | luciano@gmail.com  | luciano@123 | cadastro valido |
            | luciano@myname.com | luciano@123 | formato invalido |
            | EBAC@outlook.com   | ebac@1010   | cadastro valido |