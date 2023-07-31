import 'package:api_tuto/put_post_get_delete/crud_by_post_delete_update/controller/todo_controller.dart';
import 'package:api_tuto/put_post_get_delete/crud_by_post_delete_update/screens/todo_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/todo.dart';

class HomeScren extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //dependency
    var todoController= TodoController(TodoRepository());

    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body:FutureBuilder<List<Todo>>(
    future: todoController.FetchTodoList(),
    builder: (context, snapshot) {
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }
      if(snapshot.hasError){
        return Center(
          child: Text('error'),
        );
      }
      return SafeArea(
        child: ListView.separated(itemBuilder: (context,index){
          var todo=snapshot.data?[index];
          return Container(
            height: 100.0,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:Row(
              children: [
                Expanded(flex:1,child: Text('${todo?.id}')),
                Expanded(flex:2,child: Text('${todo?.title}')),
                Expanded(flex:3,child: Row(
                  children:[

                 InkWell(
                   onTap:(){
                     todoController.UpdatePatchCompleted(todo!)
                         .then((value){
                       ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                           duration:const Duration(milliseconds: 500),
                           content: Text('$value'),
                         )
                       );
                     });

                },

                   child:buildCallContainer('patch',Colors.orange),),
              InkWell(child:buildCallContainer('put',Colors.orange)),
              InkWell(
                  onTap:(){ todoController.deleteTodo(todo!).then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration:const Duration(milliseconds: 500),
                          content: Text('$value'),
                        )
                    );
                  });

                  },
                  child:buildCallContainer('delete',Colors.orange)),

                  ]

                )),
              ],
            )
          );
          return Container();
        }, separatorBuilder: (context,index){
          return Divider(thickness: 0.5,height: 0.5,);
        }, itemCount: snapshot.data?.length ?? 0),
      );
    }),
    );
  }
}

Container buildCallContainer(String title,Color color) {
  return Container(
      width:40.0,
      height:40.0,
      decoration:BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child:Center(child:Text('$title')),
  );

}