import 'package:chatmessagingapp/components/filled_outline_button.dart';
import 'package:chatmessagingapp/constants.dart';
import 'package:chatmessagingapp/models/Chat.dart';
import 'package:chatmessagingapp/screens/chats/components/chat_card.dart';
import 'package:chatmessagingapp/screens/messages/message_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Messages"),
              const SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard(
                      chat: chatsData[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessagesScreen())),
                    )))
      ],
    );
  }
}
