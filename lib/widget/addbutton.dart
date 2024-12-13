import 'package:flutter/material.dart';
import 'package:fluttertask1/theme/text_style.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 100),
            child: Text(x.toString(), style: AppTextStyle.text),
          ),
          buildfun(
            onpresss: () {
              setState(() {
                x++;
              });
            },
            icon: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.plus_one_rounded, color: Colors.black),
            ),
          ),
          buildfun(
            onpresss: () {
              setState(() {
                x += 2;
              });
            },
            icon: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.exposure_plus_2_outlined,
                color: Colors.black,
              ),
            ),
          ),
          buildfun(
              onpresss: () {
                setState(() {
                  if (x > 0) {
                    x -= 1;
                  } else {
                    x = 0;
                  }
                });
              },
              icon: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.minimize,
                    color: Colors.black,
                  ))),
          buildfun(
              onpresss: () {
                setState(() {
                  x = 0;
                });
              },
              icon: const Icon(Icons.lock_reset_outlined))
        ],
      ),
    );
  }
}

Widget buildfun({required void Function()? onpresss, required Widget icon}) {
  return IconButton(onPressed: onpresss, icon: icon);
}
