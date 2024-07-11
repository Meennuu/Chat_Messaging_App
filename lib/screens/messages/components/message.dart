import 'package:chatmessagingapp/constants.dart';
import 'package:chatmessagingapp/models/ChatMessage.dart';
import 'package:chatmessagingapp/screens/messages/components/audio_message.dart';
import 'package:chatmessagingapp/screens/messages/components/text_messgae.dart';
import 'package:chatmessagingapp/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(
            message: message,
          );
        case ChatMessageType.video:
          return VideoMessage(
            message: message,
          );
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            const SizedBox(
              width: kDefaultPadding / 2,
            )
          ],
          messageContaint(message)
        ],
      ),
    );
  }
}
