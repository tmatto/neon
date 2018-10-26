class Faq < SitePrism::Page
    set_url 'https://www.neon.com.br/perguntas'

    element :duvida, 'ul:nth-child(10)> li:nth-child(3) > label'
    element :p1, 'ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)'
    element :p2, 'ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(3)'


    def neon_cartao   
        duvida.click

    end

    def validamsg  
        p1.text
        p2.text
        a = "Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)"
        b = "Não cobramos mensalidade e anuidade, não fazemos você pegar fila e não exigimos mil papéis para você abrir sua conta. Aqui é tudo bem mais simples!"
        
        #expect(a).to eql p1
        #expect(b).to eql p2

    end

end

class Status < SitePrism::Page
    set_url 'https://www.neon.com.br/atualizacoes/status/'

    element :servico_cartao, 'div:nth-child(13) > div > p'

    def servico
        servico_cartao.hover.click
        
    end

end
