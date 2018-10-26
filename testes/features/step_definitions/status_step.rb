Quando("acesso pagina de status") do
    click_link('Status') 
  end
  
  Quando("verifico o servico") do
    find('div:nth-child(13) > div > p').hover.click

  end

  Entao("vejo o msg {string}") do |status|
    #page.has_content?(status)
    page.should have_content(status)
    
  end
  
