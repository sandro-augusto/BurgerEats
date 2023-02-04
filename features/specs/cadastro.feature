#language: pt
#encoding: utf-8

Funcionalidade: Cadastro do Burger Eats


@home
Cenário: home
Dado que estou na pagina de inicio
Quando clico para fazer o cadastro
Então é direcionado para pagina de cadastro


@validacadastro
Esquema do Cenário: Criar cadastro para moto,bicicleta,van/carro
Dado que estou na pagina de cadastro
Quando é preenchido os dados com "<tipos>" 
Então é verificado a mensagem de sucesso

Exemplos:
|tipos    |
|moto     |
|bicicleta|
|van_carro|