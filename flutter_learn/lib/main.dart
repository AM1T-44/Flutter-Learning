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

        // Decoration in Container

        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 158, 202, 239),
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                // decoration
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 113, 165, 255),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(width: 3, color: Colors.black12),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 10,
                        color: Colors.blue.shade50)
                  ],
                  //shape: BoxShape.circle
                ),
              ),
            )));
  }
}
