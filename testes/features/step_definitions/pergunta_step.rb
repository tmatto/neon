Dado("que acesse o site da Neon") do
    visit 'https://www.neon.com.br/'
  end
  
  Quando("acesso pagina de perguntas") do
    click_link('Perguntas') 
    
  end
  
  Quando("Seleciono uma pergunta") do
    find('ul:nth-child(10) > li:nth-child(3) > label').click
    
   
  end
  
  Entao("vejo a resposta") do
    
    a = find('ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)').text
    b = find('ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(3)').text

    p1 ="Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)"
    p2 = "Não cobramos mensalidade e anuidade, não fazemos você pegar fila e não exigimos mil papéis para você abrir sua conta. Aqui é tudo bem mais simples!"

    expect(p1).to eql a
    expect(p2).to eql b


  end