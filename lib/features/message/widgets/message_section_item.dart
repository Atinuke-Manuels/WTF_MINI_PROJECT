import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageSectionItem extends StatelessWidget {
  const MessageSectionItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.messageCount,
  });

  final String image;
  final String title;
  final String subtitle;
  final Widget? messageCount;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // key: ValueKey(index),
      endActionPane: ActionPane(
        dismissible: DismissiblePane(
          onDismissed: () {},
        ),
        motion: const BehindMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => {},
            icon: Icons.delete,
            backgroundColor: Colors.red,
          ),
          SlidableAction(
            onPressed: (context) => {},
            icon: Icons.share,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Image.asset(
                image,
                height: 40,
                width: 40,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  width: messageCount != null
                      ? MediaQuery.of(context).size.width * 0.6
                      : MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                        color: Colors.grey.shade600),
                  ),
                ),
              ],
            ),
            if (messageCount != null) messageCount!,
          ],
        ),
      ),
    );
  }
}
