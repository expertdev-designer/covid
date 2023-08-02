// import 'package:http/http.dart';
//
// import '../../Models/post_model.dart';
// import 'api/api.dart';
//
// class PostRepository1{
//   API api=API();
//   Future<List<PostModel2>> fetchPosts() async{
//     try{
//       Response response=await api.sendRequest.get("/posts");
//   List<dynamic> postMaps=response.data;
//       return postMaps.map((postMap)=> PostModel2.fromJson(
//   postMap
//   )).toList();
//   }
//   catch(ex){
//       throw ex;
//   }
//   }
//}