//
// import 'dart:async';
//
// import 'package:connectivity/connectivity.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../Bloc Provider/state_events_bloc/internet_state.dart';
//
// enum IntenetState{ Initial, Lost,Gained}
//
// class InternetCubit extends Bloc<InternetCubit,IntenetState> {
//   Connectivity _connectivity=Connectivity();
//   StreamSubscription? connectivitySubscription;
//   InternetCubit() :super(IntenetState.Initial) {
//     connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen((result) {
//           if (result == ConnectivityResult.mobile ||
//               result == ConnectivityResult.wifi) {
//             emit(IntenetState.Gained);
//           }
//           else {
//             emit(IntenetState.Lost);
//           }
//         });
//   }
//   @override
//   Future<void> close(){
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
