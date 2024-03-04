import 'package:flutter/material.dart';

import '../../drawer/pages/navigation_drawer.dart';
import '../../drawer/widgets/drawer_item.dart';
import '../../profile/page/profile_section.dart';
import '../widgets/home_header_section.dart';
import '../widgets/recent_post_section.dart';
import '../widgets/scrollable_home_section.dart';

// import 'package:blend/features/drawer/pages/navigation_drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const NavigationDrawer(),
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeaderSection(),
                ScrollableHomeSection(),
                RecentPostSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    width: MediaQuery.of(context).size.width * 0.75,
    child: SingleChildScrollView(
      child: NavigationDrawerSection(),
    ),
  );
}
