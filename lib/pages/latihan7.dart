import 'package:flutter/material.dart';

// Latihan 7

class Latihan7 extends StatelessWidget {
  const Latihan7({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map> menuFavorites = [
    {'label': 'GoRide', 'image': '', 'color': Colors.green},
    {'label': 'GoCar', 'image': '', 'color': Colors.green},
    {'label': 'GoFood', 'image': '', 'color': Colors.red},
    {'label': 'GoSend', 'image': '', 'color': Colors.green},
    {'label': 'GoMart', 'image': '', 'color': Colors.red},
    {'label': 'GoPulsa', 'image': '', 'color': Colors.blue},
    {'label': 'GoCheckIn', 'image': '', 'color': Colors.blue}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Your Favorites'),
        actions: <Widget>[IconButton(icon: Icon(Icons.edit), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
                runSpacing: 8,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  for (final menuFavorite in menuFavorites)
                    Material(
                        borderRadius: BorderRadius.circular(16),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: InkWell(
                          splashColor: menuFavorite['color'].withOpacity(0.4),
                          highlightColor:
                              menuFavorite['color'].withOpacity(0.2),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: menuFavorite['color']
                                                .withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Image.asset(
                                          'assets/images/place.png',
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(menuFavorite['label'])
                              ],
                            ),
                          ),
                        )),
                  Material(
                      borderRadius: BorderRadius.circular(16),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.black12,
                                      shape: BoxShape.circle),
                                  child: const Icon(Icons.more_horiz)),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('More')
                            ],
                          ),
                        ),
                      ))
                ]),
          ],
        ),
      ),
    );
  }
}
