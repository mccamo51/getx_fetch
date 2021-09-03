
import 'package:http/http.dart' as http;

import 'model.dart';

class ApiService{
  static Future<List<Welcome>> getData()async{
      final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);
    if(response.statusCode==200){
        return welcomeFromJson(response.body);
    }
    

  }
}