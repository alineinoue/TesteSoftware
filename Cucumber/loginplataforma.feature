            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Autenticação válida
            Dado acessar a plataforma com os seguintes usuários:

            | usuário                | senha      |
            | "usuario1@ebac.com.br" | "Teste123" |
            | "usuario2@ebac.com.br" | "Teste123" |
            | "usuario3@ebac.com.br" | "Teste123" |

            Quando clicar no botão "Entrar"
            Então deve ser redirecionado para a tela de Checkout

            Cenário: Usuário com senha inválida
            Dado acessar a plataforma para realizar o login
            Quando eu digitar o usuário "usuario1@ebac.com.br" e a senha "Teste"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Dado acessar a plataforma para realizar o login
            Quando inserir o <email> e <senha>
            Então deve exibir a <mensagem>

            Exemplos:

            | email                  | senha      | mensagem                     |
            | "usuario1@ebac.com.br" | "Teste123" | "Olá Usuário 1"              |
            | "usuario2@ebac.com.br" | "Teste"    | "Usuário ou senha inválidos" |
            | "usuario3@ebac.com.br" | "Teste123" | "Olá Usuário 3"              |



