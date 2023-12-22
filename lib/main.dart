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
        // body: Center(
        //   child: Container(
        //     margin: const EdgeInsets.only(left: 30),
        //     alignment: Alignment.center,
        //     constraints: const BoxConstraints(
        //         maxHeight: 200, maxWidth: 200, minHeight: 200, minWidth: 200),
        //     decoration: BoxDecoration(
        //         gradient: const LinearGradient(
        //             colors: [
        //               Colors.greenAccent,
        //               Colors.indigoAccent,
        //               Colors.orangeAccent
        //             ],
        //             begin: Alignment.topLeft,
        //             end: Alignment.bottomRight,
        //             stops: [0.5, 0.4, 0.3]),
        //         borderRadius: BorderRadius.circular(20),
        //         shape: BoxShape.rectangle,
        //         color: Colors.black,
        //         border: Border.all(color: Colors.redAccent, width: 6)),
        //     child: const Text(
        //       'Container',
        //       style: TextStyle(
        //           fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        //       overflow: TextOverflow.ellipsis,
        //     ),
        //   ),
        // ),
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.topCenter,
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  height: 400,
                  width: 400,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Myint Than Tun',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Age - 18',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.boy),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -75,
                left: 120,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/photo_2023-12-05_13-14-40.jpg'),
                        fit: BoxFit.contain),
                    shape: BoxShape.circle,
                    color: Colors.yellowAccent,
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
              // Positioned(
              //   left: 0,
              //   bottom: 0,
              //   child: Container(
              //     color: Colors.blue,
              //     width: 100,
              //     height: 100,
              //   ),
              // )
            ],
          ),
        ));
  }
}
