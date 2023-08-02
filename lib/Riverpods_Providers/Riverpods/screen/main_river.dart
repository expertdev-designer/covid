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