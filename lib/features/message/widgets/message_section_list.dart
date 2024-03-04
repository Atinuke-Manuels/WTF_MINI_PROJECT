import 'package:flutter/material.dart';

import 'message_section_item.dart';

class MessageSectionList extends StatelessWidget {
  const MessageSectionList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MessageSectionItem(
          image: "assets/message/msg15.jpg",
          title: "Rozzanne Barrientes",
          subtitle: "A wonderful serenity has taken place in " ,
          messageCount: Container(
            height: 18, width: 18,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xFF00A6A3)),
            child: Text("2", style: TextStyle(color: Colors.white, fontSize: 10,), textAlign: TextAlign.center,),
          ),
        ),
        MessageSectionItem(
          image: "assets/message/msg7.jpg",
          title: "Anaya Sanji",
          subtitle: "What about Paypal? " ,
          messageCount: Container(
            height: 18, width: 18,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xFF00A6A3)),
            child: Text("1", style: TextStyle(color: Colors.white, fontSize: 10,), textAlign: TextAlign.center,),
          ),
        ),
        MessageSectionItem(
          image: "assets/message/msg8.jpg",
          title: "Elizabeth Olsen",
          subtitle: "We Should move forward to talk with? " ,

        ),
        MessageSectionItem(
          image: "assets/message/msg9.jpg",
          title: "Tony Stack",
          subtitle: "Let's have a call for a future project " ,
        ),
        MessageSectionItem(
          image: "assets/message/msg11.jpg",
          title: "Banner",
          subtitle: "I dont think I can fit it on this UI we should " ,
        ),
        MessageSectionItem(
          image: "assets/message/msg12.jpg",
          title: "Steave",
          subtitle: "moved in some special work recently so " ,
        ),
        MessageSectionItem(
          image: "assets/message/msg16.jpg",
          title: "Thor",
          subtitle: "You should be a avenger since you like talking " ,
        ),
        MessageSectionItem(
          image: "assets/home/profile_pics.jpg",
          title: "Natasha",
          subtitle: "She is actually enjoying every bit of the online course " ,
        ),
      ],
    );
  }
}

