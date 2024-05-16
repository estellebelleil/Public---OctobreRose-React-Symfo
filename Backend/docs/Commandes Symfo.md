# Création d'entité, de bdd, de contrôllers


## commande pour créer sa database
```bash
php bin/console doctrine:database:create
```
## commande pour créer des entités: 
```bash
php bin/console make:entity
```
## commande pour créer des migrations: 
```bash
php bin/console make:migration
```
## commande pour envoyer les migrations en bdd: 
```bash
php bin/console doctrine:migrations:migrate
```
## commande pour afficher la list des chose qu'on peut crée : 
```bash
php bin/console list make 
```
## commande pour crée un new controller : 
```bash
php bin/console make:controller 
```

## commande pour crée un formulaire :
```bash
php bin/console make:form
```
