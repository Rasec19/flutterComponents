import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?cs=srgb&dl=pexels-james-wheeler-1619317.jpg&fm=jpg',
            name: null,
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://img.freepik.com/free-vector/        hand-drawn-flat-design-mountain-landscape_52683-79195.jpg?w=2000',
            name: 'Un hermoso paisaje',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
