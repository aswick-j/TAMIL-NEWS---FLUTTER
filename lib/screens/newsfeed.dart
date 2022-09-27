import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        children: [
          Container(
            child: Align(
              child: TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey.shade500,
                isScrollable: true,
                indicatorColor: Colors.red.shade100,
                controller: _tabController,
                tabs: [
                  Tab(
                    text: "TamilNadu",
                  ),
                  Tab(
                    text: "India",
                  ),
                  Tab(
                    text: "World",
                  ),
                  Tab(
                    text: "Sports",
                  ),
                  Tab(
                    text: "Film",
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 200,
            child: TabBarView(controller: _tabController, children: [
              Text("hI"),
              Text("hI"),
              Text("hI"),
              Text("hI"),
              Text("hI"),
            ]),
          )
        ],
      ),
    );
  }
}
