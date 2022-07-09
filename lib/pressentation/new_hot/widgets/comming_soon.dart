import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflz_appproject/pressentation/new_hot/widgets/video_wigets.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constance.dart';
import '../../home/widget/addinfo_btnwiget.dart';

class ComingsoonWiget extends StatelessWidget {
  
  const ComingsoonWiget({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        khight20,
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 100, 99, 99)),
              ),
              Text(
                "11",
                style: TextStyle(
                  letterSpacing: 10,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        
        SizedBox(
        
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            VideoWigets(bimage: "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/u8XdZoM8SLjO9sO9uGQf6XF5rrl.jpg"),
            khight,
            Row(
              children: [
               const Text(
                  "Ela Veezha Poonchira",
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
             const   Spacer(),
              Row(
                children: const[
                  Addinfowigets(icon: CupertinoIcons.bell, title: "Remind Me",size: 20,fontSize: 10),
                  kwidth,
                  Addinfowigets(icon: Icons.info_outline_rounded, title: "Info",size: 20,fontSize: 10),
                  kwidth, 
                ],
              ),
              
              ],
            ),
            Text("Coming on Friday"),
            khight20,
            Text("Ela Veezha Poonchira",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            khight,
            Text("Follows two police officers at a small wireless police station on the hilltop as they work to resolve the mystery about a woman's body parts that have been scattered all over Elaveezhapoonchira.",style: TextStyle(color: Colors.grey))
          ]),
        )
      ],
    );
  }
}

