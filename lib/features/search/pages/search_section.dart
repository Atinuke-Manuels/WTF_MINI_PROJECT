import 'package:flutter/material.dart';

import '../../home/widgets/search_bar_section.dart';
import '../widgets/search_button_item.dart';
import '../widgets/search_list_item.dart';
import '../widgets/search_list_section.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.35),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/BottomNavigation');
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                    Text(
                      "Search",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SearchBarSection(
                hintText: "Ui Design",
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "35 Job Opportunities",
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchButton(
                        textColor: Colors.white,
                        buttonText: "Most Relevant",
                        buttonColor: Color(0xFF00A6A3),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 30, vertical: 12)),
                      ),
                      SearchButton(
                        textColor: Colors.black,
                        buttonText: "Most Recent",
                        buttonColor: Colors.white,
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 36, vertical: 12)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SearchListSection()
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

