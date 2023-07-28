import 'package:api_tuto/home.dart';
import 'package:api_tuto/sign_up.dart';
import 'package:api_tuto/splash_screen.dart';
import 'package:api_tuto/upload_images.dart';
import 'package:flutter/material.dart';

import 'example_fever.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SignUpScreen(),
    );
  }
}



