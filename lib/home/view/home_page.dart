import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tiktok_ui/home/bloc/video_feed_bloc.dart';
import 'package:tiktok_ui/model/model.dart';
import 'package:tiktok_ui/widget/widget.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({final Key? key}) : super(key: key);
  @override
  Widget build(final BuildContext context) => BlocProvider(
        create: (context) => VideoFeedBloc()
          ..add(
            const VideoFeedEvent.fetched(),
          ),
        child: const _FeedBlocBuilder(),
      );
}

class _FeedBlocBuilder extends StatefulWidget {
  const _FeedBlocBuilder({final Key? key}) : super(key: key);

  @override
  State<_FeedBlocBuilder> createState() => _FeedBlocBuilderState();
}

class _FeedBlocBuilderState extends State<_FeedBlocBuilder> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          BlocBuilder<VideoFeedBloc, VideoFeedState>(
            builder: (context, state) => state.when(
              initial: () => Container(
                color: Colors.blueAccent,
              ),
              loading: () => Container(
                color: Colors.blueAccent,
              ),
              failure: () => Container(
                color: Colors.blueAccent,
              ),
              loaded: (videos) => PageView.builder(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                itemCount: videos.length,
                itemBuilder: (_, index) {
                  return VideoFeed(video: videos[index]);
                },
              ),
            ),
          ),
          const Positioned(
            top: 30,
            height: 50,
            left: 0,
            right: 0,
            child: TopBar(),
          ),
        ],
      );
}

class VideoFeed extends StatefulWidget {
  const VideoFeed({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  State<VideoFeed> createState() => _VideoFeedState();
}

class _VideoFeedState extends State<VideoFeed> {
  late final VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.video.videoURL)
      ..initialize().then((_) {
        _controller.play();
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => Stack(
        children: [
          VideoPlayer(_controller),
          Column(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 10, left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: BottomVideoCaption(video: widget.video),
                      ),
                      Expanded(
                        child: RightSideActionBar(video: widget.video),
                      ),
                    ],
                  ),
                ),
              ),
              // const LinearProgressIndicator(),
            ],
          ),
        ],
      );
}
