#language: pt
Funcionalidade: Automacao Web Neon

@pergunta
Cenario: Validar pergunta

    Dado que acesse o site da Neon
    Quando acesso pagina de perguntas
    E Seleciono uma pergunta
    Entao vejo a resposta 


@cartao
Cenario: Validar status de servico

    Dado que acesse o site da Neon
    Quando acesso pagina de status
    E verifico o servico
    Entao vejo o msg "Funcionando normalmente"

