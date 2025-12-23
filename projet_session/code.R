
# Charger le package tidyverse
library(tidyverse)

# Créer le tableau à partir des données extraites du PDF
data <- tibble(
  Source = c("La Provence", "La République du Centre", "La Nouvelle République du Centre-Ouest",
             "La Nouvelle République du Centre-Ouest", "Le Maine Libre", "Ouest-France",
             "L'Yonne Républicaine", "Le Parisien", "Le Parisien", "Les Echos",
             "La Dépêche du Midi", "La Dépêche du Midi", "La Voix du Nord",
             "Le Progrès (Lyon)", "La Nouvelle République Dimanche"),
  Periodicite = c("Quotidien","Quotidien","Quotidien","Quotidien","Quotidien","Quotidien",
                  "Quotidien","Quotidien","Quotidien","Quotidien","Quotidien","Quotidien",
                  "Quotidien","Quotidien","Hebdomadaire"),
  Date = c("30-11-2025","29-11-2025","29-11-2025","25-11-2025","29-11-2025","29-11-2025",
           "29-11-2025","29-11-2025","12-11-2025","27-11-2025","16-11-2025","11-11-2025",
           "08-11-2025","04-11-2025","16-11-2025"),
  Couverture = c("Régionale","Régionale","Régionale","Régionale","Régionale","Régionale",
                 "Régionale","Régionale","Régionale","Nationale","Régionale","Régionale",
                 "Régionale","Régionale","Régionale"),
  Provenance = c("Marseille, Provence-Alpes-Côte d'Azur","Orléans, Centre-Val de Loire",
                 "Tours, Centre-Val de Loire","Tours, Centre-Val de Loire","Le Mans, Pays de la Loire",
                 "Rennes, Bretagne","Auxerre, Bourgogne-Franche-Comté","Paris, Île-de-France",
                 "Paris, Île-de-France","France","Toulouse, Occitanie","Toulouse, Occitanie",
                 "Lille, Hauts-de-France","Lyon, Auvergne-Rhône-Alpes","Tours, Centre-Val de Loire")
)

# Afficher le tableau
print(data)



# Charger les packages
library(tidyverse)

# Données extraites du PDF (nombre d'articles par périodicité)
data <- tibble(
  Periodicite = c("Quotidien", "Hebdomadaire"),
  Nb_Articles = c(14, 1) # Comptage des occurrences dans le PDF
)

# Graphique en barres
ggplot(data, aes(x = Periodicite, y = Nb_Articles, fill = Periodicite)) +
  geom_col(width = 0.6) +
  labs(title = "Occurrences du terme 'punaises de lit' par périodicité",
       x = "Périodicité des journaux",
       y = "Nombre d'articles") +
  theme_minimal(base_size = 14) +
  scale_fill_manual(values = c("Quotidien" = "#2C7FB8", "Hebdomadaire" = "#41AB5D")) +
  geom_text(aes(label = Nb_Articles), vjust = -0.5, size = 5)

