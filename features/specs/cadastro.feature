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
# |bicicleta|
# |van_carro|

@valida
Esquema do Cenário: Testes no cadastro 
Dado que estou na pagina de cadastro
Quando é preenchido as informações com "<dados>" 
Então é verificado a mensagem de alerta de acordo com "<dados>" e "<valor>"

Exemplos:
|dados|valor|
# |nome            |É necessário informar o nome|
# |cpf             |É necessário informar o CPF|
# |email           |É necessário informar o email|
# |cep             |É necessário informar o CEP|
# |number          |É necessário informar o número do endereço|
# |metodo_entrega  |Selecione o método de entrega|
# |foto_cnh        |Adicione uma foto da sua CNH|
|verificar_tudo  ||

