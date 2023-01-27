#language: pt
#encoding: utf-8

Funcionalidade: Cadastro do Burger Eats


@home
Cenário: home
Dado que estou na pagina de inicio
Quando clico para fazer o cadastro
Então é direcionado para pagina de cadastro


@validacadastro
Esquema do Cenário: Cadastro UberEats para Moto, Bicicleta e Van/Carro
Dado que esteja na pagina de cadastro
Quando preencher os campos necessários para o cadastro do "metodo_entrega"
Então verifico a mensagem de sucesso 

Exemplos:
|metodo_entrega|
|Moto          |
|Bicicleta     |
|Van_carro     |