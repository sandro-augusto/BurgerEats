#encoding: utf-8

class CadastroPage

    def initialize
        get_element 'cadastro'
    end

    def visit_page
        text_exists?('Cadastre-se para fazer entregas')
    end
    
    def home
        click(@map['cadastro_entrega'])
        sleep 1
        set(@map['cep'], faker_cep)
        press_tab
        press_enter
        sleep 10
    end

    def valida_page_cadastro
        text_exists?('Voltar para home')
    end

    def cadastro_uber_eats_guto
        
        case tipos
        when "moto"
          click(@map['metodo_moto']) 
          sleep 3 
          upload   

        when "bicicleta"
         click(@map['metodo_bicicleta'])   
         sleep 2
         upload_1

        when "van/carro"
        click(@map['metodo_van_carro']) 
        sleep 2  
        upload_2   
        else
            puts "Favor informar a opção correta" 
        end
        click(@map['btn_cadastrar'])
    end
        
    def valida_cadastro
        sleep 2
        text_exists?('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')
    end
end 
