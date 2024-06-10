import 'package:flutter/material.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';
import 'package:flutter_ges_cours_2023/pages/cours_categories/cours_categorie_page.dart';
import 'package:flutter_ges_cours_2023/shared/widgets/custom.widget.dart';


class HomeListCategorie extends StatefulWidget {
  final List<Cours> cours;
  const HomeListCategorie({super.key, required this.cours});

  @override
  State<HomeListCategorie> createState() => _HomeListCategorieState();
}

class _HomeListCategorieState extends State<HomeListCategorie> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          for (int i = 0; i < widget.cours.length; i++)
            itemCours(
              cours: widget.cours[i],
            ),
        ]));
  }

  Container itemCours({required Cours cours}) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(children: [
          InkWell(
              onTap: () {
                //Navigator.pushNamed(context, "categorie");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CoursCategoriePage(
                        cours: cours,
                      );
                    },
                  ),
                );
              },
              child: TextWidget(
                text: cours.moduleLibelle,
                size: 16,
              ))
        ]));
  }
}
