import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.image,
    required this.boxColor,
    required this.title,
    required this.onPress,
  });

  final IconData image;
  final Color boxColor;
  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextButton(onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(image, color: Colors.white, size: 18,),
              ),
              SizedBox(width: 8),
              Text(title, style: TextStyle(color: Colors.black, fontSize: 14),)
            ],
          )),
    );
  }
}
