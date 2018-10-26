
Dado("acesso pagina de status") do
  @acessar = Status.new
  @acessar.load
end

Dado("verifico o servico") do
  @verificar = Status.new
  @verificar.servico
end

Entao("vejo o msg {string}") do |status|
  page.has_content?(status)

end