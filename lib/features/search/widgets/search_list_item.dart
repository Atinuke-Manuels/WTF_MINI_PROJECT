import 'package:flutter/material.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({
    super.key,
    required this.image,
    required this.preTitle,
    required this.title,
    required this.postTitle1,
    required this.postTitle2,
    required this.postTitle3,
    this.onTap,

  });

  final Widget image;
  final String preTitle;
  final String title;
  final String postTitle1;
  final String postTitle2;
  final String postTitle3;
  final Function()? onTap;

@override
Widget build(BuildContext context) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.grey.shade200
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          image,
          // SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( preTitle, style: TextStyle(color: Colors.grey.shade600, fontSize: 12),),
              Text(title, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(postTitle1, style: TextStyle(color: Colors.grey.shade600, fontSize: 12),),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Text(postTitle2, style: TextStyle(color: Colors.grey.shade600, fontSize: 12),),

                ],
              )
            ],
          ),
          Column(
            children: [
              Image.asset("assets/home/heart.png", width: 20, height: 20,),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(postTitle3, style: TextStyle(color: Colors.grey.shade600, fontSize: 12),)
            ],
          )
        ],
      ),
    ),
  );
}
}

