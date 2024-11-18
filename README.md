# receitas-django
Descrição:
----------
Projeto para listar receitas feito em Python com Django.

Dependências:
-------------
Para instalar as dependências execute o comando no terminal:
```shell script
pip install -r requirements.txt
```

Banco de dados:
---------------
O projeto usa o MySQL.<br>
Para criar as tableas no banco de dados rode as migrations executando o comando no terminal:
```shell script
python manage.py migrate
```

Rodando o projeto:
------------------
Para rodar o projeto execute o comando no terminal: 
```shell script
python manage.py runserver 0.0.0.0:8080
```

Docker:
-------
Para rodar o projeto em um container Docker, primeiro deve-se gerar o .jar do projeto.<br>
Após isso, deve-se gerar o build das imagens e subir os containers do Docker.<br><br>
<b>Fazendo o build das imagens do Docker:</b>
```shell script
docker-compose build

```

<b>Subindo os containers do Docker:</b>
```shell script
docker-compose up -d
```

##
Para automatizar esse processo, basta executar o Shellscript <b>`docker_build_and_run.sh`</b> na raiz do projeto:
```shell script
./docker_build_and_run.sh
```
