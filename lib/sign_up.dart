import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(String email , password) async {

    try{

      Response response = await post(
          Uri.parse('https://reqres.in/api/login'),
          body: {
            'email' : email,
  'password' : password
}
);

if(response.statusCode == 200){

var data = jsonDecode(response.body.toString());
     print(data['token']);
   print('Login successfully');

}else {
print('failed');
}
}catch(e){
print(e.toString());
}
}
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller:passwordController,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(

            onTap:(){
              login(emailController.text.toString(),passwordController.text.toString());
            },
           child: Container(
              decoration: BoxDecoration(

                color: Colors.green,

                borderRadius:BorderRadius.circular(10),
              ),
              height: 50,
              child: Center(child: Text('Login'),),
            )
            ),
          ],
        )
      ),
    );;
  }
}
