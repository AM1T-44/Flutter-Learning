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
    var arrNames = [
      "Amit",
      "Avi",
      "Pranta",
      "Sayanto",
      "Tanzil",
      "Mahmud",
      "Adri",
      "Arji",
      "Arghya"
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text(arrNames[index]),
              subtitle: Text("Student"),
              trailing: Icon(Icons.add),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 100,
              thickness: 7,
              color: Colors.grey,
            );
          },
          itemCount: arrNames.length),
    );
  }
}
