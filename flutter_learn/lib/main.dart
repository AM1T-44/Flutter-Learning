import 'package:flutter/material.dart';
import 'package:flutter_learn/utility_helper/utility.dart';

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
      debugShowCheckedModeBanner: false,
      // making theme for text...
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              bodyMedium: TextStyle(
                color: Colors.purple.shade400,
                //fontFamily: "FontMain",
                fontSize: 37,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
              headlineLarge: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.amber.shade400),
              titleLarge: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w200,
                  color: const Color.fromARGB(255, 255, 40, 237)))),
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
      body: Column(children: [
        Text(
          "Hello world",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text("Hello world", style: Theme.of(context).textTheme.titleLarge),
        Text("Hey, Good people", style: Theme.of(context).textTheme.bodyMedium),
        Text("Hey, nice people",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.greenAccent)),
        Text(
          "Sleeping.... Don't distrub!",
          style: myTextStyle02(),
        )
      ]),
    );
  }
}
