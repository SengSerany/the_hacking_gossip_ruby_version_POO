class Gossip # Création class Gossip
	attr_accessor :author, :content
	
	def initialize(author, content) # Méthode d'itialisation
		@author = author # Assignement de l'information “auteur", valeur relative
		@content = content # Assignement de l'information “contenu", valeur relative
	end # end de la méthode d'intialisation

	def save # méthode qui sauvegarde les gossip
		CSV.open("db/gossip.csv", "a") do |csv| # Dans le fichier “gossip.csv“ se trouvenant a tel emplacement, on vas enregistrer pour chaque entrée...
			csv << [@author, @content] # L'auteur et le contenue en CSV
		end # end de “CSV.open do"
	end # end de la méthode save

	def self.all # Methode qui crée une liste de gossip
		all_gossips = []

		CSV.open("db/gossip.csv", "r").each do |ligne| # Pour chaque ligne de CSV
			gossip_provisoire = Gossip.new(ligne[0], ligne[1]) # Faire une entrée (auteur, contenu) rangé dans “gossip provisoire“			all_gossips << gossip_provisoire
			all_gossips << gossip_provisoire # Mettre chaque gossip provisoire dans l'array all_gossips
		end # end de "CSV.each do"

		return all_gossips
	end # end d'"index_gossips"
end # end de la class Gossip
