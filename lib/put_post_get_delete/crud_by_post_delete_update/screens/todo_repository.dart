import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:api_tuto/put_post_get_delete/crud_by_post_delete_update/Models/todo.dart';
import 'package:api_tuto/put_post_get_delete/crud_by_post_delete_update/screens/repository.dart';

class TodoRepository implements Repository{
  String dataurl="https://jsonplaceholder.typicode.com";
  @override

  Future<String> deletedTodo(Todo todo) async {
    var url=Uri.parse('$dataurl/todos/${todo.id}');
    var result='false';
    await http.delete(url).then((value) {
      print(value.body);
      return result='true';
    });
    return result;

  }

  @override

//patch-Modify passed variable Only
  @override
  Future<String> patchCompleted(Todo todo) async{
    List<Todo> todoList = [];
    var url=Uri.parse('$dataurl/todos/${todo.id}');
    //call back
    String resData='';
    await  http.patch(url,body: {
      'completed':(!todo.completed!).toString(),

    },
    headers: {'Authorizaton':'your_token'},
    ).then((response) {
      Map<String,dynamic> result=json.decode(response.body);
      print(result);
      return resData=result['completed'].toString();
    });
    return resData;
        }


  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }



  @override
  Future<String> putCompleted(Todo todo) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }


//get
  @override
  Future<List<Todo>> getTodoList() async {

    List<Todo> todoList = [];

    var url=Uri.parse('$dataurl/todos');
      var response = await http.get(url);
      var body = jsonDecode(response.body);
      //parse
    for(var i=0; i<body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
     return todoList;
    }
  }
