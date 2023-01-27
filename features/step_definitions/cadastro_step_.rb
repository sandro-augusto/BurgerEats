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

  Dado('que esteja na pagina de cadastro') do
    @cadastro = CadastroPage.new
    @cadastro.visit_page
    @cadastro.home
    expect(@cadastro.valida_page_cadastro).to be_truthy
  end
  
  Quando('preencher os campos necessários para o cadastro do {string}') do |metodo_entrega|
    @cadastro = CadastroPage.new
    @cadastro.cadastro_uber_eats
  end
  
  Então('verifico a mensagem de sucesso') do
    @cadastro = CadastroPage.new
    expect(@cadastro.valida_cadastro(metodo_entrega)).to be_truthy
  end
  
