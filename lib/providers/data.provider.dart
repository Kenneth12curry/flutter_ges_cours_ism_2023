import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ges_cours_2023/models/cours_model.dart';
import 'package:flutter_ges_cours_2023/services/cours_service.dart';
import 'package:flutter_ges_cours_2023/services/cours_services_etudiants.dart';

class GestionProvider with ChangeNotifier {
  CoursService coursService = CoursService();
  CoursServiceEtudiant coursServiceEtudiant = CoursServiceEtudiant();
  //ArticleService articleService = ArticleService();

  /* final List<Product> _productList = [];
  List<Product> get productList => _productList;

  final List<Product> _productListByCat = [];
  List<Product> get productListByCat => _productListByCat;*/

  final List<Cours> _coursList = [];
  List<Cours> get coursList => _coursList;

  Future<void> getAllCours() async {
    try {
      List<Cours> datas = await coursService.getAllCours();
      _coursList.addAll(datas);
      notifyListeners();
    } on Response catch (e) {
      print("Erreur :${e.statusCode}");
    }
  }

  Future<void> getAllCoursEtudiants() async {
    try {
      List<Cours> datas = await coursServiceEtudiant.getAllCoursEtudiants();
      _coursList.addAll(datas);
      notifyListeners();
    } on Response catch (e) {
      print("Erreur :${e.statusCode}");
    }
  }

  /*Future<void> getAllProducts({int? categorieId}) async {
    try {
      List<Product> datas =
          await articleService.getAllProducts(categorieId: categorieId);
      if (categorieId != null) {
        _productListByCat.clear();
        _productListByCat.addAll(datas);
      } else {
        _productList.addAll(datas);
      }

      notifyListeners();
    } on Response catch (e) {
      print("Erreur :${e.statusCode}");
    }
  }*/

  Future<void> initData() async {
    await Future.wait([
      getAllCours(),
      //getAllProducts()
    ]);
  }
}
