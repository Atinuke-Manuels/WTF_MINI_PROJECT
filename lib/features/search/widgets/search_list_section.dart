import 'package:blend/features/search/widgets/search_list_item.dart';
import 'package:flutter/material.dart';

class SearchListSection extends StatelessWidget {
  const SearchListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchListItem(
          image: Image.asset(
            "assets/home_images/facebook.jpg",
            width: 50,
            height: 50,
          ),
          preTitle: "Facebook",
          title: "UI/UX Designer",
          postTitle1: "\$4500/m",
          postTitle2: "Toronto Canada",
          postTitle3: "6h",
        ),
        SearchListItem(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.pink.shade100,
              padding: EdgeInsets.all(4),
              child: Image.asset(
                "assets/home/dribbleLogo.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          preTitle: "Dribble",
          title: "Product Designer",
          postTitle1: "\$6000/m",
          postTitle2: "Toronto Canada",
          postTitle3: "12h",
          onTap: () {},
        ),
        SearchListItem(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.grey.shade100,
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/home/googleImg.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          preTitle: "Google",
          title: "Senior UX Designer",
          postTitle1: "\$4500/m",
          postTitle2: "NewYork, USA",
          postTitle3: "24h",
          onTap: () {},
        ),
        SearchListItem(
          image: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green.shade100,
              padding: EdgeInsets.all(2),
              child: Image.asset(
                "assets/home/spotify_logo.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
          preTitle: "Shopify",
          title: "Visual Designer",
          postTitle1: "\$1200/m",
          postTitle2: "NewYork, USA",
          postTitle3: "24h",
          onTap: () {},
        ),
        SearchListItem(
          image: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.black),
            child: Image.asset(
              "assets/home/netflix3.png",
              height: 50,
              width: 50,
            ),
          ),
          preTitle: "NetFlix",
          title: "Visual Designer",
          postTitle1: "\$1200/m",
          postTitle2: "NewYork, USA",
          postTitle3: "24h",
          onTap: () {},
        ),
      ],
    );
  }
}
