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
    end

    def valida_page_cadastro
        text_exists?('Voltar para home')
    end

    def cadastro_uber_eats tipos
        set(@map['name'], faker_name)
        set(@map['cpf'], faker_cpf)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        # set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        # set(@map['numero_casa'], faker_numero)
        # set(@map['complemento'], faker_complemento)
        sleep 5
        case tipos
        when "moto"
          click(@map['metodo_moto']) 
          scroll_to(@map['upload'])
          sleep 2
          upload   

        when "bicicleta"
         click(@map['metodo_bicicleta'])
         scroll_to(@map['upload']) 
         sleep 2
         upload_1

        when "van_carro"
        click(@map['metodo_van_carro'])
        scroll_to(@map['upload'])
        sleep 2  
        upload_2   
        else
            puts "Favor informar a opção correta" 
        end
        click(@map['btn_cadastrar'])
        sleep 12
    end
        
    def valida_cadastro
        sleep 2
        text_exists?('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')
    end
    
    # def method_name
        
    # end
end 
