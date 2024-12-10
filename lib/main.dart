import 'package:flutter/material.dart';
import 'package:fluttertask1/model/colormodel.dart';
import 'package:fluttertask1/model/textmodel.dart';
import 'package:fluttertask1/widget/customcontainer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomContainer(
                color: colors[index],
                letter: items[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
