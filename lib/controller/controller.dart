import 'package:get/get.dart';
import 'package:new_app/model.dart';
import 'package:new_app/services.dart';

class TestController extends GetxController{
  var isLoadin = true.obs;
  
  var product = <Welcome>[].obs;
@override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData(){
    try {
      isLoadin(true);
    var  productList = ApiService.getData();
    print(productList.then((value) =>  product.addAll(value)));
    
     isLoadin(false);
    } catch (e) {
     isLoadin(false);
            print("============$e");

    }
  }
}