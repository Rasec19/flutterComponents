import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ['Megaman', 'Dragon ball', 'Pokémon', 'Digimon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((item) => ListTile(
                    trailing: const Icon(Icons.arrow_forward_ios),
                    title: Text(item),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
