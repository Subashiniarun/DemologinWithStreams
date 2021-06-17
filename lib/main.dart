import 'package:demologin/auth%20provider.dart';
import 'package:demologin/roote.dart';
import 'package:flutter/material.dart';
import 'authWithStreams.dart';
import 'roote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      auth: Auth(),
      child: MaterialApp(
        title: 'Flutter login demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RootPage(),
      ),
    );
  }


}
