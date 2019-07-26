class View # Création class View

	def create_gossip # Création de la méthode create_gossip qui vas afficher de quoi creer un gossi^
		params = Hash.new # Création d'un hash pour stocker les entrées et pour l'interaction avec les utilisateurs

		puts "\n	Nom de l'auteur :"
		print "	> "
		@auteur = gets.chomp.to_s # Entrée du nom de l'auteur

		puts "\n	Quel est donc ce gossip :"
		print "	> "
		@content = gets.chomp.to_s # Entrée du gossip

		params[@auteur] = @content # Ajout de {l'auteur => gossip} dans le hash

		return params # Garder le hash a la fin de la méthode

	end # End de la method create_gossip 
end # end de la class View