import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    required this.padding,
  });

  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final MaterialStateProperty<EdgeInsetsGeometry> padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(buttonText, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w200),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor), // Set background color
        padding: padding,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set border radius
          ),
        ),
      ),
    );
  }
}
