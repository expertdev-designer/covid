// import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_bloc.dart';
// import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_state.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../state_cubit/internet_cubit.dart';
//
// class SecondScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  SafeArea(
//           child:Center(
//               child: BlocConsumer <InternetCubit,IntenetState>(
//                 listener: (context,state){
//                   if(state == IntenetState.Gained){
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Internet Connected"),
//                         backgroundColor: Colors.blue,
//                       ),
//                     );
//                   }else if(state == IntenetState.Lost){
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Internet not  Connected"),
//                         backgroundColor: Colors.red,
//                       ),
//                     );
//                   }
//                 },
//                 builder: (context,state){
//                   if(state == IntenetState.Gained){
//                     return Text("Connected");
//                   }
//                   else if(state == IntenetState.Lost){
//                     return Text(" Not Connected");
//                   }
//                   else{
//                     return Text(" Loading.......");
//                   }
//                 },
//
//               )
//           )
//
//       ),
//     );
//   }
//
// }