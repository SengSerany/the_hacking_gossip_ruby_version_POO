class View # Création class View

	def create_gossip # Création de la méthode create_gossip qui vas afficher de quoi creer un gossi^
		system "clear"
		puts "\n	Tu as choisi de créer un gossip !"

		puts "\n	Nom de l'auteur :"
		print "	> "
		@auteur = gets.chomp # Entrée du nom de l'auteur

		puts "\n	Quel est donc ce gossip :"
		print "	> "
		@content = gets.chomp # Entrée du gossip

		params = { :author => @auteur, :content => @content} # Création de l'hash "params" de façon que je puisse appelez les valeurs a l'interrieur.

		system "clear"

		puts "\n\n	Votre gossip a bien été envoyé !\n\n	Appuyez sur entrée pour revenir au menu"
		print "	> "
		return_menu = gets
		
		while return_menu != "\n"
			puts "\n	Appuyez sur ENTREE pour revenir au menu"
			print "	> "
			return_menu = gets
		end

		return params # Garder le hash a la fin de la méthode
		
	end # End de la method create_gossip

	def index_gossips (gossips)
		system "clear"
		puts"\n	Voici la liste des gossips :"
		gossips.each do |gossip|
			print "\n	D'aprés #{gossip.author} : "
			puts "#{gossip.content}"
		end
		
		puts "\n\n	Appuyez sur entrée pour revenir au menu"
		print "	> "
		return_menu = gets
		
		while return_menu != "\n"
			puts "\n	Appuyez sur ENTREE pour revenir au menu"
			print "	> "
			return_menu = gets
		end
	end 
end # end de la class View

