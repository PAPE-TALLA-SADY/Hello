from tinydb import TinyDB, Query

# Créer une instance de la base de données
db = TinyDB('budget.json')

# Créer une classe pour représenter les dépenses
class Depense:
    def __init__(self, montant, categorie):
        self.montant = montant
        self.categorie = categorie

# Créer une classe pour représenter les revenus
class Revenu:
    def __init__(self, montant, categorie):
        self.montant = montant
        self.categorie = categorie

# Fonction pour enregistrer une dépense
def enregistrer_depense(montant, categorie):
    depense = Depense(montant, categorie)
    db.insert({'type': 'depense', 'montant': depense.montant, 'categorie': depense.categorie})

# Fonction pour enregistrer un revenu
def enregistrer_revenu(montant, categorie):
    revenu = Revenu(montant, categorie)
    db.insert({'type': 'revenu', 'montant': revenu.montant, 'categorie': revenu.categorie})

# Fonction pour calculer l'écart entre les dépenses et les revenus
def calculer_ecart():
    total_depenses = sum(entry['montant'] for entry in db if entry['type'] == 'depense')
    total_revenus = sum(entry['montant'] for entry in db if entry['type'] == 'revenu')
    ecart = total_revenus - total_depenses
    return ecart

# Exemple d'utilisation
enregistrer_depense(50, 'Manger')
enregistrer_depense(30, 'Transport')
enregistrer_revenu(1000, 'Salaire')

print("Ecart:", calculer_ecart())

