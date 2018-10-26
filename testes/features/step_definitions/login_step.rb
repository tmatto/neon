Dado("que eu tenho os dados de login") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    visit('https://id.heroku.com/login')
    @email = table.rows_hash['email']
    @password = table.rows_hash['senha']
  end
  
  Quando("faço login") do
    find('#email').set @email
    find('#password').set @password
    find('button[name="commit"]').click
  
  end
  
  Entao("vejo a seguinte {string}") do |msg|
    msgsite = find('div[class="alert alert-danger"]').text
    expect(msg).to eql msgsite
  end