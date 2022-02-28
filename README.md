# Mod-lisation-et-Conception-d-une-Base-de-donn-es-2
Modélisation, Conception et implémentation d'une Base de données 2
## Contexte du projet ##

La société El-massar souhaite réaliser une application web pour la gestion de ses huit hôtels. Chaque hôtel est caractérisé par son nom, son adresse, CPH, Téléphone et un code unique. Chaque hôtel contient environ 80 chambres, une chambre est caractérisée par son numéro et un numéro de téléphone. On considère que ces hôtels sont classés en 4 catégories ou classes: nombre d'étoiles de un à cinq étoiles, et les caractéristiques. Chaque hôtel possède au maximum neuf catégories de chambres différentes. Une catégorie est connue par son Code (code Catégorie) et une Description. Cette application consiste à réaliser les tâches suivantes :

    Consultation de la disponibilité des chambres pour chaque réservation
    L’enregistrement d’une réservation par un client.
    L’archivage et l’enregistrement des réservations qui ont été effectuées il y a plus de 8 jours avant l’arrivée du client.
    L’enregistrement des diverses consommations (N° Consommation, Date consommation, Heure Consommation) durant le séjour d’un client.
    L’établissement et l’enregistrement de la facture au départ du client ; cette facture regroupe le prix de la chambre et la quantité des prestations consommer pendant le séjour.

**Modalités de réservation **

Le client effectue une réservation avec deux méthodes possibles :

    En remplissant un formulaire de réservation sur Internet.
    Auprès d’une agence de réservation ou il remplit un imprimé de réservation. Le client indique son nom, son prénom, son adresse, sa ville, le code postal, son pays, son téléphone et son email. Le client exprime ensuite son besoin : catégorie de chambre, période de séjour (date début et date fin) et de classe d’hôtel. Si la demande est soluble une réservation est établie (N° Réservation, DateDébut, DateFin, DatePayeArrhes, MontantArrhes).

Tarification

    Le prix de la catégorie d’une chambre dépend de la classe d’hôtel.
    Les prix des prestations (CodePrest, DesignationPrest) (Exemple de prestation : petit déjeuner, déjeuner ..) sont propres à chaque hôtel.
    Le prix d’une chambre, dépend de la catégorie et de la caisse de l’hôtel.
    Une réservation ne concerne qu’une seule chambre.
    Les prix des prestations dépendent de chaque hôtel.
    Les consommations doivent êtres mémorisées.
