import 'package:flutter/material.dart';

import '../common_widgets/button_item.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/splash_image/splash_img.png"),
              height: 450,
              width: MediaQuery.of(context).size.width,
            ),
            Text("Find a Perfect \n   Job Match", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            Text("Finding your dream job is easier \n     and faster with job_hub", style: TextStyle(color: Colors.grey.shade600),),
            SizedBox(height: 50,),
            ButtonItem(
              buttonWidth: MediaQuery.of(context).size.width * 0.7,
              title: "Let's Get Started",
              onPress: () {
                Navigator.pushNamed(context, '/LoginPage');
              },
              arrowIcon: Icon(Icons.arrow_forward, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}

