import 'package:get/get.dart';
import 'package:new_app/model.dart';
import 'package:new_app/model/TaskModel.dart';
import 'package:new_app/services.dart';

class TestController extends GetxController{
  var isLoadin = true.obs;
  
  var product = <TaskModel>[].obs;
@override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData(){
    try {
      isLoadin(true);
    var  productList = ApiService.getData();
    productList.then((value) => print("========}"));
    
     isLoadin(false);
    } catch (e) {
     isLoadin(false);
            print("============$e");

    }
  }

  void addData(TaskModel list){
    product.add(list);
    update();
  }

  // void removeData(TaskModel index){
  //   product.removeAt(index);
  //   update();
  // }
}