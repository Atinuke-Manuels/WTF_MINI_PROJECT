import 'package:flutter/material.dart';

import '../widgets/message_section_item.dart';
import '../widgets/message_section_list.dart';

class MessageSection extends StatelessWidget {
  const MessageSection({super.key});

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
                        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/BottomNavigation');
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Text(
                  "Message",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
                        ),
                        SizedBox(height: 30,),
                        MessageSectionList()
                      ],
                    ),
                  ),
            )));
  }
}
