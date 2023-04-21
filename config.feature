            #language: pt

            Funcionalidade: configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse o EBAC-SHOP

            Cenário: selecão de produto
            Quando eu selecionar o produto
            E a cor E tamanho E quantidade E clicar no botão "comprar"
            Então o produto será adicionado ao carrinho

            Cenário: quantidade máxima permitida
            Quando inserir quantidade do produto maior que 10
            Então deve exibir mensagem de alerta "quantidade máxima atingida"

            Cenário: limpar carrinho
            Dado eu adicione produtos ao carrinho
            Quando eu clicar no botão "limpar"
            Então os produtos serão removidos do carrinho

            Esquema do Cenário: configurar produto
            Dado que eu escolha o <produto>
            Quando selecionar <cor> E <tamanho> E <quantidade>
            Então produto sera direcionado ao carrinho

            | produto     | cor    | tamanho | quantidade |
            | calça jeans | azul   | M       | 1          |
            | camisa polo | preta  | G       | 5          |
            | vestido     | branca | GG      | 2          |
