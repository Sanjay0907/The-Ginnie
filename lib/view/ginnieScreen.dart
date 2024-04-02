import 'dart:math';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TheGinnieScreen extends StatefulWidget {
  const TheGinnieScreen({super.key});

  @override
  State<TheGinnieScreen> createState() => _TheGinnieScreenState();
}

class _TheGinnieScreenState extends State<TheGinnieScreen> {
  int answer = 1;
  getAnswer() {
    Random random = Random();
    setState(() {
      answer = random.nextInt(3) + 1;
    });
    developer.log(answer.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          getAnswer();
        },
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Image(
            image: AssetImage('assets/images/$answer.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
