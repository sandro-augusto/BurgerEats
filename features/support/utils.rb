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
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/Users/sandr/OneDrive/Área de Trabalho/BugerEats/imagem/hab1.png.jfif")
end

def upload_1
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/Users/sandr/OneDrive/Área de Trabalho/BugerEats/imagem/hab2.png.jfif")
end

def upload_2
    $driver.find_element(:css, 'input[type=file]').send_keys("C:/Users/sandr/OneDrive/Área de Trabalho/BugerEats/imagem/hab3.png.jfif")
end