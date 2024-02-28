import 'package:flutter/material.dart';

class scrollable_home_item extends StatelessWidget {
  const scrollable_home_item({
    super.key,
    required this.firstImg,
    required this.firstImgTitle,
    required this.secondImg,
    required this.title,
    required this.subTitle,
    required this.location,
  });

  final Widget firstImg;
  final String firstImgTitle;
  final Widget secondImg;
  final String title;
  final String subTitle;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      width: MediaQuery.of(context).size.width * 0.68,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Container(
                      height: 32,
                      width: 32,
                      color: Colors.grey.shade300,
                      padding: EdgeInsets.all(8),
                      child: firstImg,
                    ),
                  ),
                  Text(firstImgTitle, style: TextStyle(fontSize: 12, color: Colors.grey.shade600),)
                ],
              ),
              secondImg
            ],
          ),
          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              Row(
                children: [
                  Text(subTitle, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                  Text(location, style: TextStyle(fontSize: 12, color: Colors.grey.shade600),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
