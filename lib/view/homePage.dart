import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/controller.dart';

class HomePage extends StatelessWidget {

  TestController controller = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Test GetX", style: TextStyle(color: Colors.black),),elevation: 0,backgroundColor: Colors.transparent,),
      body: SafeArea(
        child: Obx((){
          if(controller.isLoadin.value){
            return Center(child: CircularProgressIndicator());
          }else
          return SingleChildScrollView(
            child: Column(
              children: [
                for(int x = 0; x<controller.product.length; x++)
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                    child: ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person),
                        ],
                      ),
                      title: Text(controller.product[x].title),
                      subtitle: Text(controller.product[x].body),
                       trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Icon(Icons.arrow_forward_ios),
                         ],
                       ),
                    ),
                  ),
                )
              ],
            ),
          );
        })
      ),
    );
  }
}