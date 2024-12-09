import 'package:flutter/foundation.dart';
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 189, 15, 93)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello, everyone!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.grey,
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: const Color.fromARGB(148, 254, 137, 27),
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: const Color.fromARGB(255, 221, 38, 218),
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: const Color.fromARGB(255, 66, 10, 10),
                          margin: const EdgeInsets.only(bottom: 10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.green,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.purple,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
              ],
            ),
          ),
        ));
  }
}
