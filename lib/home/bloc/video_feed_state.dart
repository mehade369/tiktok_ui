part of 'video_feed_bloc.dart';

@freezed
class VideoFeedState with _$VideoFeedState {
  const factory VideoFeedState.initial() = _Initial;
  const factory VideoFeedState.loading() = _Loading;
  const factory VideoFeedState.failure() = _Failure;
  const factory VideoFeedState.loaded({required List<Video> videos}) = _Loaded;
}
