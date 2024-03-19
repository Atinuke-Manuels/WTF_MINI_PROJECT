import 'package:blend/features/home/widgets/search_bar_section.dart';
import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Container(
                  height: 40,
                  width: 40,
                  color: Color(0xFF00A6A3),
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.dehaze_rounded, size: 22, color: Colors.white,),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset("assets/home/profile_pics.jpg", height: 40, width: 40,),
            )
          ],
        ),
        SizedBox(height: 30,),
        SearchBarSection(
          hintText: "Search here...",
          onTap: () {},
        ),
      ],
    );
  }
}

