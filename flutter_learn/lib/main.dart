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
    var arrNames = ["Amit", "Avi", "Pranta", "Sayanto", "Tanzil", 'Mahmud'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        // Decoration in Container

        body: Text(
          "hello, world!",
          style: TextStyle(
              fontFamily: 'FontMain',
              fontSize: 50,
              fontWeight: FontWeight.w600),
        ));
  }
}
