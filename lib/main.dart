//
// import 'package:api_tuto/crud_using_Bloc_apiIntegration/Screen/crud_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
//
// import 'crud_using_Bloc_apiIntegration/Screen/splash_screen.dart';
// import 'crud_using_Bloc_apiIntegration/bloc/user_list_bloc.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [BlocProvider(create: (context) => UserListBloc())],
//       child: MaterialApp(
//         title: 'CRUD using bloc',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         ),
//         home: SpashScreen1(),
//       ),
//     );
//   }
// }

import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_bloc.dart';
import 'package:api_tuto/cubit/state_cubit/internet_cubit.dart';
import 'package:api_tuto/cubit_with_dio/logic/cubits/post_cubit.dart';
import 'package:api_tuto/home.dart';
import 'package:api_tuto/put_post_get_delete/crud_by_post_delete_update/screens/home2.dart';
import 'package:api_tuto/put_post_get_delete/home1_of_delete_only.dart';

import 'package:api_tuto/sign_up.dart';
import 'package:api_tuto/splash_screen.dart';
import 'package:api_tuto/upload_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc Provider/screens/first_screen.dart';
//import 'cubit/screen/second_screen.dart';
//import 'crud_using_Bloc_apiIntegration/crud_screen.dart';
import 'cubit_with_dio/screens/home_screen2.dart';
import 'example_fever.dart';
import 'form_validation_using_bloc/bloc/sign_in_bloc.dart';
import 'form_validation_using_bloc/sign_in_screen.dart';


//CODE FOR RIVERPOD

import 'package:api_tuto/Riverpods_Providers/Riverpods/screen/home1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringProvider=Provider<String>((ref) {
  return "Flutter riverpod";
} );
void main(List<String> args) {
  runApp(const ProviderScope (child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(create: (context)=>SignInBloc(),
    // child:MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home:CRUDScreen(),
    // )
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home:Home1(),
    );
  }}



















   //CODE FOR BLOCPROVIDER
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(create: (context)=>SignInBloc(),
    // child:MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home:CRUDScreen(),
    // )
    // );
    return BlocProvider(
    create :(context)=>PostCubit1(),
    child:MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomeScreen2(),
    )
    );
/*
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: UploadImageScreen(),
    );

 */
  }
}


*/


//For cubit and dio together
// create :(context)=>PostCubit1(),
// child:MaterialApp(
// debugShowCheckedModeBanner: false,
// home:Home_screen();
// )