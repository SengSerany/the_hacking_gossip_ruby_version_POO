class Gossip # Création class Gossip
	attr_accessor :author, :content
	
	def initialize(author, content) #création de la méthode d'itialisation
		@author = author # Assignement de l'information “auteur", valeur relative
		@content = content # Assignement de l'information “contenu", valeur relative
	end # end de la méthode d'intialisation

	def save # création méthode save qui sauvegarderal les gossip
		CSV.open("db/gossip.csv", "wb") do |csv| # Dans le fichier “gossip.csv“ se trouvenant a tel emplacement, on vas enregistrer pour chaque entrée...
			csv << ["#{@author}", "#{@content}"] # L'auteur et le contenue en CSV
		end # end de “CSV.open do"
	end # end de la méthode save
end # end de la class Gossip
