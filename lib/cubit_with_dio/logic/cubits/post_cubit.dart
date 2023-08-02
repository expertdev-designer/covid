// import 'package:api_tuto/cubit_with_dio/Models/post_model.dart';
// import 'package:api_tuto/cubit_with_dio/data/Repository/post_repository1.dart';
// import 'package:api_tuto/cubit_with_dio/logic/cubits/post_states.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class PostCubit1 extends Cubit<PostCubit1>{
//   PostCubit1(): super(PostLoading1State()){
//     fetchPosts();
//   }
//   PostRepository1 postRepository1=PostRepository1();
//   void fetchPosts() async{
//     try{
//       List<PostModel2> posts=await postRepository1.fetchPosts();
//       emit(PostLoaded1State(posts));
//     }
//     on DioError catch(ex){
//       emit(PostError1State(ex.error.toString()));
//     }
//   }
// }