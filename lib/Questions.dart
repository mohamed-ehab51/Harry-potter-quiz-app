import 'package:flutter/material.dart';
import 'Questions List.dart';
import 'final_page.dart';

class Questions extends StatelessWidget {
  final String Q , A , N;
  static int I=0;
  static int counter=0;
  Questions(this.N,this.Q,this.A);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, title:Text('Question '+N),
        ),
        backgroundColor: Colors.blueGrey[900],
        body:Column(children:[Container(margin: EdgeInsets.only(top: 10.0,left: 10.0),
            child:Row(mainAxisAlignment: MainAxisAlignment.start,
            children:[Text("Tap on true or false",
              style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              textScaleFactor: 2.0,)])),
          Container(margin: EdgeInsets.only(bottom: 50.0,top: 100.0),
            height: 350.0,width: 400.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white),
          child: Column(
            children: [
              Container(margin: EdgeInsets.only(bottom: 90.0),height: 100.0,width: 250.0,
                  child:Center(child:Text(Q+" ?",
                textScaleFactor:2.0 ,style: TextStyle(fontWeight: FontWeight.bold ),))),
              MaterialButton(onPressed: (){
                if(A=="True"){counter++;} {if(I==4){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>score()));} else Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyQ.ListQ[I]));I++;}
              },child: Container(margin: EdgeInsets.only(bottom:15.0),height: 60.0,width: 250.0,
                  child:Center(child:Row(mainAxisAlignment: MainAxisAlignment.center,
                      children:[Icon(Icons.check_circle,color: Colors.greenAccent[700],)
                    ,Container(margin: EdgeInsets.only(left: 15.0),child:Text("True",
                textScaleFactor:2.0 ,style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold )
                          ,)
                        )
                      ]
                  )
                  )
              )
              ),

                   MaterialButton(onPressed: (){
                    if(A=="False") {counter++;}  {if(I==4){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>score()));} else Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyQ.ListQ[I]));I++;}
                       }
                       ,child:Container(height: 60.0,width: 150.0,
                         child:Center(child:Row(mainAxisAlignment: MainAxisAlignment.center,
                           children:[Icon(Icons.cancel,color: Colors.red[900],)
                              ,Container(margin: EdgeInsets.only(left: 10.0),child:Text("False",
                              textScaleFactor:2.0 ,
                               style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold ),
                )
                )
              ]
          )
          )
      )
      ),
            ],
        ),

      ),
          Container(height: 100.0,width: 300.0, color:Colors.transparent,
              child: Center(child:Text('Your score is '+'$counter/5',
                style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 2.0,))
          )
        ]
        ),
    ));
  }
}

