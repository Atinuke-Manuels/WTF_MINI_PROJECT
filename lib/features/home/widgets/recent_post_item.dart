import 'package:flutter/material.dart';

class RecentPostItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final Widget image;

  const RecentPostItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              image,
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(subtitle, style: TextStyle(color: Colors.grey.shade600, fontSize: 12),),
                ],
              ),
            ],
          ),
          Text(amount, style: TextStyle(color: Colors.grey.shade600, fontSize: 12),)
        ],
      ),
    );
  }
}