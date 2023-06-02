import 'package:demo_flutter_app/widget/app_text.dart';
import 'package:flutter/material.dart';

import '../widget/app_large_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "img/"+images[index]
                  ),
                  fit: BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(size:30,text: "Trip"),
                      AppText(size: 30,text: "Mountain"),
                      SizedBox(height: 20),
                      Container(
                        width: 245,
                        child: AppText(
                          text: "Mountain hikes give you an incredible sense of freedom along with endurance test.",
                          color: Color(0xFF878593),
                          size: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
      }),
    );
  }
}