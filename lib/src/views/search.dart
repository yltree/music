import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: const Center(
        child: Text(
          'This is the next page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
