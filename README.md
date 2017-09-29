# SumOne
## Sistema de Livros

### Linguagem e Framework:

* Ruby on Rails

### BootStrap:

São utilizados dois temas feito em bootstrap, um para a parte administrativa e outro para listagem de livros.

* Heroic Features: https://startbootstrap.com/template-overviews/heroic-features/
* SB-Admin 2: https://startbootstrap.com/template-overviews/sb-admin-2/

### Gems:

* devise: Utilizada para autenticação dos admins;
* devise-i18n: Faz a tradução, com I18N, dos textos mensagens do devise;
* rails-assets-bootstrap: Utilizada para configurar o bootstrap na aplicação;
* bootstrap_sb_admin_base_v2: Configura o tema sb-admin 2 na aplicação;

### Layouts:

O site possui 3 layouts configurados.

* administrative: Utilizado na parte do administrador, aonde é possível cadastrar, editar e remover livros;
* administrative_login: Utilizado para tela de login, cadastro de admin e recuperação de senha (esses dois últimos não foi implementado);
* site: Utilizado para listagem, busca e visualização dos livros.