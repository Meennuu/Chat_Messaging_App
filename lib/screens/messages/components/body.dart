import 'package:chatmessagingapp/constants.dart';
import 'package:chatmessagingapp/models/ChatMessage.dart';
import 'package:chatmessagingapp/screens/messages/components/chat_input_field.dart';
import 'package:chatmessagingapp/screens/messages/components/message.dart';
import 'package:chatmessagingapp/screens/messages/components/text_messgae.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                    message: demeChatMessages[index],
                  )),
        )),
        const ChatInputField()
      ],
    );
  }
}
