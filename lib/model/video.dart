import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiktok_ui/model/model.dart';

part 'video.freezed.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String id,
    required String title,
    required String caption,
    required String likes,
    required String comments,
    required String shares,
    required String thumbnail,
    required String videoURL,
    required User user,
  }) = _Video;

  static const videos = <Video>[
    Video(
      id: '84247',
      title: 'Love me like you do',
      caption: 'Please like and share',
      likes: '12154',
      comments: '5245',
      shares: '4855',
      thumbnail: 'https://randomuser.me/api/portraits/men/1.jpg',
      videoURL:
          'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f',
      user: User(
        id: '74',
        name: 'Eminem',
        avatar: 'https://randomuser.me/api/portraits/men/99.jpg',
      ),
    ),
    Video(
      id: '84247',
      title: 'Love me like you do',
      caption: 'Please like and share',
      likes: '12154',
      comments: '5245',
      shares: '4855',
      thumbnail: 'https://randomuser.me/api/portraits/men/2.jpg',
      videoURL:
          'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f',
      user: User(
        id: '442',
        name: 'Eleia',
        avatar: 'https://randomuser.me/api/portraits/men/14.jpg',
      ),
    ),
    Video(
      id: '84247',
      title: 'Love me like you do',
      caption: 'Please like and share',
      likes: '12154',
      comments: '5245',
      shares: '4855',
      thumbnail: 'https://randomuser.me/api/portraits/men/3.jpg',
      videoURL:
          'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f',
      user: User(
        id: '342',
        name: 'Shafin',
        avatar: 'https://randomuser.me/api/portraits/men/71.jpg',
      ),
    ),
    Video(
      id: '1247',
      title: 'Love me like you do',
      caption: 'Please like and share',
      likes: '12154',
      comments: '5245',
      shares: '4855',
      thumbnail: 'https://randomuser.me/api/portraits/men/5.jpg',
      videoURL:
          'https://firebasestorage.googleapis.com/v0/b/videostreaming-test.appspot.com/o/vid%2FSnaptik_6856769842385620229_alex.mp4?alt=media&token=b70d853b-760a-45ee-b5d3-44cef7e4db7f',
      user: User(
        id: '142',
        name: 'Rakin',
        avatar: 'https://randomuser.me/api/portraits/men/28.jpg',
      ),
    ),
  ];
}
