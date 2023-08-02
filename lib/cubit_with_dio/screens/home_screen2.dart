// import 'package:api_tuto/cubit_with_dio/logic/cubits/post_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../logic/cubits/post_states.dart';
//
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({super.key});
//
//   @override
//   State<HomeScreen2> createState() => _HomeScreen2State();
// }
//
// class _HomeScreen2State extends State<HomeScreen2> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//           title: Text("Api Handling "),
//       ),
//       body:SafeArea(child: BlocBuilder<PostCubit1,PostStates>(
//
//           builder: (context,state){
//             if(state is PostLoading1State){
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//             if(state is PostLoaded1State){
//               return ListView.builder(itemCount: state.posts.length,itemBuilder: (context,index){
//                 return ListTile(
//                   title: Text(state.posts[index].title.toString()),
//                   subtitle: Text(state.posts[index].body.toString()),
//                 );
//               });
//             }
//             return Center(child: Text("An error Occured"),);
//           },),
//       )
//     );
//   }
// }
