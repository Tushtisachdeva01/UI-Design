import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController animationController1;
  AnimationController animationController2;
  AnimationController animationController3;
  AnimationController animationController4;
  @override
  void initState() {
    animationController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    Timer(Duration(milliseconds: 200), () => animationController1.forward());
    animationController2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    Timer(Duration(milliseconds: 300), () => animationController2.forward());
    animationController3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    Timer(Duration(milliseconds: 400), () => animationController3.forward());
    animationController4 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    Timer(Duration(milliseconds: 500), () => animationController4.forward());
    super.initState();
  }

  @override
  void dispose() {
    animationController1.dispose();
    animationController2.dispose();
    animationController3.dispose();
    animationController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          'Meetup',
          style: TextStyle(
            color: Colors.pink[400],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Theme.of(context).iconTheme.color,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1), end: Offset.zero)
                  .animate(animationController1),
              child: FadeTransition(
                opacity: animationController1,
                child: buildContainer(
                  color: Colors.pink[500],
                  height: MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height,
                  radius: Radius.circular(0),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Today 9:00PM',
                          style:
                              TextStyle(color: Colors.pink[900], fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Easy and Gentle Yoga',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Chip(
                          backgroundColor: Colors.pink[300],
                          elevation: 8,
                          label: Text(
                            'You are going',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1), end: Offset.zero)
                  .animate(animationController2),
              child: FadeTransition(
                opacity: animationController2,
                child: buildContainer(
                  color: Colors.pink[300],
                  height: MediaQuery.of(context).size.height * 0.75 -
                      AppBar().preferredSize.height,
                  radius: Radius.circular(80),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Today 8:00PM',
                          style:
                              TextStyle(color: Colors.pink[700], fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Practice Frech, English and Chinese',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                icons(Icons.check, 40, 4, Colors.pink[800],
                                    Colors.pink[800]),
                                icons(Icons.clear, 40, 4, Colors.pink[800],
                                    Colors.pink[800])
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1), end: Offset.zero)
                  .animate(animationController3),
              child: FadeTransition(
                opacity: animationController3,
                child: buildContainer(
                  color: Colors.pink[100],
                  height: MediaQuery.of(context).size.height * 0.5 -
                      AppBar().preferredSize.height,
                  radius: Radius.circular(80),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Today 6:00PM',
                          style: TextStyle(color: Colors.pink, fontSize: 17),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Yoga and Meditation for Beginners',
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            width: double.infinity,
                            child: new Stack(
                              children: <Widget>[
                                buildPositioned(null, Colors.blue[900]),
                                buildPositioned(20, Colors.blue[700]),
                                buildPositioned(40, Colors.blue[500]),
                                buildPositioned(60, Colors.blue[300]),
                                Positioned(
                                  top: 10,
                                  left: 120,
                                  child: Text(
                                    'Marie and 4 others',
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1), end: Offset.zero)
                  .animate(animationController4),
              child: FadeTransition(
                opacity: animationController4,
                child: buildContainer(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.25 -
                      AppBar().preferredSize.height,
                  radius: Radius.circular(80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      icons(Icons.music_note, 50, 2, Colors.pink, Colors.pink),
                      icons(Icons.trending_up, 50, 2, Colors.pink, Colors.pink),
                      icons(Icons.favorite_border, 50, 2, Colors.pink,
                          Colors.pink),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned buildPositioned(double left, Color color) {
    return new Positioned(
      left: left,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }

  Container icons(IconData icon, double height, double width, Color color,
      Color iconcolor) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color, width: width),
      ),
      child: Icon(
        icon,
        color: iconcolor,
      ),
    );
  }

  Container buildContainer(
      {Color color, double height, Radius radius, Widget child}) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: radius),
        color: color,
      ),
      child: child,
    );
  }
}