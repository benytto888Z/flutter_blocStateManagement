import 'package:flutter/material.dart';

class Menu {
  final String itemTitle, route;
  final Icon itemIcone;
  Menu({required this.itemTitle, required this.route, required this.itemIcone});
}

List<Menu> menus = [
  Menu(
      itemTitle: "Home",
      route: "/",
      itemIcone: Icon(Icons.home, color: Colors.indigo)),
  Menu(
      itemTitle: "Counter Stful",
      route: "/counter",
      itemIcone: Icon(Icons.event, color: Colors.indigo)),
  Menu(
      itemTitle: "Counter Bloc",
      route: "/counter_bloc",
      itemIcone: Icon(Icons.timer, color: Colors.indigo)),
  Menu(
      itemTitle: "Git Users",
      route: "/git_users",
      itemIcone: Icon(Icons.person, color: Colors.indigo)),
 
];
