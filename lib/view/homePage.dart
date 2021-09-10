import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/controller.dart';
import 'package:new_app/model/TaskModel.dart';

import '../util.dart';

class HomePage extends StatelessWidget {

  TestController controller = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    
    return  Obx((){
      
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text(
                  'Todo App List',
                  style: 
          TextStyle(color: Colors.blue),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  controller.addData(
                    TaskModel(
                      data: [Data(
                        id: "1",
                        activity: "Hello",
                        checked: false
                      )]
                    )
                  );
                },
                backgroundColor: Colors.blue,
                child: Icon(Icons.add),
              ),
              body: ListView.builder(
                  itemCount: controller.product.length,
                  itemBuilder: (BuildContext context, int index) 
                  
                  {
                    print(controller.product.length);
                    return TodoListTile(
                    todoTitle: controller.product[index].data);
                  }));
        });
  }
}


  
class TodoListTile extends StatelessWidget {
   var todoTitle;
  TestController controller = Get.put(TestController());

  TodoListTile({this.todoTitle});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // Map<String, dynamic> data =(todoTitle);
    // print(data);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.toWidth, vertical: 20.toHeight),
      width: SizeConfig().screenWidth,
      height: 150.toHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [Colors.yellow, Colors.yellowAccent])),
      child: Column(
        children: [
          ListTile(
            title: Text("",style: TextStyle(color: Colors.black),),
            subtitle: Text('This is my first todo'),
            trailing: IconButton(
                icon: Icon(
                  Icons.delete_outline,
                  color: Colors.pink,
                ),
                onPressed: () {
                  // controller.removeData(todoTitle);ß
                }),
          ),
        ],
      ),
    );
  }
}