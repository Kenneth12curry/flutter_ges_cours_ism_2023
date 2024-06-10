import 'package:dio/dio.dart';
import 'package:flutter_ges_cours_2023/models/absences_model.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';

import 'api_service.dart';

class AbsencesService {
  Future<List<Absences>> getAbsences() async {
    //On construit l'url
    Response response = await ApiService.getData("/absence/liste-absence-etudiant/5");
    if (response.statusCode == 200) {
      List<dynamic> results = response.data;
      List<Absences> absences = [];
      for (dynamic map in results) {
           Absences absence = Absences.fromMap(map);
        absences.add(absence);
      }
      return absences;
    } else {
      throw response;
    }
  }
}
