import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:the_ginnie/view/ginnieScreen.dart';

void main() {
  runApp(const TheGinnieApp());
}

class TheGinnieApp extends StatelessWidget {
  const TheGinnieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TheGinnieScreen(),
      );
    });
  }
}
