Dado("que eu tenho os dados de login") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    @email = table.rows_hash['email']
    @password = table.rows_hash['senha']
  end
  
  Quando("faço login") do
    @home = Login.new
    @home.load
    @home.with(@email, @password)
  
  end
  
  Entao("vejo a seguinte {string}") do |msg|
    expect(@home.msg_error.text).to eq msg
  end