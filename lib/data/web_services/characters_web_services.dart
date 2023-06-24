import 'package:breakingbad_with_bloc/constant/strings.dart';
import 'package:breakingbad_with_bloc/data/models/characters_model.dart';
import 'package:dio/dio.dart';

class CharactersWebServices{
  late Dio dio;

  CharactersWebServices(){
  BaseOptions options =BaseOptions(
    baseUrl: baseURL,
    receiveDataWhenStatusError: true,
    connectTimeout:const Duration(seconds: 20),
    receiveTimeout:const Duration(seconds: 20),

  );
dio=Dio(options);
  }
Future<List<Characters>>getAllCharacters()async{
    try {
      Response response =await dio.get('character');
      print(response.data.toString());
      return response.data;

    }catch(e){
      print(e.toString());
      return [];
    }
}

}