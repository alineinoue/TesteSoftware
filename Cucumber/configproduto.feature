            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto, escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página do produto

            Cenário: Adicionar produto ao carrinho sem cor, tamanho ou quantidade
            Quando eu adicionar um produto ao carrinho sem selecionar a cor, tamanho ou quantidade
            Então deve exibir uma mensagem de erro

            Esquema do Cenário: Limite de vendas de produto
            Quando eu selecionar a cor, tamanho e <quantidade>
            Então deve exibir a <mensagem>

            Exemplos:

            | quantidade | mensagem                                               |
            | 3          | "Produto adicionado ao carrinho"                       |
            | 7          | "Produto adicionado ao carrinho"                       |
            | 10         | "Você atingiu o limite máximo de quantidade por item." |
            | 12         | "O limite máximo de quantidade por item é 10."         |

            Cenário: Validar botão de Limpar
            Quando selecionar uma cor, tamanho e quantidade 
            E clicar no botão de "Limpar"
            Então o campo de cor, tamanho e quantidade deverão ser redefinidos e voltar ao estado original



