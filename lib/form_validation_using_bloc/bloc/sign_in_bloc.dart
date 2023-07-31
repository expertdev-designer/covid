
import 'dart:async';

import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_event.dart';
import 'package:api_tuto/Bloc%20Provider/state_events_bloc/internet_state.dart';
import 'package:api_tuto/form_validation_using_bloc/bloc/sign_in_event.dart';
import 'package:api_tuto/form_validation_using_bloc/bloc/sign_in_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState> {

  SignInBloc() :super(SignInInitialState()) {
    on<SignInTextChangedEvent>((event,emit){
      if(EmailValidator.validate(event.emailValue)==false){
      emit(SignInErrorState("Please enter a valid email address"));

    }
      else if(event.passwordValue.length<8){
      emit(SignInErrorState("Please enter a validPassword"));
      }
      else{
      emit(SignInValidState());
      }
      });
   on<SignInSubmittedEvent>((event,emit){
     emit(SignInLoadingtate());
      });

  }

}
