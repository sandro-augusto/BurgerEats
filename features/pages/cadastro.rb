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
    
    def teste_cadastro dados
        case dados
        when "nome" 
        set(@map['cpf'], faker_cpf)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        set(@map['numero_casa'], faker_numero)
        set(@map['complemento'], faker_complemento)
        click(@map['metodo_moto']) 
        scroll_to(@map['upload'])
        sleep 1
        upload
        sleep 1
        click(@map['btn_cadastrar'])

        when "cpf"
        set(@map['name'], faker_name)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        set(@map['numero_casa'], faker_numero)
        set(@map['complemento'], faker_complemento)
        click(@map['metodo_moto']) 
        scroll_to(@map['upload'])
        sleep 1
        upload
        sleep 1
        click(@map['btn_cadastrar'])
    
        when "email"
        set(@map['name'], faker_name)
        set(@map['cpf'], faker_cpf)
        set(@map['whatsapp'], faker_number)
        set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        set(@map['numero_casa'], faker_numero)
        click(@map['metodo_moto']) 
        sleep 1
        click(@map['btn_cadastrar'])

        when "cep"
        set(@map['name'], faker_name)
        set(@map['cpf'], faker_cpf)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        click(@map['btn_cep'])
        click(@map['metodo_moto']) 
        click(@map['btn_cadastrar'])

        when "number"
        set(@map['name'], faker_name)
        set(@map['cpf'], faker_cpf)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        set(@map['complemento'], faker_complemento)
        click(@map['metodo_moto']) 
        click(@map['btn_cadastrar'])

        when "metodo_entrega"
        set(@map['name'], faker_name)
        set(@map['cpf'], faker_cpf)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        set(@map['numero_casa'], faker_numero)
        set(@map['complemento'], faker_complemento)
        click(@map['btn_cadastrar'])

        when "foto_cnh"
        set(@map['name'], faker_name)
        set(@map['cpf'], faker_cpf)
        set(@map['email'], faker_email)
        set(@map['whatsapp'], faker_number)
        set(@map['cep'], faker_cep)
        click(@map['btn_cep'])
        set(@map['numero_casa'], faker_numero)
        set(@map['complemento'], faker_complemento)
        click(@map['metodo_moto'])
        click(@map['btn_cadastrar'])

        when "verificar_tudo"
        # set(@map['name'], faker_name)
        click(@map['btn_cadastrar'])

        end  
    end


    def valida_teste(dados, valor)
        case dados
            when "nome"
                # text_exists?(valor)
                get_text(@map['valida_nome']).include?(valor)
                sleep 3
            when "cpf"
                # text_exists?(valor)
                get_text(@map['valida_cpf']).include?(valor)
            when "email"
                # text_exists?(valor)
                get_text(@map['valida_email']).include?(valor)
                sleep 3
                when "cep"
                get_text(@map['valida_cep']).include?(valor)
                sleep 3
            when "number"
                # text_exists?(valor)
                get_text(@map['valida_number']).include?(valor)
                sleep 3
            when "metodo_entrega"
                # text_exists?(valor)
                get_text(@map['valida_metodo_entrega']).include?(valor)
                sleep 3
            when "foto_cnh"
                # text_exists?(valor)
                get_text(@map['valida_foto_cnh']).include?(valor)
                sleep 3
                
            when "verificar_tudo"
                get_text(@map['valida_nome'])
                get_text(@map['valida_cpf'])
                get_text(@map['valida_email'])
                get_text(@map['valida_cep'])
                get_text(@map['valida_number'])
                get_text(@map['valida_metodo_entrega'])
                get_text(@map['valida_foto_cnh'])
                sleep 5
        end

    end

end 
