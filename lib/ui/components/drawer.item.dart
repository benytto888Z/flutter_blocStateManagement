import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String itemTitle;
  String route;
  Icon itemIcone;
  DrawerItem(this.itemTitle, this.route, this.itemIcone);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, route);
        },
        leading: itemIcone,
        trailing: const Icon(Icons.arrow_right, color: Colors.deepPurpleAccent),
        title: Text(
          itemTitle,
          style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
        ));
  }
}
