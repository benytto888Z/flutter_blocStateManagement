import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newstate_management/bloc/theme.bloc.dart';
import 'package:newstate_management/ui/pages/counter.bloc..page.dart';
import 'package:newstate_management/ui/pages/counter.stful..page.dart';
import 'package:newstate_management/ui/pages/git.users..page.dart';
import 'package:newstate_management/ui/pages/home.page.dart';

class RootViewCustomTheme extends StatelessWidget {
  const RootViewCustomTheme({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context,state){
        return  MaterialApp(
        title: 'general revision',
        theme: state.themeData,
        routes: {
        "/": (context) => const HomePage(),
        "/counter": (context) => const CounterStfulPage(),
        "/counter_bloc": (context) => const CounterBlocPage(),
        "/git_users": (context) => const GitUsersPage(),
           },
      // initialRoute: "/",
        );
      },
    );
  }
}
