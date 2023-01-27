#encoding: utf-8

require 'yaml'
require 'faker'

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

def upload
    $driver.find_element(:css, 'input[type=file]').send_keys('C:/Users/sandr/OneDrive/Área de Trabalho/Buger Eats/imagem/CNH.png')
end