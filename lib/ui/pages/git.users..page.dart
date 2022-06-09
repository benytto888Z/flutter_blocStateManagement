import 'package:flutter/material.dart';
import 'package:newstate_management/ui/components/main.drawer.widget.dart';


class GitUsersPage extends StatelessWidget {
  const GitUsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("Git Users Page"),),
      body:  Center(
         child: Text("Git Users Page",
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}