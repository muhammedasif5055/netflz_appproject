import 'package:flutter/material.dart';

class MainCardWiget extends StatelessWidget {
  const MainCardWiget({
    Key? key,
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
            image: NetworkImage("https://www.themoviedb.org/t/p/original/ubQeUNRlc8o3nsvB1JvCwICAMFY.jpg"))),
      ),
    );
  }
}