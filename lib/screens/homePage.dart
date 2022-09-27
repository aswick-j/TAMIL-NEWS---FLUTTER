import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/top_headlines.dart';
import '../../components/news_list_tile.dart';
import '../../models/news_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Text(
                "Good Morning !",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade400,
                  // backgroundColor: Color.fromRGBO(248, 243, 255, 1),
                ),
              ),
            ),
            Positioned(
                left: 300,
                top: 10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.location_on, color: Colors.red.shade400),
                    Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.red.shade400,
                        // backgroundColor: Color.fromRGBO(248, 243, 255, 1),
                      ),
                    ),
                  ],
                )),
            Positioned(
              left: 10,
              top: 40,
              child: Text(
                "Live",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // backgroundColor: Color.fromRGBO(248, 243, 255, 1),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 140,
              child: Text(
                "Top Headlines",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // backgroundColor: Color.fromRGBO(248, 243, 255, 1),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 180, bottom: 0),
              child: CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      topHeadLines(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 6,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                  )),
            ),
            Positioned(
              left: 10,
              top: 340,
              child: Text(
                "Breaking News",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  // backgroundColor: Color.fromRGBO(248, 243, 255, 1),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 360, bottom: 0),
              child: Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
