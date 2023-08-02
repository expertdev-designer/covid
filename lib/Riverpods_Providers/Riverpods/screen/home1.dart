import 'package:api_tuto/Riverpods_Providers/Riverpods/screen/main_river.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home1 extends ConsumerWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    String ourData=ref.read<String>(stringProvider);
    return Scaffold(
      body: Center(
        child:Text(ourData,style: TextStyle(
          color: Colors.green,
          fontSize: 34,
          fontWeight: FontWeight.bold,

        ),)
      ),
    );
  }
}
