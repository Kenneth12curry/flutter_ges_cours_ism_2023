

import 'package:flutter/material.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';
import 'package:flutter_ges_cours_2023/providers/data.provider.dart';
import 'package:flutter_ges_cours_2023/shared/constantes.dart';
import 'package:provider/provider.dart';

import '../../shared/widgets/app_bar_home.dart';

class CoursCategoriePage extends StatefulWidget {
  final Cours cours;
  const CoursCategoriePage({super.key, required this.cours});

  @override
  State<CoursCategoriePage> createState() => _CoursCategoriePageState();
}

class _CoursCategoriePageState extends State<CoursCategoriePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  void initData() {
    final dataProvider = Provider.of<GestionProvider>(context, listen: false);
    dataProvider.getAllCours();
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<GestionProvider>(context, listen: true);
    return Scaffold(
        body: Center(
            child: ListView(
      children: [
        AppNavHome(
          label: widget.cours.moduleLibelle,
          icon: false,
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: ecomSecondaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          //child: HomeProductList(
            //products: dataProvider.productListByCat,
          //),
        ),
      ],
    )));
    ;
  }
}
