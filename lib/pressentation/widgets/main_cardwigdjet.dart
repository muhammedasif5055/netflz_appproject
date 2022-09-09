import 'package:flutter/material.dart';

class MainCardWiget extends StatelessWidget {
  final String imageUrl;
  const MainCardWiget({
    Key? key,
     required this.imageUrl,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl))),
      ),
    );
  }
}
