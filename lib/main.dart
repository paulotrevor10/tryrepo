import 'package:flutter/material.dart';
import 'package:lunan/Patient/SignIn/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
    home: LoginPage(),
  
  );
}
