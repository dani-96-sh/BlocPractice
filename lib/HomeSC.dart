import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/bloc/HomeEvents.dart';
import 'package:tests/bloc/HomeState.dart';
import 'package:tests/bloc/Homebloc.dart';
import 'package:tests/counter/CounterEvents.dart';
import 'package:tests/counter/CounterState.dart';
import 'package:tests/counter/Counterbloc.dart';

class HomeSc extends StatefulWidget {
  const HomeSc({super.key});

  @override
  State<HomeSc> createState() => _HomeScState();
}

class _HomeScState extends State<HomeSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              if (state is InitCounter) {
                return Text('${state.counter}');
              }
              if (state is UpdateCounter) {
                return Text('${state.counter}');
              }
              return Container(color: Colors.black);
            }),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Incresmentpressed());
              },
              child: Text('+'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Decresmentpressed());
              },
              child: Text('-'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(resetpressed());
              },
              child: Text('reset'),
            )
          ],
        ),
      ),
    );
  }
}
