import 'package:flutter/material.dart';
import 'package:movie_searcher/views/home.dart';
import 'package:movie_searcher/views/favourites.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Searcher',
      theme: ThemeData.dark(),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Movie Searcher"),
              bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.home),
                      text: "Home Page",
                    ),
                    Tab(
                      icon: Icon(Icons.favorite),
                      text: "Favorite",
                    ),
                  ],
              ),
            ),
            body: TabBarView(
                children: <Widget>[
                  MyHomePage(),
                  Favorites()
                ]),
          )
      ),
    );
  }
}

