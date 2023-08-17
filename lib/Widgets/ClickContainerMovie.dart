import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work_ui_movie/Constant.dart';
import 'package:home_work_ui_movie/Models/dataMovie.dart';
import 'package:home_work_ui_movie/Widgets/listViewReUsableWiget.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class ClickContainerMovie extends StatelessWidget {
  ClickContainerMovie({this.indexx, required this.movies, super.key});
  bool showMoreText = false;
  final List movies;
  final int? indexx;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: double.maxFinite,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 380,
                  //color: kprimaryColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 290,
                        child: Image.network(
                          movies[indexx!].photoUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.grey[200],
                        ),
                      )
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      //
                      const Column(
                        children: [
                          Text(
                            "Dead Pool",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Action Adventure Science Fiction",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      //
                      const SizedBox(
                        height: 50,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 55,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.white,
                              ),
                              Text(
                                "9.5 (5158 Reviews)",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                CupertinoIcons.time,
                                color: Colors.white,
                              ),
                              Text(
                                "124 mins",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                              ),
                              Icon(
                                Icons.date_range_outlined,
                                color: kColorWhite,
                              ),
                              Text(
                                "Mar 3 2019 Released",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.save_alt_outlined,
                                  ),
                                  Text("WatchList")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                  ),
                                  Text("favorite")
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.share_outlined,
                                  ),
                                  Text("Share")
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 4,
                              color: Colors.amber,
                              blurRadius: 5,
                            )
                          ],
                          border: Border.all(width: 1, color: kprimaryColor),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            movies[indexx!].logoiUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Overview",
                    style: TextStyle(
                      fontSize: 24,
                      color: kprimaryColor,
                    ),
                  ),
                ),
              ],
            ),

           const  Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:  ReadMoreText(
                "Deadpool is a 2016 American superhero film based on the Marvel Comics character of the same name. It is "
                  "distributed by 20th Century Fox and is a spin-off in the X-Men film series and the eighth installment overall",
                textAlign: TextAlign.justify,
                trimLines: 2,
                colorClickableText: Colors.amber,
                trimMode: TrimMode.Line,
                trimCollapsedText: " Read more",
                trimExpandedText: " Read less",
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: kprimaryColor),
                lessStyle: TextStyle(fontSize:14, fontWeight:FontWeight.bold,color: kprimaryColor),

              ),
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Cast",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            //

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView.builder(
                itemCount: listMovie.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              NetworkImage(listMovie[index].castUrl),
                        ),
                        const Text("Name"),
                      ],
                    ),
                  );
                },
              ),
            ),
            //
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Recommendation",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            //
            const SizedBox(
              height: 15,
            ),
            //
            listViewReUsableWiget(movies: listMovie),
          ],
        ),
      ),
    );
  }
}
