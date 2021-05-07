import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({
    Key key,
    @required this.imageUrl,
    @required this.tileName,
    @required this.lastMessageSender,
    @required this.lastMessageContent,
    @required this.lastMessageTime,
  }) : super(key: key);

  final String imageUrl;
  final String tileName;
  final String lastMessageSender;
  final String lastMessageContent;
  final String lastMessageTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        foregroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        tileName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
      subtitle: Text.rich(
        TextSpan(
          text: '$lastMessageSender: ',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: lastMessageContent,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(lastMessageTime),
          Icon(Icons.volume_off_rounded),
        ],
      ),
    );
  }
}
