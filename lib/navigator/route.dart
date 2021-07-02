// Navigator 는 route를 관리하며 관리는 stack 방식으로 진행 한다.

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
        appBar: AppBar(
          title: Text('First Bar'),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(
              child: Text('Go to the Second page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (_) => SecondPage()
                    ),
                );
                // buildcontext 이해 를 위한 코딩
                // Navigator.push(context, MaterialPageRoute(
                //   builder:(BuildContext context){
                //     return SecondPage();
                //   }
                // ));
              },
            )
        )
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SecondPage Bar'),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(
              child: Text('Go to the First page'),
              onPressed: () {
                Navigator.pop(ctx);
              },
            )
        )
    );
  }
}