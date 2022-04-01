import 'package:flutter/material.dart';
import 'package:tiktok_ui/model/model.dart';

class BottomVideoCaption extends StatelessWidget {
  const BottomVideoCaption({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('@${video.user.name}'),
        Text(video.caption),
        Row(
          children: [
            const Icon(Icons.music_note),
            Text(video.title),
          ],
        )
      ],
    );
  }
}
