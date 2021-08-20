import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:music/src/models/query_video.dart';
import 'dart:async';

class Video {
  var yt;

  // final List<QueryVideo> _videos = <QueryVideo>[];

  Video({this.yt}) {
    yt = YoutubeExplode();
  }

  Future search(query) async {
    var request = await yt.search.getVideos(query);
    var result = [];
    result.addAll(request.where((e) => !e.isLive).map((e) => QueryVideo(
        e.title, e.id.value, e.author, e.duration!, e.thumbnails.highResUrl)));

    return result;
    // .catchError((e, s) {
    //     print(e);
    //     print(s);
    //   });
  }
}
