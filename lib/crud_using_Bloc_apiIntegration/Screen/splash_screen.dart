import 'dart:async';

import 'package:api_tuto/crud_using_Bloc_apiIntegration/Screen/crud_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpashScreen1 extends StatefulWidget {
  SpashScreen1({ Key? key}) : super(key: key);

  @override
  State<SpashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SpashScreen1> with SingleTickerProviderStateMixin {
 late AnimationController _controller;
 late  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    Timer(const Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CRUDScreen())));
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Demo'),
      ),
      body: Center(

        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.rotate(
              angle: _animation.value * 2 * 3.14, // Rotate 360 degrees
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            );
          },
        ),

      ),
    );
  }
}
