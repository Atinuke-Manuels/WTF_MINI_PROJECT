import 'package:flutter/material.dart';

import '../widgets/home_header_section.dart';
import '../widgets/scrollable_home_section.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeaderSection(),
                ScrollableHomeSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

