import 'package:blend/features/forgot_password/widget/forgot_password_bottom_section.dart';
import 'package:blend/features/forgot_password/widget/forgot_password_top_section.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 100,),
                ForgotPasswordTopSection(),
                ForgotPasswordBottomSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
