import 'package:course/route/route_generator.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //  return MaterialApp(title: "Get started", home: GetStarted());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
