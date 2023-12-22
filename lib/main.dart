import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<Contact> list = List.generate(50, (index) {
    return Contact(
        name: 'Name $index', phone: 'Phone $index', address: 'Address $index');
  });

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
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    content: const Text('Message!'),
                    duration: const Duration(milliseconds: 500),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  ));
                },
                icon: const Icon(Icons.message)),
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
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text(list[position].name),
                  subtitle: Text(list[position].phone),
                  trailing: Text(list[position].address),
                  leading: const Icon(Icons.phone_android),
                ),
              ),
            );
          },
        ));
  }
}

class Contact {
  final String name;
  final String phone;
  final String address;

  Contact({required this.name, required this.phone, required this.address});
}
