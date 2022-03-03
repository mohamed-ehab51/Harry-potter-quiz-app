import 'package:flutter/material.dart';
import 'package:task_3/Questions.dart';
class score extends StatelessWidget {
  const score({Key key}) : super(key: key);

  get counter => Questions.counter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:0.0),
      child: Scaffold(body: Container(
        decoration: BoxDecoration(image:DecorationImage(image : AssetImage('LAST.jpeg'),fit:BoxFit.fill )),
        child: Padding(
          padding: const EdgeInsets.only(left: 13,top:80.0),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,children:[Text('Congratulations you got ',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),textScaleFactor: 2.7,),
            Text('$counter' +' out of 5',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),textScaleFactor: 2.7,)
      ]),
        ))),
    );
  }
}
