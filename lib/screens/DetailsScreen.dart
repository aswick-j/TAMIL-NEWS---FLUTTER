import 'package:flutter/material.dart';
import 'package:flutter_news/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.orange.shade900),
        actions: [Icon(Icons.share)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.title!,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                widget.data.date!,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.red.shade300,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Hero(
                tag: "${widget.data.title}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(widget.data.urlToImage!),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Article Credits : ${widget.data.author!}"),
              SizedBox(
                height: 20.0,
              ),
              Text(widget.data.content!)
            ],
          ),
        ),
      ),
    );
  }
}
