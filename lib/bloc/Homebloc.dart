import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/bloc/HomeEvents.dart';
import 'package:tests/bloc/HomeState.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          Colorinit(
            Color.fromARGB(207, 63, 55, 119),
          ),
        ) {
    on<changecolor>((event, emit) {
      emit(ColorRepaint(Color(Random().nextInt(0xffffffff))));
    });
  }
}
