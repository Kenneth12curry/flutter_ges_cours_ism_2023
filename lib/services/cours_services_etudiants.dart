import 'package:dio/dio.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';

import 'api_service.dart';

class CoursServiceEtudiant {
  Future<List<Cours>> getAllCoursEtudiants() async {
    //On construit l'url
    Response response = await ApiService.getData("/cours/liste-cours-etudiants/5");
    if (response.statusCode == 200) {
      List<dynamic> results = response.data;
      List<Cours> cours = [];
      for (dynamic map in results) {
           Cours cour = Cours.fromMap(map);
        cours.add(cour);
      }
      return cours;
    } else {
      throw response;
    }
  }
}
