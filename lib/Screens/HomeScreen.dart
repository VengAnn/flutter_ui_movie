import 'package:flutter/material.dart';
import 'package:home_work_ui_movie/Constant.dart';
import 'package:home_work_ui_movie/Models/dataMovie.dart';
import 'package:home_work_ui_movie/Screens/PopularMovie_Screen.dart';
import 'package:home_work_ui_movie/Widgets/textReUsableWidget.dart';

import '../Widgets/ClickContainerMovie.dart';
import '../Widgets/listViewReUsableWiget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Widget> widgetOptionOnContainer = [
    Container(
      height: 100,
      width: 100,
      color: kprimaryColor,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.yellow,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.deepPurple,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "The Movie".toUpperCase(),
          style: const TextStyle(
            color: kSecondaryColorRed,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://image.lexica.art/md2/56207c7e-a9ab-4444-83d1-c56873cb27b6"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Expanded(
          child: SizedBox(
            child: Column(
              children: [
                const textReUsableWiget(
                  firstText: "Recommend",
                  secondText: "For You",
                  thirdText: "Show All",
                ),
                /////listview for Recommned
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listMovie.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1),
                            color: kprimaryColor,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              listMovie[index].logoiUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ), //
                      );
                    },
                  ),
                ),
                //
                textReUsableWiget(
                  firstText: "Popular",
                  secondText: "Movie",
                  thirdText: "Show All",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      // ignore: prefer_const_constructors
                      return PopularMovie_Screen();
                    }));
                  },
                ),
                // Use the listViewReUsableWiget here
                // listview for Popular
                listViewReUsableWiget(
                  movies: listMovie,
                  widgetOptionOnContainer: [
                    ClickContainerMovie(movies: listMovie, indexx: 0),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 1),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 2),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 3),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 4),
                  ],
                ),

                ///
                //
                const textReUsableWiget(
                  firstText: "Coming",
                  secondText: "Soon",
                  thirdText: "Show All",
                ),
                // // listview for Coming
                listViewReUsableWiget(
                  movies: listMovie,
                  widgetOptionOnContainer: [
                    ClickContainerMovie(movies: listMovie, indexx: 0),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 1),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 2),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 3),
                    //
                    ClickContainerMovie(movies: listMovie, indexx: 4),
                  ],
                ),

                ///
                //
                const textReUsableWiget(
                  firstText: "Top Rated",
                  secondText: "Movies",
                  thirdText: "Show All",
                ),
                // Use the listViewReUsableWiget here
                //listview for Top Rated,
                listViewReUsableWiget(
                  movies: listMovie,
                  widgetOptionOnContainer: [
                    Container(
                      height: 100,
                      width: 100,
                      color: kprimaryColor,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
