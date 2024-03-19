import 'package:flutter/material.dart';

// Latihan 6

class Latihan6 extends StatelessWidget {
  const Latihan6({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // Data yang akan ditampilkan
  final List<Map<String, String>> data = [
    {
      "nama": "Jennie",
      "hobi": "Fotografi",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Kim_Jennie_%28%EA%B9%80%EC%A0%9C%EB%8B%88%29_05.jpg/1200px-Kim_Jennie_%28%EA%B9%80%EC%A0%9C%EB%8B%88%29_05.jpg"
    },
    {
      "nama": "Jisoo",
      "hobi": "Akting",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/commons/f/fd/Kim_Jisoo_on_July_3%2C_2023_07.jpg"
    },
    {
      "nama": "Rosé",
      "hobi": "Menyanyi",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/commons/2/23/20190106_%28NEWSEN%29_%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC%28BLACKPINK%29%2C_%EC%88%98%EC%A4%8D%EC%9D%80_%EB%A7%8E%EC%9D%80_%EC%86%8C%EB%85%80%EC%A7%80%EB%A7%8C_%EB%8F%8B%EB%B3%B4%EC%9D%B4%EB%8A%94_%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4_%EB%AF%B8%EB%AA%A8_%28Golden_Disc_Awards_2019%29_%284%29.jpg"
    },
    {
      "nama": "Lisa",
      "hobi": "Dance",
      "gambar":
          "https://upload.wikimedia.org/wikipedia/commons/f/fa/Blackpink_Lisa_at_Bvulgari_Avrora_Awards_2022.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'BLACKPINK MEMBER',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          // Ambil data dari List<Map>
          String nama = data[index]["nama"] ?? "";
          String hobi = data[index]["hobi"] ?? "";
          String imageUrl = data[index]["gambar"] ?? "";

          return Card(
            child: ListTile(
              title: Text(nama),
              subtitle: Text(hobi),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          );
        },
      ),
    );
  }
}
