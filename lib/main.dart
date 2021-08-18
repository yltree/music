import 'package:flutter/material.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

// import './my_home_page.dart';
// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

void main() => runApp(const MyApp());

void _searchYoutube() {
  var yt = YoutubeExplode();

  yt.search.getVideos('风中有多雨做的云').then((value) => print(value.first.id));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.white,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('data')),
          body: const Center(
            child: ElevatedButton(
                onPressed: _searchYoutube, child: Icon(Icons.search)),
          ),
        ));
  }
}
