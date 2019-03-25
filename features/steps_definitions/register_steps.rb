Dado("que eu navego para a página de registro") do
    
    @cadastro = RegisterPage.new
    @cadastro.acessar

end
  
  Quando("realizo o meu cadastro com os dados {string}, {string} e {string}") do |nome, senha, email|
    
    @cadastro.cadastro(nome, senha, email)
  end
  
Então("deve aparecer uma mensagem de sucesso") do |mensagem|
    
    expect(@cadastro.msg_sucesso.text).to eql mensagem
end