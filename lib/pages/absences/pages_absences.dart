import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ges_cours_2023/models/absences_model.dart';
import 'package:flutter_ges_cours_2023/pages/absences/widgets/list_absences.dart';
import 'package:flutter_ges_cours_2023/services/absence_service.dart';
import 'package:flutter_ges_cours_2023/shared/constantes.dart';
import 'package:flutter_ges_cours_2023/shared/widgets/app_bar_home.dart';
import 'package:flutter_ges_cours_2023/shared/widgets/custom.widget.dart';

class AbsencesPage extends StatefulWidget {
  const AbsencesPage({super.key});

  @override
  State<AbsencesPage> createState() => _AbsencesPageState();
}

class _AbsencesPageState extends State<AbsencesPage> {

  AbsencesService absencesService = new AbsencesService();
  List<Absences> absencesListe = [];

  void initData() {
    absencesService.getAbsences().then((data) {
      setState(() {
          absencesListe = data;
      });
    });
  }

  @override
  void initState() {
    initData();
    /* // if this is the 1st time ever openin the app, then create default data
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    } else {
      // there already exists data
      db.loadData();
    }*/

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const AppNavHome(
              label: "Gestion",
            ),
            Container(
              padding: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                  color: ecomSecondaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 227, 144),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 300,
                          margin: const EdgeInsets.only(left: 10),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "rechercher..."),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: ecomPrymaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  labelWidget(text: "Listes des absences d'un étudiant"),
                  ListAbsence(absences: absencesListe),
                  //labelWidget(text: "Session de Cours du jour :"),
                  //Appel
                  //HomeListCours(cours:coursListe)
                  //const HomeSessionCourList(),
                  // Config.spaceSmall,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}