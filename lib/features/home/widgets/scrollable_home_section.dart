import 'package:blend/features/home/widgets/scrollable_home_item.dart';
import 'package:flutter/material.dart';

class ScrollableHomeSection extends StatelessWidget {
  const ScrollableHomeSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Job", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("show all", style: TextStyle(color: Colors.grey.shade600, fontSize: 12),))
            ],
          ),
        ),
        Container(
          height: 150,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            scrollable_home_item(
              firstImg: Image.asset("assets/home/googleImg.png", height: 10, width: 10,),
              firstImgTitle: "Google",
              secondImg: Image.asset("assets/home/heart.png", height: 24, width: 24,),
              title: "Lead Product Manager",
              subTitle: "\$2500/m  ",
              location: "Toronto, Canada",
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: scrollable_home_item(
                    firstImg: Image.asset("assets/home/googleImg.png", height: 10, width: 10,),
                    firstImgTitle: "Google",
                    secondImg: Image.asset("assets/home/heart.png", height: 24, width: 24,),
                    title: "Lead Product Manager",
                    subTitle: "\$2500/m  ",
                    location: "Toronto, Canada",
                  ),
                ),
          ]),
        ),
      ],
    );
  }
}

