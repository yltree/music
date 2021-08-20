import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key, required this.showType, required this.items})
      : super(key: key);

  final String showType;
  final List items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.white, width: 0.2))),
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3)),
                child: Image.network(
                  'https://i.ytimg.com/vi/RtJUX1t2WLY/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDBj6vzZPbYIHmOVil0a12FkTxpcg',
                  width: 120,
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          items[index],
                          style: TextStyle(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('by $index',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    // const Divider(
                    //   color: Colors.white,
                    //   height: 10,
                    //   thickness: 0.2,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Row(
                    //       children: const [
                    //         Icon(
                    //           Icons.favorite_border,
                    //           color: Colors.white,
                    //         ),
                    //         Text('100', style: TextStyle(color: Colors.white))
                    //       ],
                    //     ),
                    //     Row(
                    //       children: const [
                    //         Icon(
                    //           Icons.queue_music,
                    //           color: Colors.white,
                    //         ),
                    //         Text('100', style: TextStyle(color: Colors.white))
                    //       ],
                    //     ),
                    //     Row(
                    //       children: const [
                    //         Icon(
                    //           Icons.download,
                    //           color: Colors.white,
                    //         ),
                    //         Text('100', style: TextStyle(color: Colors.white))
                    //       ],
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              )),
              IconButton(
                  onPressed: () {
                    print('object $index');
                  },
                  icon: Icon(
                    showType == 'local' ? Icons.play_circle : Icons.download,
                    color: Colors.white,
                  ))
            ],
          ),
        );
      },
    );
  }
}
