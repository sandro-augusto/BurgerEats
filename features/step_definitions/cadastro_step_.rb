#encoding: utf-8

  Dado('que estou na pagina de inicio') do
    @cadastro = CadastroPage.new
    @cadastro.visit_page
  end
  
  Quando('clico para fazer o cadastro') do
    @cadastro = CadastroPage.new
    @cadastro.home
  end
  
  Então('é direcionado para pagina de cadastro') do
    @cadastro = CadastroPage.new
    expect(@cadastro.valida_page_cadastro).to be_truthy
  end

  Dado('que estou na pagina de cadastro') do
    @cadastro = CadastroPage.new
    @cadastro.visit_page
    @cadastro.home
  end
  
  Quando('é preenchido os dados com {string}') do |tipos|
    @cadastro = CadastroPage.new
    @cadastro.cadastro_uber_eats(tipos)
  end
  
  Então('é verificado a mensagem de sucesso') do
    @cadastro = CadastroPage.new
    expect(@cadastro.valida_cadastro).to be_truthy
  end

  # Quando('é preenchido as informações com {string}') do |dados|
  # end
  
  # Então('é verificado a mensagem de alerta {string}') do |valor|
  # end

  
