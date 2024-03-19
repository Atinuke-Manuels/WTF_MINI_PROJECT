import 'package:flutter/material.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({
    super.key,
    required this.hintText,
    this.onTap,
  });

  final String hintText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 44,
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 14),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.text,
            ),
          ),
        ),
        SizedBox(width: 8,),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            height: 40,
            width: 40,
            color: Color(0xFF00A6A3),
            padding: EdgeInsets.all(4),
            child: GestureDetector(
              onTap: onTap,
              child: Icon(Icons.swap_horiz_outlined, size: 22, color: Colors.white,),),
          ),
        ),
      ],
    );
  }
}
