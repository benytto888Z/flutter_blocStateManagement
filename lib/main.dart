import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newstate_management/bloc/counter.bloc.dart';
import 'package:newstate_management/bloc/theme.bloc.dart';
import 'package:newstate_management/ui/components/root.view.custom.theme.dart';
import 'package:newstate_management/ui/components/root.view.dart';

import 'package:newstate_management/ui/pages/counter.bloc..page.dart';
import 'package:newstate_management/ui/pages/counter.stful..page.dart';
import 'package:newstate_management/ui/pages/git.users..page.dart';
import 'package:newstate_management/ui/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> CounterBloc()),
        BlocProvider(create: (context)=> ThemeBloc()),
      ],
      child: RootViewCustomTheme(),
    );
  }
}


//----------ceci est la premiè

class MyAppV01 extends StatelessWidget {
  const MyAppV01({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const RootView();
  }
}


