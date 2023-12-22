import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const FlutterLogo(),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('Settings!'),
                    duration: const Duration(milliseconds: 500),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ));
                },
                icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          toolbarHeight: 70,
          elevation: 20,
          shadowColor: const Color.fromARGB(255, 80, 42, 42),
          foregroundColor: Colors.yellowAccent,
          title: const Text('My Application'),
          centerTitle: false,
        ),
        body: Container(
          height: 500,
          width: 500,
          color: Colors.red,
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Hello 1')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 2')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 3')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 4')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 5')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 6')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 7')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 8')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 9')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 10')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 11')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 12')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 13')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 13')),
              ElevatedButton(onPressed: () {}, child: const Text('Hello 13')),
            ],
          ),
        ));
  }
}
