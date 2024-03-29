# Créez un programme qui affiche le premier index d’un élément recherché dans un tableau.
# Le tableau est constitué de tous les arguments sauf le dernier.
# L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.

# Exemple : Ceci est le monde qui contient Charlie un homme sympa Charlie => 6

#Méthode.
def index_needed(array, element)
    array.each_with_index do | item, index |
        return index if item == element
    end
    -1
end

#Erreur.
if ARGV.empty? then
    puts 'Erreur'
    exit
end

puts index_needed(ARGV[0..-2], ARGV[-1])
#Fin de l'exercice.