import 'package:diaunogastos/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),      
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      // home: const SingleChildPage(),
    );
  }
}