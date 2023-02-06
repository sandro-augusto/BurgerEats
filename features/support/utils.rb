#encoding: utf-8

require 'yaml'
require 'faker'
require 'cpf_faker'


def get_element(screen)
    dir = "#{Dir.pwd}/features/elements/#{screen}_screen.yml"
    element_map = YAML.load_file(dir)
    @map = element_map[screen]
end

def faker_name
    Faker::Name.name
end

def faker_email
    Faker::Internet.email
end

def faker_number
    Faker::Config.locale = 'pt-BR'
    Faker::PhoneNumber.phone_number
end

def faker_cpf
    Faker::CPF.number
end

def faker_cep 
    Faker::Number.number(digits: 8)
end

def faker_numero
    Faker::Number.number(digits: 3)
end

def faker_complemento
    Faker::Alphanumeric.alpha(number: 2)
end

def upload
<<<<<<< HEAD
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/ruby/BurgerEats/imagem/hab1.png.jfif")
end

def upload_1
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/ruby/BurgerEats/imagem/hab1.png.jfif")
end

def upload_2
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/ruby/BurgerEats/imagem/hab1.png.jfif")
=======
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/BurgerEats/imagem/hab1.png.jfif")
end

def upload_1
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/BurgerEats/imagem/hab2.png.jfif")
end

def upload_2
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/BurgerEats/imagem/hab3.png.jfif")
>>>>>>> 0a55518962ab68d9908d94b08148245c361d1393
end