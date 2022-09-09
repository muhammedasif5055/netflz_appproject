import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberCardWiget extends StatelessWidget {
  const NumberCardWiget({
    Key? key,
    required this.index, 
    required this.imageUrl,
  }) : super(key: key);
  final int index;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 200,
              ),
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            imageUrl))),
              ),
            ],
          ),
          Positioned(
            left: 10,
            bottom: -25,
            child: BorderedText(
                strokeWidth: 5.0,
                strokeColor: Colors.white,
                child: Text(
                  "$index",
                  style: TextStyle(
                      fontSize: 140,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      decorationColor: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
