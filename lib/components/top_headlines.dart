import 'package:flutter/material.dart';
import '../models/news_model.dart';
import '../screens/DetailsScreen.dart';

class topHeadLines extends StatefulWidget {
  topHeadLines(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<topHeadLines> createState() => _topHeadLinesState();
}

class _topHeadLinesState extends State<topHeadLines> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(widget.data),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(widget.data.urlToImage!),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              // Text(
              //   widget.data.author!,
              //   style: TextStyle(
              //     color: Colors.white54,
              //     fontSize: 14,
              //     fontWeight: FontWeight.normal,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
