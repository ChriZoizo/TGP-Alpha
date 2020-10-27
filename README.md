# README

This the the Pre alpha release of my school project.
This website is design for share gossip with friend

## Install

Unzip the archive in your workplace folder. Open terminal and do 
```ruby
bundle install
```


## How to use

Open terminal and place the path into the app folder.

Launch server
```ruby
rails serveur
or
rails s
```

For testing
```ruby
rails c
or
rails console --sandbox #for test without any DB save when you quit
```



##URLs of website
http://localhost:3000 pour afficher la page d'accueil par défaut
http://localhost:3000/team pour afficher le team
http://localhost:3000/contact pour afficher le contact de l'équipe et en bonus
http://localhost:3000/welcome/:firstname pour un message personnalisé d'accueil
http://localhost:3000/:potin pour afficher le détail d'un potin particulier
