import 'package:flutter/material.dart';
import 'package:project2/5.MyListView.dart';
import 'package:project2/6.MyGridView.dart';
import 'package:project2/7.MyStack.dart';
import 'package:project2/8.MyCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: "Welcome to Flutter",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Welcome to Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyListView()),
                  );
                },
                child: const Text('ListView'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyGridView()),
                  );
                },
                child: const Text('GridView'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyStack()),
                  );
                },
                child: const Text('Stack'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyCard()),
                  );
                },
                child: const Text('Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}