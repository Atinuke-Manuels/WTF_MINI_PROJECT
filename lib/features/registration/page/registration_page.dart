import 'package:blend/features/registration/widget/registration_bottom_section.dart';
import 'package:blend/features/registration/widget/registration_top_section.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              children: [
                RegistrationTopSection(),
                RegistrationBottomSection()
              ],
            ),
          ),

        ),
      ),
    );
  }
}
