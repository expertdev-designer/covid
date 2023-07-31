import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_in_bloc.dart';
import 'bloc/sign_in_event.dart';
import 'bloc/sign_in_state.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Bloc Provider")),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  if (state is SignInErrorState) {
                    return Text(
                      state.errorMessage,
                      style: TextStyle(color: Colors.red),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              Container(
                height: 55,
                width: 300,
                child: TextFormField(
                  controller: emailController,
                  onChanged: (val) {
                    BlocProvider.of<SignInBloc>(context).add(
                      SignInTextChangedEvent(emailController.text, passwordController.text),
                    );
                  },
                  decoration: InputDecoration(hintText: 'Email'),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 30,
                width: 300,
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (val) {
                    BlocProvider.of<SignInBloc>(context).add(
                      SignInTextChangedEvent(emailController.text, passwordController.text),
                    );
                  },
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  if (state is SignInLoadingtate) {
                    return CircularProgressIndicator();
                  }
                  return CupertinoButton(
                    onPressed: () {
                      if (state is SignInValidState) {
                        BlocProvider.of<SignInBloc>(context).add(
                          SignInSubmittedEvent(emailController.text, passwordController.text),
                        );
                      }
                    },
                    color: (state is SignInValidState) ? Colors.blue : Colors.grey,
                    child: Text("Sign In"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
