#language: pt

Funcionalidade: Cadastro
  Sendo um aluno que deseja automatizar
  Posso realizar o cadastro
  Para desenvolver minha automação

Contexto: Acessar pagina de registro
  Dado que eu navego para a página de registro

@cadastro_sucesso
Cenário: Cadastro
  Quando realizo o meu cadastro com os dados 'bianca444', '123456' e 'bianca4444@mail.com'
  Então deve aparecer uma mensagem de sucesso 
  """
  SUCCESS! You have been registered. Please verify your email address before logging in.
  """

@senha_invalida
Cenário: Senha inválida
  Quando realizo o meu cadastro com os dados 'ccc', '123' e 'ccc@mail.com'
  Então deve aparecer uma mensagem de erro 
  """
  ERROR! Password must be a minimum of 6 characters!
  """