# SharinganApi
> Api para visitar o site [Quotes to Scrape](http://quotes.toscrape.com/).


Esta Api faz um crawler no site e pega as "Quotes" da página principal e salva no banco de dados


## Instalação

Windows & Linux:

```sh
git clone ou faça o download do Projeto
```

## Development setup

Ao baixar e rodar ``bundle install``, crie um usuário no ```rails c``` .

Para poder acessar a api, e fazer o crawler, vc deve estar autenticado.
Quando criado, o usuário ele receberá um token necessário pra utilizar a API.

Recomendo a utilização de alguma ferramenta para testar a api, eu usei o [Postman](https://www.getpostman.com/).
Coloque o token e o email, e terá acesso a consulta do crawler na url 
``/api/v1/quotes/quotes/{palavra ou texto buscada}.json``

A api vai retornar um Json com os dados de todas as ``quotes`` que possuem o texto procurado nas 
na citação(texto que fica entre aspas no site em cada quote).

Para rodar os testes uso Rspec, então rode ``rspec spec``

## Possíveis erros.
* Lembre-se de colocar o host do banco ,o default é : ``localhost:27017``


## Tecnologias usadas

* Usei Rails como framework web.
* [MongoDb](https://www.mongodb.com/)
* No back end Ruby
* Usei algumas gems, todos elas tem link no ``Gemfile``, entre elas, devise para autenticação


## Meta
Nelcifran Magalhaes – [Linkedin](https://www.linkedin.com/in/nelcifranpires/
) – nelcifranpires@gmail.com
