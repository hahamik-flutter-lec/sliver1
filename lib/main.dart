import 'package:flutter/material.dart';

// SliverAppbar + SliverList
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver1"),
            pinned: true,
            snap: true,
            floating: true,
          ),
          SliverAppBar(
            title: Text("Sliver2"),
            pinned: false,
            snap: true,
            floating: true,
            expandedHeight: 250,
            flexibleSpace: Opacity(
              opacity: 0.6,
              child: Image.network(
                "https://picsum.photos/id/1/200/200",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) {
                return Container(
                  height: 50,
                  color: Colors.lightBlue[100 * (index % 9)],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
