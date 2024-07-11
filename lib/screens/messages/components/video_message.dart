import 'package:chatmessagingapp/constants.dart';
import 'package:chatmessagingapp/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class VideoMessage extends StatelessWidget {
  final ChatMessage message;
  const VideoMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/Video_Place_Here.png"),
            ),
            Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    color: kPrimaryColor, shape: BoxShape.circle),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 16,
                ))
          ],
        ),
      ),
    );
  }
}
