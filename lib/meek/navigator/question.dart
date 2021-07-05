import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// /문제 코드
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Center(
//         child: ElevatedButton(
//           child: Text('Go to ScreenA'),
//           onPressed: ()=>
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenA())),
//             /*
//              push 함수의 context가 MyApp의 context를 사용하고 있어서 문제다. -> context를 찾지 못해서 이다.
//              모든 위젯은 구조상 은 MaterialApp의 차일드가 되어야 하나,
//              push함수는 myapp위젯의 위치정보만 가지고 MaterialApp이 없는 곳임으로새로운 페이지를 다시 만들수가 없는 것임
//
//              1. push 함수가 머터리얼 앱위젯의 차일드 위젯의 컨텍스트를 사용
//              2. 머트리얼 위젯 밑에 새로운 컨택스트를 할당할수 있는 빌더위젯을 사용
//
//             * */
//
//         ),
//       ),
//     );
//   }
// }
//
// class ScreenA extends StatelessWidget {
//   const ScreenA({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext ctx) {
//     return Scaffold(
//       body:Center(
//         child: Text('HI, there!'),
//       )
//     );
//   }
// }
//

/// /풀이 1 머트리얼 위젯내에 새로운 위젯을 생성하여, 새로운 위젯의 컨텍스트를 할당하는 방법
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyPage()
//     );
//   }
// }
//
//
// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Center(
//       child: ElevatedButton(
//         child: Text('Go to ScreenA'),
//         onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenA())),
//         /*
//              push 함수의 context가 MyApp의 context를 사용하고 있어서 문제다. -> context를 찾지 못해서 이다.
//              모든 위젯은 구조상 은 MaterialApp의 차일드가 되어야 하나,
//              push함수는 myapp위젯의 위치정보만 가지고 MaterialApp이 없는 곳임으로새로운 페이지를 다시 만들수가 없는 것임
//
//              1. push 함수가 머터리얼 앱위젯의 차일드 위젯의 컨텍스트를 사용
//              2. 머트리얼 위젯 밑에 새로운 컨택스트를 할당할수 있는 빌더위젯을 사용
//
//             * */
//       ),
//     );
//   }
// }
//
// class ScreenA extends StatelessWidget {
//   const ScreenA({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext ctx) {
//     return Scaffold(
//         body:Center(
//           child: Text('HI, there!'),
//         )
//     );
//   }
// }

/// /풀이 2 새로운 빌더메소트를 생성하여 빌더 위젯을 푸쉬 메소드에 할당 하는 것
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
           builder: (context) => Center(
            child: ElevatedButton(
             child: Text('Go to ScreenA'),
              onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScreenA())),
        ),
      ),
    ));
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: Center(
      child: Text('HI, there!'),
    ));
  }
}
