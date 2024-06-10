import 'package:flutter/material.dart';
import 'package:flutter_ges_cours_2023/pages/absences/pages_absences.dart';
import 'package:flutter_ges_cours_2023/pages/cours/cours_page.dart';
import 'package:flutter_ges_cours_2023/pages/cours_%C3%A9tudiants/pages_etudiants.dart';
import 'package:flutter_ges_cours_2023/pages/home/home_page.dart';
import 'package:flutter_ges_cours_2023/pages/login/login.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  // init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
       routes: {
            'login': (context) => MyLogin(),
            'home': (context) => HomePage(),
            'cours': (context) => CoursPage(label: "Gestion"),
            'etudiants':(context) => EtudiantsPage(),
            'absences':(context)=> AbsencesPage()
      },
      //home: HomePage(),
     // theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}