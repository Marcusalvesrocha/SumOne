# SumOne
## Sistema de Livros

### Linguagem e Framework:

* Ruby on Rails

### BootStrap:

São utilizados dois temas feito em bootstrap, um para a parte administrativa e outro para listagem de livros.

* Heroic Features: https://startbootstrap.com/template-overviews/heroic-features/
* SB-Admin 2: https://startbootstrap.com/template-overviews/sb-admin-2/

### Gems:

* [devise](https://github.com/plataformatec/devise): Utilizada para autenticação dos admins;
* devise-i18n: Faz a tradução, com I18N, dos textos mensagens do devise;
* rails-assets-bootstrap: Utilizada para configurar o bootstrap na aplicação;
* bootstrap_sb_admin_base_v2: Configura o tema sb-admin 2 na aplicação;
* [paperclip](https://github.com/thoughtbot/paperclip): Gerencia o uso de imagens;

### Layouts:

O site possui 3 layouts configurados.

* administrative: Utilizado na parte do administrador, aonde é possível cadastrar, editar e remover livros;
* administrative_login: Utilizado para tela de login, cadastro de admin e recuperação de senha (esses dois últimos não foi implementado);
* site: Utilizado para listagem, busca e visualização dos livros.

## [ImageMagick](http://www.imagemagick.org)

É um software grátis, utilizado para criar, editar, compor ou converter imagens, redimencionar, cortar, ler e gravar imagens em diversos formatos. 
A gem Paperclip utilizada no site, necessita que o ImageMagick seja instalado no servidor da aplicação.
A instalação do ImageMagick é obrigatória para o funcionamento da gem paperclip

### Instalação no Linux
```
sudo apt-get update
sudo apt-get install imagemagick
```
Para informações de como [instalar o ImageMagick em outros sistemas operacionais](https://www.imagemagick.org/script/download.php)

É necessário executar o comando `which convert` para retorna o caminho dos comandos do ImageMagick. `/usr/local/bin/convert`.
