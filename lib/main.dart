import 'package:flutter/material.dart';
import 'package:music/src/api/search.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:music/src/components/loading.dart';

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const isTrue = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            // appBar: AppBar(
            //   title: const Text('data', style: TextStyle(color: Colors.amber)),
            //   backgroundColor: Colors.transparent,
            //   elevation: 0.0,
            // ),
            backgroundColor: Colors.transparent,
            body: Center(
                child: Container(
                    constraints: const BoxConstraints.expand(),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            // image: NetworkImage("https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                            image:
                                AssetImage("lib/assets/images/Background.png"),
                            fit: BoxFit.cover)),
                    child: const Center(
                      child: Text(
                        'Set Full Screen Background Image in Flutter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )))

            // SafeArea(
            //     child: Stack(
            //   children: [
            //     Positioned.fill(
            //       child: Center(
            //         child: Loading(),
            //       ),
            //     ),
            //   ],
            // ))
            //      Center(
            //   child: ElevatedButton(
            //       onPressed: () async {
            //         var yt = YoutubeExplode();
            //         SearchApi(yt, '风中有朵雨做的云');
            //       },
            //       child: const Icon(Icons.search)),
            // ),
            ));
  }
}
