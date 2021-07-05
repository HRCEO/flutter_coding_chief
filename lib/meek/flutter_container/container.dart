import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.red,

                  height: 100,
                  child: Text('Hello'),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  color: Colors.grey,

                  height: 100,
                  child: Text('Hello'),
                ),
                Container(
                  color: Colors.white,

                  height: 100,
                  child: Text('Hello'),
                ),
              ],
            ),
      ),
    );
  }
}
