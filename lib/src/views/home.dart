// dart files
import 'dart:async';
import 'dart:io' show Platform;

// framework
import 'package:flutter/material.dart';

// packages
import 'package:path_provider/path_provider.dart';
import 'package:flutter_file_manager/flutter_file_manager.dart';
import 'package:simple_permissions/simple_permissions.dart';

import 'package:music/src/components/music_list.dart';
import 'package:music/src/views/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var items = [];

  void _serchPage() {
    Navigator.push(context,
        MaterialPageRoute<void>(builder: (BuildContext context) {
      return SearchPage();
    }));
  }

  void _menuPage() {
    Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Menu'),
          ),
          body: const Center(
            child: Text(
              'This is the Menu page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    ));
  }

  String _getFileName(file) {
    var slashes = Platform.isWindows ? '\\' : '/';

    return file.path.split(slashes).last;
  }

  _searchFile() async {
    var root = await getDownloadsDirectory();
    // var files = await FileManager(root: root).walk().toList();
    items = await FileManager(root: root).filesTree(
        excludedPaths: ["/storage/emulated/0/Android"],
        extensions: ["m4a", "flac", "wav", "wma", "aac", "mp3", "mp4"]);

    // return files;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchFile();
  }

  @override
  Widget build(BuildContext context) {
    SimplePermissions.requestPermission(Permission.ReadExternalStorage);
    return Stack(
      children: <Widget>[
        Image.asset(
          "lib/assets/images/Background.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text(
                'Local Music',
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                icon: const Icon(
                  Icons.menu_outlined,
                  color: Colors.white,
                ),
                onPressed: _menuPage,
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  onPressed: _serchPage,
                )
              ],
            ),
            body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.white, width: 0.2))),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  _getFileName(items[index]),
                                  style: TextStyle(color: Colors.white),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                      IconButton(
                          onPressed: () {
                            print('object $index');
                          },
                          icon: const Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ))
                    ],
                  ),
                );
              },
            ))
      ],
    );
  }
}
