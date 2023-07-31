import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_bloc.dart';
import 'package:api_tuto/cubit/state_cubit/internet_cubit.dart';
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
import 'example_fever.dart';
import 'form_validation_using_bloc/bloc/sign_in_bloc.dart';
import 'form_validation_using_bloc/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(create: (context)=>SignInBloc(),
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignInScreen(),
    )
    );



    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //
    //   theme: ThemeData(
    //
    //     //
    //     // This works for code too, not just values: Most code changes can be
    //     // tested with just a hot reload.
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //
    //   home:SplashScreen(),
    // );
  }
}




