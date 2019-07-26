require_relative "controller"

class Router # Création class Router

	def initialize # Crée les “propriétés“ de la class Router
		@controller = Controller.new # Dès la création d'une class Router, une class Controller sera crée
	end # end de la class Router

	def perform # Crée la méthode perform qui vas se lancer au début du programme
		while true # boucle while true qui demande à l'utilisateur de faire un choix
			puts "\n	Que veux tu faire?\n\n"
			puts "	Tape “1“ pour créer un gossip\n	Tape “2“ pour quitter"
			print "\n	> "
			choix = gets.chomp.to_i # Champ de saisie portant le nom de : choix, on attend un Integer
			case choix # Réaction selon la réponse dans la saisie
			when 1
				puts "\n	Tu as choisi de créer un gossip !"
				@controller.create_gossip # lancement de la methode create_gossip dans la class Controller
			when 2 # si l'utilisateur entre “2“
				puts "\n	A bientôt! :)"
				sleep(1) # Patienter 1 seconde avant le break
				break #Sortir de la boucle
			else # Si la saisie ne correspond ni a 1 ou 2
				puts "Je ne comprend pas, veuillez ré-éssayer."
			end # End de “case“
		end # End de la boucle while
	end # End de la méthode perform  
end # end de la class Router