import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> items = List<String>.generate(100, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable ListView'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(items[index]),
              subtitle: Text('Subtitle for ${items[index]}'),
              leading: Icon(Icons.list),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Add any action when an item is tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on ${items[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
