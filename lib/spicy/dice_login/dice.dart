import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDice = 1;
  int rightDice = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Dice game'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset('lib/spicy/dice_login/image/dice${leftDice}.png'),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Image.asset('lib/spicy/dice_login/image/dice${rightDice}.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  child: Icon(
                    Icons.play_arrow,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    minimumSize: Size(100,50),
                  ),
                  onPressed: (){
                    setState(() {
                      leftDice = Random().nextInt(6)+1;
                      rightDice = Random().nextInt(6)+1;
                    });
                    showToast('Left dice : {$leftDice}, Right dice: {$rightDice}');
                  },
                ),
              ],
        )));
    }
}

void showToast(String message){
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
  );
}
