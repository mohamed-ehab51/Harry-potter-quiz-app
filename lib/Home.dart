import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_3/Questions%20List.dart';
class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, title:Text('PotterHead Quiz'),
      ),
      backgroundColor: Colors.blueGrey[900],
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(margin: EdgeInsets.only(top:20.0,bottom: 160.0),
            height: 350.0,width: 400.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(image: AssetImage('Harry.png'),fit: BoxFit.fill)
          ),
          ),
            Container( margin: EdgeInsets.only(left: 6.0,bottom: 10.0),
              child: MaterialButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyQ.ListQ.first)).then((value) => setState((){}));
              },child: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(child: Text('Start',style: TextStyle(color: Colors.white,
                  fontWeight:FontWeight.bold ),),),
            ),
            ),
            ),

    Container( margin: EdgeInsets.only(left: 6.0,bottom: 10.0),
    child: MaterialButton(onPressed: (){exit(0);} ,
      child: Container(
            width: 100,
            height: 60,
            decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(50),
      ),
      child: Center(child: Text('Exit',style: TextStyle(color: Colors.white,
          fontWeight:FontWeight.bold ),
      ),
      ),
    ),
    )
    )
          ],
        ),
    );
  }
}
