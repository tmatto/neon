class Login < SitePrism::Page
    set_url 'https://id.heroku.com/login'

    element :email, '#email'
    element :senha, '#password'
    element :entrar, 'button[name="commit"]'
    element :msg_error, 'div[class="alert alert-danger"]'


    def with (user, password)
        self.email.set user
        self.senha.set password
        self.entrar.click
    end  
end