class Faq < SitePrism::Page
    set_url 'https://www.neon.com.br/perguntas'

    element :duvida, 'ul:nth-child(10)> li:nth-child(3) > label'
    element :p1, 'ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)'
    element :p2, 'ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(3)'


    def neon_cartao   
        duvida.click

    end


end

class Status < SitePrism::Page
    set_url 'https://www.neon.com.br/atualizacoes/status/'

    element :servico_cartao, 'div:nth-child(13) > div > p'

    def servico
        servico_cartao.hover.click
        
    end

end
