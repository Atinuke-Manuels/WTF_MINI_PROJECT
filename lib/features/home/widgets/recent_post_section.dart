import 'package:blend/features/home/widgets/recent_post_item.dart';
import 'package:flutter/material.dart';

class RecentPostSection extends StatelessWidget {
  const RecentPostSection({super.key});

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
              Text("Recent Post", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("show all", style: TextStyle(color: Colors.grey.shade600, fontSize: 12),))
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                RecentPostItem(
                  image: Image.asset("assets/home_images/facebook.jpg", height: 50, width: 50,),
                  title: "UI/UX Designer",
                  subtitle: "full time",
                  amount: "\$4500/m",
                ),
                RecentPostItem(
                  image: Image.asset("assets/home/spotify_logo.png", height: 50, width: 50,),
                  title: "Product Designer",
                  subtitle: "full time",
                  amount: "\$4500/m",
                ),
                RecentPostItem(
                  image: Container(
                    height: 50, width: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.black),
                    child: Image.asset("assets/home/netflix3.png", height: 50, width: 50,),
                  ),
                  title: "Visual Designer",
                  subtitle: "full time",
                  amount: "\$4500/m",
                ),
              ]),
        ),
      ],
    );
  }
}


//
// import 'package:blend/features/home/widgets/recent_post_item.dart';
// import 'package:flutter/material.dart';
//
// class RecentPostSection extends StatelessWidget {
//   const RecentPostSection({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> recentPostsData = [
//       {"title": "UI/UX Designer", "subtitle": "full time", "amount": "\$4500/m", "image" : Image.asset("assets/home_images/facebook.jpg", height: 50, width: 50,)},
//       {"title": "Another Job Title", "subtitle": "part time", "amount": "\$3000/m", "image" : Image.asset("assets/home_images/facebook.jpg", height: 50, width: 50,)},
//       // Add more items as needed
//     ];
//
//     return Container(
//         height: 200, // Set a fixed height for the ListView.builder widget
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Recent Post",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     "show all",
//                     style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
//                   ),
//                 )
//               ],
//             ),
//             Flexible(
//                 child: ListView.builder(
//                     itemCount: 2,
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: RecentPostItem(
//                           image: recentPostsData[index]["image"],
//                           title: recentPostsData[index]["title"],
//                           subtitle: recentPostsData[index]["subtitle"],
//                           amount: recentPostsData[index]["amount"],
//                         ),
//                       );
//                 }
//
//                 )
//             )
//           ],
//         )
//     );
//   }
// }