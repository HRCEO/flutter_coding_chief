import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// /
/// Stateless widget은 State가 변하지 않는 위젯 이다.

void main() => runApp(MyApp());


/// / MyApp 은 StatelessWidget의 값을 상속 받고 있다.
// class MyApp extends StatelessWidget {
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       theme:ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:Scaffold(
//         appBar:AppBar(),
//         body:Center(
//           child:Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text('You have pushed the button this many times:'),
//               Text(
//                 '$count',
//                 style: Theme.of(context).textTheme.headline4,
//               )
//             ],
//           )
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: (){
//             count++;
//             print('$count');
//           },
//         ),
//       )
//     );
//   }
// }

/// / MyApp 을 StatefulWidget 으로 변경 해보자.
/// StatefulWidget은 state라는 것을 가지고 있다.는것을 기억 해야한다.
/// StatefullWideget을 타고 가면, Widget을 상속 받고 있는데 이는 사실 이뮤터불(불변)이다.
/// 그래서 state클래스를 생성하고, 변화는 state(뮤터블)가 표현은 스테이트풀이 하는것이다.
/// 연결하는 2가지 방법
/// 1번 방법
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text('You have pushed the button this many times:'),
                Text(
                  '$count',
                    style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                      FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          count++;
                          print('$count');
                        });
                      },
                    ),
                    SizedBox(width: 20,),
                    FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          count--;
                          print('$count');
                        });
                      },
                    )
                 ],
                ),
                ],
    )
    ),)
    );
    }
}