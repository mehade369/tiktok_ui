import 'package:flutter/material.dart';
import 'package:tiktok_ui/model/model.dart';

class RightSideActionBar extends StatelessWidget {
  const RightSideActionBar({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 55,
          width: 55,
          child: Stack(
            alignment: Alignment.bottomCenter,
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(video.user.avatar),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        ActionIcon(
          title: video.likes,
          icon: Icons.favorite,
        ),
        ActionIcon(
          title: video.comments,
          icon: Icons.comment,
        ),
        ActionIcon(
          title: video.shares,
          icon: Icons.share,
        ),
        const ActionIcon(
          icon: Icons.more_horiz,
        ),
        CircleAvatar(
          backgroundColor: Colors.black87,
          radius: 23,
          child: CircleAvatar(
            backgroundImage: NetworkImage(video.thumbnail),
            backgroundColor: Colors.red,
            radius: 15,
          ),
        ),
      ],
    );
  }
}

class ActionIcon extends StatelessWidget {
  const ActionIcon({
    Key? key,
    this.title,
    required this.icon,
  }) : super(key: key);

  final String? title;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
            ),
            if (title != null) ...[Text(title!)],
          ],
        ),
      ),
    );
  }
}
