import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import 'addinfo_btnwiget.dart';

class Backgroundcardwiger extends StatelessWidget {
  const Backgroundcardwiger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/original/k340hGNTfE0DYlDqXRJfMyXJtDx.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Addinfowigets(icon: Icons.add,size: 30,fontSize: 15, title: 'My List'),
                        _playbutton(),
                        Addinfowigets(icon: Icons.info_outline,size: 30,fontSize: 15, title: "info")
                      ],
                    ),
                  ),
                )
              ],
            );
  }

    TextButton _playbutton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kwhitecolor),
      ),
      icon: const Icon(
        CupertinoIcons.play_arrow_solid,
        size: 25,
        color: kcolorblack,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 15, color: kcolorblack),
        ),
      ),
    );
  }
}