Dado("acesso pagina de perguntas") do
  @acessar = Faq.new
  @acessar.load
end

Dado("Seleciono uma pergunta") do
  @duvida = Faq.new
  @duvida.neon_cartao 
end

Entao("vejo a resposta") do
@texto = Faq.new

a ="Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)"
b = "Não cobramos mensalidade e anuidade, não fazemos você pegar fila e não exigimos mil papéis para você abrir sua conta. Aqui é tudo bem mais simples!"

expect(a).to eql @texto.p1.text
expect(b).to eql @texto.p2.text



end