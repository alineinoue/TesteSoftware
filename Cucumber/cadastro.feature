            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário esteja na página de Checkout

            Cenário: Cadastro com campos obrigatórios preenchidos
            Quando o usuário preencher todos os campos obrigatórios com dados válidos
            Então deve aceitar o cadastro e permitir a finalização da compra.

            Cenário: Cadastro com e-mail no formato válido
            Quando entrar com os seguintes e-mails:
            
            | emails                |
            | "usuario1@ebac.com.br" |
            | "usuario2@ebac.com.br" | 
            | "usuario3@ebac.com.br" | 

            Então o sistema deve aceitar o cadastro e permitir a finalização da compra.

            Esquema do Cenário: Cadastro com e-mail no formato inválido
            Quando o usuário preencher o campo com o <email>
            Então deve exibir uma mensagem de erro informando que o formato do e-mail é inválido

            Exemplos:

            | email             |
            | "usuario1@ebac"   |
            | "usuario2.hotmail |
            | "usuario3@        |

            Cenário: Cadastro com campos obrigatórios vazios
            Quando o usuário deixa um ou mais campos obrigatórios vazios sem preencher
            Então o sistema deve exibir uma mensagem de alerta 


