import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  bool playerControl = false;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0,viewportFraction: 0.6,autoPlay: true,aspectRatio: 10,enlargeCenterPage: true),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return i == 1
                      ? Center(
                          child: SizedBox(
                            height: height * 0.5,
                            width: width * 0.8,
                            child: Card(
                              elevation: 2,
                              child: Column(
                                children: [
                                  Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Dog-1123016_960_720.jpg/640px-Dog-1123016_960_720.jpg"),
                                  SizedBox(
                                    height: height * 0.1,
                                  ),
                                  Card(
                                    color: Colors.black,
                                    child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            playerControl = !playerControl;
                                          });
                                          playerControl
                                              ? player.play(
                                                  AssetSource("abc.mp3"),
                                                )
                                              : player.stop();
                                        },
                                        child: playerControl
                                            ? Icon(
                                                Icons.pause,
                                                color: Colors.white,
                                              )
                                            : Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                              )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : i == 2
                          ? Center(
                              child: SizedBox(
                                height: height * 0.5,
                                width: width * 0.8,
                                child: Card(
                                  elevation: 2,
                                  child: Column(
                                    children: [
                                      Image.network(
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Dog-1123016_960_720.jpg/640px-Dog-1123016_960_720.jpg"),
                                      SizedBox(
                                        height: height * 0.1,
                                      ),
                                      Card(
                                        color: Colors.black,
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                playerControl = !playerControl;
                                              });
                                              playerControl
                                                  ? player.play(
                                                      AssetSource("abc.mp3"),
                                                    )
                                                  : player.stop();
                                            },
                                            child: playerControl
                                                ? Icon(
                                                    Icons.pause,
                                                    color: Colors.white,
                                                  )
                                                : Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                  )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : i == 3
                              ? Center(
                                  child: SizedBox(
                                    height: height * 0.5,
                                    width: width * 0.8,
                                    child: Card(
                                      elevation: 2,
                                      child: Column(
                                        children: [
                                          Image.network(
                                              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Dog-1123016_960_720.jpg/640px-Dog-1123016_960_720.jpg"),
                                          SizedBox(
                                            height: height * 0.1,
                                          ),
                                          Card(
                                            color: Colors.black,
                                            child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    playerControl =
                                                        !playerControl;
                                                  });
                                                  playerControl
                                                      ? player.play(
                                                          AssetSource(
                                                              "abc.mp3"),
                                                        )
                                                      : player.stop();
                                                },
                                                child: playerControl
                                                    ? Icon(
                                                        Icons.pause,
                                                        color: Colors.white,
                                                      )
                                                    : Icon(
                                                        Icons.play_arrow,
                                                        color: Colors.white,
                                                      )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : i == 4
                                  ? Center(
                                      child: SizedBox(
                                        height: height * 0.5,
                                        width: width * 0.8,
                                        child: Card(
                                          elevation: 2,
                                          child: Column(
                                            children: [
                                              Image.network(
                                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Dog-1123016_960_720.jpg/640px-Dog-1123016_960_720.jpg"),
                                              SizedBox(
                                                height: height * 0.1,
                                              ),
                                              Card(
                                                color: Colors.black,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        playerControl =
                                                            !playerControl;
                                                      });
                                                      playerControl
                                                          ? player.play(
                                                              AssetSource(
                                                                  "abc.mp3"),
                                                            )
                                                          : player.stop();
                                                    },
                                                    child: playerControl
                                                        ? Icon(
                                                            Icons.pause,
                                                            color: Colors.white,
                                                          )
                                                        : Icon(
                                                            Icons.play_arrow,
                                                            color: Colors.white,
                                                          )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  : Center(
                                      child: SizedBox(
                                        height: height * 0.5,
                                        width: width * 0.8,
                                        child: Card(
                                          elevation: 2,
                                          child: Column(
                                            children: [
                                              Image.network(
                                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Dog-1123016_960_720.jpg/640px-Dog-1123016_960_720.jpg"),
                                              SizedBox(
                                                height: height * 0.1,
                                              ),
                                              Card(
                                                color: Colors.black,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        playerControl =
                                                            !playerControl;
                                                      });
                                                      playerControl
                                                          ? player.play(
                                                              AssetSource(
                                                                  "abc.mp3"),
                                                            )
                                                          : player.stop();
                                                    },
                                                    child: playerControl
                                                        ? Icon(
                                                            Icons.pause,
                                                            color: Colors.white,
                                                          )
                                                        : Icon(
                                                            Icons.play_arrow,
                                                            color: Colors.white,
                                                          )),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
