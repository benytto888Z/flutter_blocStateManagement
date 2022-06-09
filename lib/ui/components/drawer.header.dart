import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newstate_management/bloc/theme.bloc.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration:  BoxDecoration(
         gradient:LinearGradient(
           colors: [Colors.white, Theme.of(context).primaryColor]
         ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("images/logo.png"),
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  "Eagle Service",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              context.read<ThemeBloc>().add(SwitchThemeEvent());
            },
            icon: const Icon(Icons.settings),
            tooltip: "Change Theme",
          )
        ],
      ),
    );
  }
}
