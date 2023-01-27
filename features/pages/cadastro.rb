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

    def cadastro_uber_eats(metodo_entrega)
        case metodo_entrega
        when "Moto"
        set(@map['name'], "José Augusto Leite dos Santos")
        set(@map['cpf'], "12345678900")
        set(@map['email'], "joseaugusto10@gmail.com")
        set(@map['whatsapp'], "998078856")
        sleep 2
        scroll_to(@map['numero_casa'])
        sleep 3
        set(@map['cep'], "54759195")
        click(@map['btn_cep'])
        set(@map['numero_casa'], "215")
        set(@map['complemento'], "Casa")
        click(@map['metodo_moto'])
        scroll_to(@map['upload'])
        sleep 2
        upload
        sleep 1
        click(@map['btn_cadastrar'])
        sleep 1
        when "Bicicleta"

        when "Van_carro"

        else 
            puts "Escolha uma opção valida!"
        end
    end
    
        
    def valida_cadastro
        text_exists?('Recebemos os seus dados. Fique de olho na sua caixa de email, pois e em breve retornamos o contato.')
    end

       
end 
