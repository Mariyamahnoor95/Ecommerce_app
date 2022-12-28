import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hey Mahnoor'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.search,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
              child: Image.network(
                'https://images.pexels.com/photos/14771128/pexels-photo-14771128.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.3),
                colorBlendMode: BlendMode.color,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'PIANO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 8),
                    borderRadius: BorderRadius.circular(4.0)),
                child: Row(
                  children: [
                    buildTile(1, Colors.orange, 'SA'),
                    buildTile(2, Colors.red, 'RE'),
                    buildTile(3, Colors.green, 'GA'),
                    buildTile(4, Colors.blue, 'MA'),
                    buildTile(5, Colors.purple, 'PA'),
                    buildTile(6, Colors.yellow, 'DHA'),
                    buildTile(7, Colors.lightGreen, 'NI'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTile(int num, Color color, String note) {
    return Expanded(
      child: Column(
        children: [
          Container(
            color: color,
            height: 300,
            child: TextButton(
                style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  playTone(num);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(note),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

void playTone(int num) {
  final audioplayer = AudioPlayer();
  audioplayer.play(AssetSource('assets_note$num.wav'));
}
