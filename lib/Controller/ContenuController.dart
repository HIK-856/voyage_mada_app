import 'package:flutter_mvc/flutter_mvc.dart';
import 'package:voyage_mada_app/Model/contenuModel.dart';
import 'package:voyage_mada_app/View/HomeView.dart';
import 'package:voyage_mada_app/View/topViewWidget.dart';

class ContenuController {
  List<ContenuModel> getContenus() {
    // Vous pouvez récupérer les données depuis une source externe comme une API ou une base de données
    // Pour cet exemple, nous utilisons des données statiques
    return [
      ContenuModel(
        nomImage: 'assets/images/mantasoa.jpg',
        nomDestination: 'Mantasoa Lodge',
        nomEndroit: 'Mantasoa Antananarivo',
      ),
      ContenuModel(
        nomImage: 'assets/images/toamasina.jpg',
        nomDestination: '',
        nomEndroit: '',
      ),
      ContenuModel(
        nomImage: 'assets/images/toliara.jpg',
        nomDestination: '',
        nomEndroit: '',
      ),
    ];
  }

  List<ContenuModel> getTopDestination() {
    return [
      ContenuModel(
        nomImage: 'assets/images/mantasoa.jpg',
        nomDestination: 'Mantasoa Lodge',
        nomEndroit: 'Mantasoa ',
      ),
      ContenuModel(
        nomImage: 'assets/images/toamasina.jpg',
        nomDestination: '',
        nomEndroit: '',
      ),
      ContenuModel(
        nomImage: 'assets/images/toliara.jpg',
        nomDestination: '',
        nomEndroit: '',
      ),
    ];
  }
}
