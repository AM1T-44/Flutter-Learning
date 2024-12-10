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
    var arrNames = ['Amit', 'Avi', "Pranta", 'James', 'Tomal', 'Pritom'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          itemExtent: 200,
          scrollDirection: Axis.vertical,
        ));
  }
}

// ListView.separated(
//             itemBuilder: (context, index) {
//               return Text(
//                 arrNames[index],
//                 style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
//               );
//             },
//             separatorBuilder: (context, index) {
//               return Divider(
//                 height: 200,
//                 thickness: 5,
//               );
//             },
//             itemCount: arrNames.length)