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

    def cadastro_uber_eats metodo_entrega
        case metodo_entrega
        when "Moto"
            set(@map['name'], faker_name)
            set(@map['cpf'], faker_cpf)
            set(@map['email'], faker_email)
            set(@map['whatsapp'], faker_number)
            scroll_to(@map['numero_casa'])
            set(@map['cep'], faker_cep)
            click(@map['btn_cep'])
            set(@map['numero_casa'], "10")
            set(@map['complemento'], "Casa")
            click(@map['metodo_moto'])
            scroll_to(@map['upload'])
            sleep 2
            upload
            sleep 1
            click(@map['btn_cadastrar'])
            sleep 1
        when "Bicicleta"
            set(@map['name'], faker_name)
            set(@map['cpf'], faker_cpf)
            set(@map['email'], faker_email)
            set(@map['whatsapp'], faker_number)
            scroll_to(@map['numero_casa'])
            set(@map['cep'], faker_cep)
            click(@map['btn_cep'])
            set(@map['numero_casa'], "10")
            set(@map['complemento'], "Casa")
            click(@map['metodo_bicicleta'])
            scroll_to(@map['upload'])
            sleep 2
            upload
            sleep 1
            click(@map['btn_cadastrar'])
            sleep 1
        when "Van_carro"
            set(@map['name'], faker_name)
            set(@map['cpf'], faker_cpf)
            set(@map['email'], faker_email)
            set(@map['whatsapp'], faker_number)
            scroll_to(@map['numero_casa'])
            set(@map['cep'], faker_cep)
            click(@map['btn_cep'])
            set(@map['numero_casa'], "10")
            set(@map['complemento'], "Casa")
            click(@map['metodo_van_carro'])
            scroll_to(@map['upload'])
            sleep 2
            upload
            sleep 1
            click(@map['btn_cadastrar'])
            sleep 1
        else 
            puts "Escolha uma opção valida!"
        end
    end
    
        
    def valida_cadastro
        text_exists?('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')
    end

       
end 
