import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
      floatingActionButton: Container(
        width: double.infinity, // Makes it full width
        margin: EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 8.0), // Add some margins
        child: FloatingActionButton.extended(
          onPressed: () {
            print("Extended FAB Pressed");
          },
          label: Text("Add Item"),
          icon: Icon(Icons.add),
          backgroundColor: Colors.blue, // Customize the background color
          shape: StadiumBorder(
            side: BorderSide(color: Colors.white, width: 2), // White border
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // Center at bottom
      backgroundColor:
          Colors.blue, // Background to make the white border visible
    );
  }
}
