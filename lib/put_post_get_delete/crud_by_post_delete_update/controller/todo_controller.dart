

import '../Models/todo.dart';
import '../screens/repository.dart';

class TodoController{
 final Repository _repository;
 TodoController(this._repository);
 //get
Future<List<Todo>> FetchTodoList() async {
  return _repository.getTodoList();
}
 Future<String> UpdatePatchCompleted(Todo todo) async {
   return _repository.patchCompleted(todo);
 }
 Future<String> deleteTodo(Todo todo) async {
   return _repository.deletedTodo(todo);
 }
}