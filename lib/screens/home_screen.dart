import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componenetes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.access_time_outlined),
            title: const Text('Nombre de ruta'),
            onTap: () {
              Navigator.pushNamed(context, 'listview1');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
