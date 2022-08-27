import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CardShared(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://scitechdaily.com/images/Spherical-Closed-Universe-Concept.jpg',name: 'My universe'),
          CustomCardType2(imageUrl: 'https://cdn.mos.cms.futurecdn.net/owm4oa3hXUG58mka7hPvfP.jpg'),
        ],
      ),
    );
  }
}

