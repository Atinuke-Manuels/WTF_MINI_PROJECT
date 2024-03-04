import 'package:flutter/material.dart';

import '../widgets/drawer_item.dart';


class NavigationDrawerSection extends StatelessWidget {
  const NavigationDrawerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset("assets/home/profile_pics.jpg", height: 70, width: 70,),
          ),
          Text(
            "Atinuke Manuels",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "aamanuels@tech4dev.org",
            style: TextStyle(
                fontSize: 12, color: Colors.grey.shade600),
          ),
          SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawerItem(
                boxColor: Colors.red,
                title: "Edit Profile",
                image: Icons.person,
                onPress: (){
                  Navigator.pushNamed(context, '/ProfileSection');
                },
              ),
              DrawerItem(
                boxColor: Colors.pinkAccent.shade200,
                title: "Applications (8)",
                image: Icons.watch_later_rounded,
                onPress: () {},
              ),
              DrawerItem(
                boxColor: Color(0xFF00A6A3),
                title: "Notification Settings",
                image: Icons.settings,
                onPress: () {Navigator.pushNamed(context, '/SettingsSection');},
              ),
              DrawerItem(
                boxColor: Colors.purpleAccent,
                title: "Share App",
                image: Icons.heart_broken,
                onPress: () {},
              ),
              SizedBox(height: 70,),
              DrawerItem(
                boxColor: Colors.red.shade600,
                title: "Logout",
                image: Icons.logout,
                onPress: () {},
              ),

            ],
          )

        ],
      ),
    );
  }
}

