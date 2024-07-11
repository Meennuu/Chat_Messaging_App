import 'package:chatmessagingapp/constants.dart';
import 'package:chatmessagingapp/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: const Row(
        children: [
          BackButton(
            style:
                ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          SizedBox(
            width: kDefaultPadding * 0.75,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kristin Watson",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.local_phone,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              color: Colors.white,
            )),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
