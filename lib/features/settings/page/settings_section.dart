import 'package:flutter/material.dart';

import '../widgets/notification_item.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/BottomNavigation');
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 60,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NotificationItem(
                    title: "New Post",
                    subtitle: "If any new post",
                    value: true,
                  ),
                  NotificationItem(
                    title: "Got Hired",
                    subtitle: "If you got hired by any company",
                    value: true,
                  ),
                  NotificationItem(
                    title: "Got rejected",
                    subtitle: "If you got rejected by any company",
                    value: false,
                  ),
                  NotificationItem(
                    title: "Message",
                    subtitle: "Got any new message?",
                    value: false,
                  ),
                  NotificationItem(
                    title: "Call",
                    subtitle: "Have a call",
                    value: false,
                  ),
                  NotificationItem(
                    title: "Dark mode",
                    subtitle: "Enable dark theme",
                    value: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
