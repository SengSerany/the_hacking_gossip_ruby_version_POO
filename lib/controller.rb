require_relative "gossip"
require_relative "gossip"
require_relative "view"

class Controller # Création class Controller

	def initialize # Crée les “propriétés“ de la class Router
		@view = View.new # Dès la création d'une class Controller, une class View sera crée
	end # End de la méthode initialize

	def create_gossip # création méthode “create_gossip“ qui créra les nouvelles gossip
		params = @view.create_gossip # On vas chercher la methode create_gossip de la class View
		new_gossip = Gossip.new(@auteur, @content)
		new_gossip.save # Enregistrer les infos dans le fichier CSV
	end # End de la méthode create_gossip
end # end de la class Controller