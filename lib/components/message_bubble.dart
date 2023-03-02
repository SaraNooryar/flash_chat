import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class MessageBubble extends StatelessWidget {
  final String? message,sender;
  const MessageBubble({Key? key,this.message, this.sender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(bubbleRadious),
            topRight: Radius.circular(bubbleRadious),
            bottomLeft: Radius.circular(bubbleRadious),
            bottomRight: Radius.circular(bubbleRadious),
          ),
          color:Colors.blue,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12.0),
            child: Column(
              children: [
                Text(
                  sender!,
                  style: TextStyle(fontSize: 12,color: kChatEmailColor),
                ),
                SizedBox(height: 8),
                Text(
                  message!,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      );

  }
}
