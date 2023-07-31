import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_bloc.dart';
import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_state.dart';
import 'package:api_tuto/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pie_chart/pie_chart.dart';

class FirstScreen extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final colorList = <Color>[
    Color(0xff4285F4),
    Color(0xff1aa260),
    Color(0xffde5246),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Bloc Provider"),),
      ),
      body:  SafeArea(
      child:Center(
        child: BlocConsumer <InternetBloc,InternetState>(
          listener: (context,state){
            if(state is InternetGainedState){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Internet Connected"),
                backgroundColor: Colors.blue,
                ),
              );
            }else if(state is InternetLostState){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Internet not  Connected"),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context,state){
            if(state is InternetGainedState){
              return Container(

                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/aa.png', // Replace with your image path
                    ),
                    Text("Login ",style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 55,
                      width: 300,
                    child:TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(

                          hintText: 'Email'
                      ),
                    ),
                    ),
                    SizedBox(height: 20,),

                   Container(
                     height: 30,
                     width: 300,
                    child: TextFormField(
                       controller:passwordController,
                       decoration: InputDecoration(
                           hintText: 'Password'
                       ),
                     ),
                   ),
                     TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SplashScreen()),
                        );
                        // Add signup logic here
                      },
                      child:  Text(
                        'Next',
                        style: TextStyle(
                          color:  Colors.blue,
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                        ),
                      ),
                    ),

                  ],
                ),

              );
            }
            else if(state is InternetLostState){
              return Text(" Not Connected");
            }
            else{
              return Text(" Loading.......");
            }
          },

        )
      )

      ),
    );
  }

}