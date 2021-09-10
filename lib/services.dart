
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/model/TaskModel.dart';

import 'model.dart';

class ApiService{
  static Future<List<TaskModel>> getData()async{
      final url = Uri.parse("https://gitplussandbox.com/bismark/todo/all.php");
    final response = await http.get(url);
    if(response.statusCode==200){
      var decodedData = json.decode(response.body);
      var data = (decodedData['data'] as List).map((e) => TaskModel.fromJson(e)).toList();
      print(data);
        return data;
    }
    

  }
}