Dado("acesso pagina de perguntas") do
  @acessar = Faq.new
  @acessar.load
end

Dado("Seleciono uma pergunta") do
  @duvida = Faq.new
  @duvida.neon_cartao 
end

Entao("vejo a resposta") do
#@texto = Faq.new
#@texto.validamsg
a = find('ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)').text
b = find('ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(3)').text

p1 ="Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)"
p2 = "Não cobramos mensalidade e anuidade, não fazemos você pegar fila e não exigimos mil papéis para você abrir sua conta. Aqui é tudo bem mais simples!"

expect(p1).to eql a
expect(p2).to eql b



end