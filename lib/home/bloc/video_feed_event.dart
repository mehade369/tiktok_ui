part of 'video_feed_bloc.dart';

@freezed
class VideoFeedEvent with _$VideoFeedEvent {
  const factory VideoFeedEvent.started() = _Started;
  const factory VideoFeedEvent.fetched() = _Fetched;
  const factory VideoFeedEvent.refresh() = _Refresh;
  const factory VideoFeedEvent.videoChanged(String videoURL) = _VideoChanged;


}
