#language: pt
Funcionalidade: Login

@tentativa_login
Cenario: Tentativa de Login

    Dado que eu tenho os dados de login
      | email | teste@teste.com.br |
      | senha | secret             |
    Quando faço login
    Entao vejo a seguinte "There was a problem with your login."

