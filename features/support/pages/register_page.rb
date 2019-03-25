
class RegisterPage < SitePrism::Page

    element :name, '#username'
    element :senha, '#password'
    element :rep_senha, '#password_again'
    element :input_email, '#email'
    element :btn_salvar, '.btn-block'
    element :msg_sucesso, '.alert-success'


    def acessar
        visit 'https://opentdb.com/register.php'
        sleep(3)
    end

    def cadastro(nome,password,email)
       name.set nome
       senha.set password 
       rep_senha.set password
       input_email.set email
       btn_salvar.click
    end

end