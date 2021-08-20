import 'package:flutter/material.dart';
import 'package:music/src/components/music_list.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List items = [];

  final searchControler = TextEditingController();

  void _search(value) {
    setState(() {
      items.addAll(
          List<String>.generate(10, (i) => searchControler.text + " $i"));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('search init state');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    searchControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "lib/assets/images/Background.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(
                color: Colors.white, //change your color here
              ),
              title: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                    controller: searchControler,
                    textInputAction: TextInputAction.search,
                    onSubmitted: _search,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    decoration: InputDecoration(
                        hintText: 'Search Music',
                        hintStyle: const TextStyle(color: Colors.white60),
                        contentPadding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        suffixIcon: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              _search(searchControler.text);
                            },
                            icon: const Icon(Icons.search,
                                color: Colors.white)))),
              )),
          body: MusicList(showType: 'search', items: items),
        )
      ],
    );
  }
}
