# ubuntu-glua

## __Este projecto foi abandonado devido ao facto de até à data em questão o vagrant não suportar o export de boxes para virtualbox appliances.__


## Requisitos
* Vagrant
* ansible
* virtualbox


## Comandos básicos
* vagrant up - corre o Vagrantfile e dá boot da vm
* vagrant halt - suspende a vm
* vagrant provision - corre o playbook.yml, mesmo quando a vm está a correr
* ansible-galaxy init role_name - correndo dentro da pasta roles, este gera um conjunto de diretórios e ficheiros base para cada role da cadeira, sendo o role_name o nome ou abreviatura da cadeira

## Ficheiros
* Vagrantfile - contém a configuração do virtualbox
* playbook.yml - contém os roles a correr
* roles - diretório com os roles das cadeiras
