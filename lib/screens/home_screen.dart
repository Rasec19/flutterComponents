import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componenetes en Flutter'),
        ),
        body: ListView.separated(
          itemCount: AppRoutes.menuOptions.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(menuOptions[index].icon),
            title: Text(menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
