import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ges_cours_2023/models/absences_model.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';

class ListAbsence extends StatefulWidget {

  final List<Absences> absences;
  const ListAbsence({super.key, required this.absences});

  @override
  State<ListAbsence> createState() => _ListAbsenceState();
}

class _ListAbsenceState extends State<ListAbsence> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          for (int i = 0; i < widget.absences.length; i++)
            itemListAbsences(
              absences: widget.absences[i],
            ),
        ]));
  }

  Container itemListAbsences({required Absences absences}) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical:5).add(const EdgeInsets.only(bottom: 20)),
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
                      Text(absences.date,style: TextStyle(color: Colors.white,fontSize: 12),),
                      const SizedBox(height: 2,),
                      Text(absences.etudiant, style: TextStyle(color: Colors.black, fontSize: 12),),
                      const SizedBox(height: 2,),
                      Text(absences.sessionCours, style: TextStyle(color: Colors.black, fontSize: 12),)
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