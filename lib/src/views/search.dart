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
        title: const Text('Search page'),
      ),
      body: const Center(
        child: Text(
          'This is the Search page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
