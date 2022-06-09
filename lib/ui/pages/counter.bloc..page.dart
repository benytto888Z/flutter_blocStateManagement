import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newstate_management/bloc/counter.bloc.dart';
import 'package:newstate_management/ui/components/main.drawer.widget.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Bloc Page"),
      ),
      body: Center(
        child:
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
          if (state is CounterSuccessState || state is CounterInitialState) {
            return Text(
              "Counter Bloc Value => ${state.counter},",
              style: Theme.of(context).textTheme.headline5,
            );
          } else if (state is CounterErrorState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Counter value => ${state.counter}",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  state.errorMessage,
                  style: Theme.of(context).textTheme.headline6,)
              ],
            );
          } else {
            return Container();
          }
        }),
      ),
       floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // heroTag: {'tag' : "dec"},
            // heroTag:null,
            heroTag: 'dec',
            onPressed: () => {
              context.read<CounterBloc>().add(DecrementCounterEvent())
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            // heroTag: {'tag' : "inc"},
            // heroTag: null,
            heroTag: 'inc',
            onPressed: () => {
              context.read<CounterBloc>().add(IncrementCounterEvent())
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
