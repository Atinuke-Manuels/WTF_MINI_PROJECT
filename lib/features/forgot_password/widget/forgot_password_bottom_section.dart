import 'package:flutter/material.dart';

import '../../common_widgets/button_item.dart';

class ForgotPasswordBottomSection extends StatelessWidget {
  const ForgotPasswordBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ButtonItem(
              title: "RESET",
              onPress: () {

              },
              buttonWidth: MediaQuery.of(context).size.width * 0.95),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Remembered your password? ", style: TextStyle(color: Colors.grey.shade600, fontSize: 16),),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/LoginPage');
                  },
                  child: Text("Log In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),))
            ],
          )
        ],
      ),
    );
  }
}
