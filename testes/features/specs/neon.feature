#language: pt
Funcionalidade: Automacao Web Neon

@pergunta
Cenario: Validar pergunta

    Dado acesso pagina de perguntas
    E Seleciono uma pergunta 
    Entao vejo a resposta 

@cartao  
Cenario: Validar status de servico

    Dado acesso pagina de status 
    E verifico o servico
    Entao vejo o msg "Funcionando normalmente"

