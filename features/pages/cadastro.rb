#encoding: utf-8

class CadastroPage

    def initialize
        get_element 'cadastro'
    end

    def visit_page
        text_exists?('Cadastre-se para fazer entregas')
    end
    
    def home
        click(@map['login'])
        sleep 1
    end

    def valida_page_cadastro
        text_exists?('Voltar para home')
    end

    def cadastro_uber_eats
        
    end
    
        
    def valida_cadastro
        text_exists?('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')
    end

       
end 
