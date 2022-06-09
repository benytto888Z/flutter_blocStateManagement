import 'package:flutter/material.dart';
import 'package:newstate_management/ui/pages/counter.bloc..page.dart';
import 'package:newstate_management/ui/pages/counter.stful..page.dart';
import 'package:newstate_management/ui/pages/git.users..page.dart';
import 'package:newstate_management/ui/pages/home.page.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/counter": (context) => const CounterStfulPage(),
        "/counter_bloc": (context) => const CounterBlocPage(),
        "/git_users": (context) => const GitUsersPage(),
      },
      // initialRoute: "/",
      title: 'general revision',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          headline6 :  TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 230, 104, 95),
                      fontWeight: FontWeight.w700,),
                ),
        )
    );
  }
}
