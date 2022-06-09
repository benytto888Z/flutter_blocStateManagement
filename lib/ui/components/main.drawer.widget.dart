
import 'package:flutter/material.dart';
import 'package:newstate_management/global/global.parameters.dart';
import 'package:newstate_management/ui/components/drawer.header.dart';
import 'package:newstate_management/ui/components/drawer.item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          children:  [
             AppDrawerHeader(),
              ...(menus).map(
              (item) => DrawerItem(item.itemTitle, item.route, item.itemIcone))
          ],
        ),
    );
  }
}