import 'package:flutter/material.dart';
import 'package:home_work_ui_movie/Constant.dart';

// ignore: must_be_immutable, camel_case_types
class listViewReUsableWiget extends StatelessWidget {
  final List movies;
  final List? widgetOptionOnContainer;

  const listViewReUsableWiget({
    super.key,
    required this.movies,
    this.widgetOptionOnContainer,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return widgetOptionOnContainer![index];
                  },
                ));
              },
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
                    movies[index].logoiUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
