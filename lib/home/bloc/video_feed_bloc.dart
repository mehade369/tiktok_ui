import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiktok_ui/model/model.dart';
import 'package:video_player/video_player.dart';

part 'video_feed_event.dart';
part 'video_feed_state.dart';
part 'video_feed_bloc.freezed.dart';

class VideoFeedBloc extends Bloc<VideoFeedEvent, VideoFeedState> {
  VideoFeedBloc() : super(const _Initial()) {
    on<VideoFeedEvent>((event, emit) {
      event.when(
        videoChanged: (String videoURL) {
          videoPlayerController = VideoPlayerController.network(videoURL);
        },
        started: () {},
        fetched: () {
          emit(const _Loaded(videos: Video.videos));
        },
        refresh: () {},
      );
    });
  }

  late final VideoPlayerController videoPlayerController;
}
