require_relative "gossip"
require_relative "view"
class Controller # Création class Controller

	def initialize # Crée les “propriétés“ de la class Router
		@view = View.new # Dès la création d'une class Controller, une class View sera crée
	end # End de la méthode initialize

	def create_gossip # Demande de creer de nouvelles gossips
		params = @view.create_gossip # On vas chercher la methode create_gossip de la class View
		new_gossip = Gossip.new(params[:author], params[:content]) # Je crée un objet Gossip (Model) avec le hash que je transforme en array avec ".flatten" pour pouvoir extraire les variables que je veux.
		new_gossip.save # Enregistrer les infos dans le fichier CSV
	end # End de la méthode create_gossip
	def index_gossips # Demande la liste des gossips
		gossips = Gossip.all 
		@view.index_gossips(gossips)
	end # end de "index.gossips"
end # end de la class Controller