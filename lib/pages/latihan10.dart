import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Latihan10 extends StatelessWidget {
  const Latihan10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('HomePage'),
            bottom: const TabBar(
              tabs: [
                Tab(text: "For You"),
                Tab(text: "Following"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // For You Tab
              ListView(
                children: [
                  // Card 1
                  Card(
                    child: ListTile(
                      title: Text('Data ke 0'),
                      leading: FlutterLogo(size: 72.0),
                      onTap: () {
                        // Action for card 1
                      },
                    ),
                  ),
                  // Card 2
                  Card(
                    child: ListTile(
                      title: Text('Data ke 1'),
                      leading: FlutterLogo(size: 72.0),
                      onTap: () {},
                    ),
                  ),
                  // Card 3
                  Card(
                    child: ListTile(
                      title: Text('Data ke 2'),
                      leading: FlutterLogo(size: 72.0),
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              // Following Tab
              GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/foto kucing.jpg',
                      width: 150,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/foto kucing.jpg',
                      width: 150,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/foto kucing.jpg',
                      width: 150,
                      height: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/foto kucing.jpg',
                      width: 150,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
