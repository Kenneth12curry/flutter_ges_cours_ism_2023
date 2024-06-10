import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../constantes.dart';
import 'custom.widget.dart';

class AppNavHome extends StatefulWidget {
  final String label;
  final bool iconCart;
  final bool icon;
  const AppNavHome({
    super.key,
    required this.label,
    this.icon = true,
    this.iconCart = true,
  });

  @override
  State<AppNavHome> createState() => _AppNavHomeState();
}

class _AppNavHomeState extends State<AppNavHome> {
  @override
  Widget build(BuildContext context) {
    //final dataProvider = Provider.of<CartPovider>(context, listen: true);
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
           InkWell(
              onTap: () {
                // Action pour la première icône
                Navigator.pushNamed(context, "home");
                //print("Première icône cliquée");
              },
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: ecomSecondaryColor,
              ),
            ),
          //Icon
          //widget.icon == true
              //? Icon(
                 // Icons.arrow_downward,
                  //size: 30,
                  //color: ecomSecondaryColor,
                //)
              //: InkWell(
                  //onTap: () {
                    //Navigator.pop(context, 'etudiants');
                  //},
                  //child: Icon(
                    //Icons.book,
                    //size: 30,
                    //color: ecomPrymaryColor,
                  //),
                //),
          //Text
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: TextWidget(
              text: widget.label,
            ),
          ),
          //Icon
          const Spacer(),
          if (widget.iconCart)
            badges.Badge(
              badgeContent: TextWidget(
                //text: "text",
                color: Colors.white,
                size: 15,
              ),
              badgeStyle: badges.BadgeStyle(
                // badgeColor: Colors.redAccent,
                padding: const EdgeInsets.all(6),
                borderRadius: BorderRadius.circular(3),
              ),
              //child: InkWell(
              // onTap: () {
              //Navigator.pushNamed(context, "etudiants");
              //},
              //child: Icon(
              // Icons.book,
              // size: 30,
              //color: ecomPrymaryColor,
              //),
              //),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Action pour la première icône
                      Navigator.pushNamed(context, "etudiants");
                      //print("Première icône cliquée");
                    },
                    child: Icon(
                      Icons.book,
                      size: 30,
                      color: ecomPrymaryColor,
                    ),
                  ),
                  SizedBox(width: 10), // Espace entre les icônes
                  InkWell(
                    onTap: () {
                      // Action pour la deuxième icône
                       Navigator.pushNamed(context, "absences");
                    },
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: ecomPrymaryColor,
                    ),
                  ),
                ],
              ),
              // Espace entre les icônes
            )
        ],
      ),
    );
  }
}
