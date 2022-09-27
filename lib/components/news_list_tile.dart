import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../screens/DetailsScreen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(widget.data),
              ));
        },
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10.0),
            padding: EdgeInsets.all(12.0),
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Hero(
                    tag: "${widget.data.title}",
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(widget.data.urlToImage!),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Flexible(
                    flex: 5,
                    child: Column(
                      children: [
                        Text(
                          widget.data.title!,
                          maxLines: 4,
                          // softWrap: false,
                          // overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(widget.data.content!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
