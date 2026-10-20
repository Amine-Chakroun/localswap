import '../models/models.dart';

Future<List<Annonce>> chargerAnnonces() async {
  await Future.delayed(const Duration(seconds: 1));

  return [
    Annonce(
      id: 'a1',
      titre: 'Perceuse',
      categorie: CategorieAnnonce.objet,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'u1',
    ),
    Annonce(
      id: 'a2',
      titre: 'Cours de guitare',
      categorie: CategorieAnnonce.service,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'u2',
    ),
    Annonce(
      id: 'a3',
      titre: 'Covoiturage lundi',
      categorie: CategorieAnnonce.covoiturage,
      statut: StatutAnnonce.reservee,
      idProprietaire: 'u3',
    ),
    Annonce(
      id: 'a4',
      titre: 'Vélo enfant',
      categorie: CategorieAnnonce.objet,
      statut: StatutAnnonce.terminee,
      idProprietaire: 'u1',
    ),
    Annonce(
      id: 'a5',
      titre: 'Aide déménagement',
      categorie: CategorieAnnonce.service,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'u4',
    ),
  ];
}

bool peutReserver(Annonce annonce) {
  return annonce.statut == StatutAnnonce.disponible;
}