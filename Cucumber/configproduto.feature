            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto, escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página do produto

            Cenário: Adicionar produto ao carrinho sem cor
            Quando eu adicionar um produto ao carrinho sem selecionar a cor
            Então deve exibir uma mensagem de erro: "Por favor, selecione uma cor"

            Cenário: Adicionar produto ao carrinho sem tamanho
            Quando eu adicionar um produto ao carrinho sem selecionar o tamanho
            Então deve exibir uma mensagem de erro "Por favor, selecione um tamanho"

            Cenário: Adicionar produto ao carrinho sem quantidade
            Quando eu adicionar um produto ao carrinho sem selecionar a quantidade
            Então deve exibir uma mensagem de erro "Por favor, selecione uma quantidade"

            Esquema do Cenário: Limite de vendas de produto
            Quando eu selecionar a cor
            E selecionar o tamanho
            E selecionar a <quantidade>
            Então deve exibir a <mensagem>

            Exemplos:

            | quantidade | mensagem                                               |
            | 3          | "Produto adicionado ao carrinho"                       |
            | 7          | "Produto adicionado ao carrinho"                       |
            | 10         | "Você atingiu o limite máximo de quantidade por item." |
            | 12         | "O limite máximo de quantidade por item é 10."         |

            Cenário: Validar botão de Limpar
            Quando selecionar uma cor
            E selecionar o tamanho
            E selecionar a quantidade
            E clicar no botão de "Limpar"
            Então o campo de cor, tamanho e quantidade deverão ser redefinidos
            E devem voltar ao estado original



