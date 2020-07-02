import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class MovieHome extends StatefulWidget {
  @override
  _MovieHomeState createState() => _MovieHomeState();
}

class _MovieHomeState extends State<MovieHome> {
  int selectedIndex = 0;
  int selectedGenre = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              buildContainer(),
              buildContainer1(),
              SizedBox(
                height: 20,
              ),
              MovieCarasol(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    List<String> category = [
      'In Theater',
      'Box Office',
      'Coming Soon',
      'Top 10'
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category[index],
                      style: TextStyle(
                        fontSize: 25,
                        color: index == selectedIndex
                            ? Colors.grey[900]
                            : Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 6,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == selectedIndex
                            ? Colors.red
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container buildContainer1() {
    List<String> genre = [
      'Action',
      'Comedy',
      'Romantic',
      'Adventures',
      'Horror',
      'Thriller',
      'Historical'
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: genre.length,
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                print("$index");
                setState(() {
                  selectedGenre = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: index == selectedGenre
                      ? Colors.red.withOpacity(0.9)
                      : Colors.transparent,
                  border: Border.all(
                    color: index == selectedGenre
                        ? Colors.transparent
                        : Colors.black.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  genre[index],
                  style: TextStyle(
                    fontSize: 18,
                    color: index == selectedGenre
                        ? Colors.white
                        : Colors.grey[900],
                  ),
                ),
              ),
            );
          }),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: Colors.black),
        ),
      ],
    );
  }
}

class MovieCarasol extends StatefulWidget {
  @override
  _MovieCarasolState createState() => _MovieCarasolState();
}

class _MovieCarasolState extends State<MovieCarasol> {
  PageController _pageController;
  int initialPage = 3;

  List<String> img = [
    'images/dark.jpg',
    'images/endgame.jpg',
    'images/got.jpg',
    'images/lacasa.jpg',
    'images/iron.jpg'
  ];

  List<String> name = [
    'Dark',
    'Endgame',
    'Game of Thrones',
    'Money Heist',
    'Ironamn 3'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 2 / 2.6,
        child: PageView.builder(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                initialPage = value;
              });
            },
            physics: ClampingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (ctx, index) {
              return AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double value = 0;
                  if (_pageController.position.haveDimensions) {
                    value = index - _pageController.page;
                    value = (value * 0.038).clamp(-1, 1);
                  }

                  return AnimatedOpacity(
                    duration: Duration(milliseconds: 200),
                    opacity: index == initialPage ? 1 : 0.6,
                                      child: Transform.rotate(
                      angle: math.pi * value,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        //padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                        //color: Colors.red,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 3),
                                      blurRadius: 8,
                                      spreadRadius: 3,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(img[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                name[index],
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow[800]),
                                Text(
                                  '9.2',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
