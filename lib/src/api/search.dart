import 'package:youtube_explode_dart/youtube_explode_dart.dart';
// import 'package:music/src/models/query_video.dart';
import 'dart:async';

class SearchApi {
  final YoutubeExplode yt;
  final String query;

  // final List<QueryVideo> _videos = <QueryVideo>[];

  SearchApi(this.yt, this.query) {
    var timer = Timer(const Duration(seconds: 1), () => {print('done')});

    // timer.cancel();
    // yt.search.getVideos(query).then((value) {
    //   print(value);

    //   _videos.addAll(value.where((e) => !e.isLive).map((e) => QueryVideo(
    //       e.title,
    //       e.id.value,
    //       e.author,
    //       e.duration!,
    //       e.thumbnails.highResUrl)));
    //   print(_videos.first.toString());
    // }).catchError((e, s) {
    //   print(e);
    //   print(s);
    // });
  }
}
