import 'package:flutter/material.dart';
import 'package:fluttertask1/model/lettermodel.dart';
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
          itemCount: letters.length,
          itemBuilder: (BuildContext context, int index) {
            final lettermodel = letters[index];
            return CustomContainer(
              l: lettermodel,
            );
          },
        ),
      ),
    );
  }
}
