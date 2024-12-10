import 'package:flutter/material.dart';
import 'package:fluttertask1/model/colormodel.dart';
import 'package:fluttertask1/model/textmodel.dart';
import 'package:fluttertask1/widget/customcontainer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
