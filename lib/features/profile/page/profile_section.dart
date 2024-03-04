import 'package:blend/features/common_widgets/button_item.dart';
import 'package:blend/features/common_widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        // minimum: EdgeInsets.all(16),
        child: Scaffold(
          body: SingleChildScrollView(
            reverse: true,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/BottomNavigation');
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 60,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/home/profile_pics.jpg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Text(
                        "Atinuke Manuels",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade600),
                          ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade600),
                      ),
                      TextInputField(
                          hint: "Name",
                          // leading: Icon(Icons.person),
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Your Email",
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade600),
                      ),
                      TextInputField(
                          hint: "Email",
                          // leading: Icon(Icons.mail),
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade600),
                      ),
                      TextInputField(
                        hint: "Password",
                        // leading: Icon(Icons.mail),
                        keyboardType: TextInputType.text,
                        obscure: true,
                        trailing: Icon(
                          Icons.visibility_off_sharp,
                          color: Colors.grey.shade500,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonItem(
                      title: "Save Now",
                      onPress: () {},
                      buttonWidth: MediaQuery.of(context).size.width * 0.95)
                ],
              ),
            ),
          ),
        ));
  }
}
