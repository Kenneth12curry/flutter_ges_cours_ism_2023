import 'package:dio/dio.dart';

import 'api_url_service.dart';

//Definition des Methodes d'appels
/**
 * GET
 * POST
 * PUT
 * DELETE
 * PATCH
 */
class ApiService {
  static final dio = Dio();
  //GET
  static Future<Response> getData(String path,{Map<String,dynamic>? params}) async{
   //On construit l'url
     String url = ApiUrl.baseURL+ path;
     //Appel Asynchrone
     final response = await dio.get(url,queryParameters:params );
     
   if (response.statusCode == 200) {
      return response;
   } else {
       throw response;
  }

  }
  //POST

 
  //DELETE
}
