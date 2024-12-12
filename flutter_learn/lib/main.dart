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
          color: Colors.red.shade400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber.shade400,
                margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Colors.cyan,
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                //margin: EdgeInsets.only(top: 10, bottom: 10),
              )
            ],
          ),
        ));
  }
}
