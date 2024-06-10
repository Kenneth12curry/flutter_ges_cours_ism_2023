import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';
import 'package:flutter_ges_cours_2023/shared/constantes.dart';

class HomeListCours extends StatefulWidget {

   final List<Cours> cours;


  const HomeListCours({super.key, required this.cours});

  @override
  State<HomeListCours> createState() => _HomeListCoursState();
}

class _HomeListCoursState extends State<HomeListCours> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          for (int i = 0; i < widget.cours.length; i++)
            itemListCours(
              cours: widget.cours[i],
            ),
        ]));
  }

  Container itemListCours({required Cours cours}) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical:8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 220, 137, 12),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding:const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(cours.professeurName,style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 2,),
                      Text(cours.moduleLibelle, style: TextStyle(color: Colors.black),),
                      const SizedBox(height: 2,),
                      Text(cours.nbreHeureGlobal.toString()+ "H", style: TextStyle(color: Colors.black),)
                    ],
                  )
                ],
              ),
            ],
          ),
          ),
      ),
    );
  }
}
