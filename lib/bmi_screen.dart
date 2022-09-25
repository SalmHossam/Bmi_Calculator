import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double Height=120;
  int weight=50;
  int age= 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.pink,
        ),
      backgroundColor:Color(0xFF1A237E),
      body: Column(children: [
        Expanded(
          child:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;

                          });

                        },
                        child: Container(
                          child:
                          Column(children: [
                            Icon(
                              Icons.male_sharp,
                              size: 150,
                              color: Colors.white,
                            ),
                            Text('Male',style:
                            TextStyle(color: Colors.white,
                            fontSize: 30,
                            ),)
                          ],),
                          decoration:
                          BoxDecoration(borderRadius:BorderRadius.circular(20),
                              color : isMale ? Colors.blue :Colors.black12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;

                          });

                        },
                        child: Container(
                          child:
                          Column(children: [
                            Icon(
                              Icons.female_sharp,
                              size: 150,
                              color: Colors.white,
                            ),
                            Text('Female',style:
                            TextStyle(color: Colors.white,
                              fontSize: 30,
                            ),)
                          ],),
                          decoration:
                          BoxDecoration(borderRadius:BorderRadius.circular(20),
                              color:  isMale? Colors.black12:Colors.pinkAccent),
                        ),
                      ),
                    ),

                ],),
      ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Text('HEIGHT',
                 style:TextStyle(color:Colors.white),) ,
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                  Text(
                    '${Height.round()}',
                    style: TextStyle(
                      fontSize: 40,
                       fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                  ,Text(
                    'CM',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                ],),
                    Slider(value: Height,
                        max: 220,
                        min: 80,
                        activeColor: Colors.pink,
                        onChanged: (value)
                        {
                          setState(() {
                            Height=value;
                          });
                        }),
                ],),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
            ),
          ),

        ),
        Expanded(
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold), ) ,
                        Text(
                          '$age',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          FloatingActionButton(

                            onPressed:(){
                              setState(() {
                                setState(() {
                                  age--;
                                });
                              });
                            },
                            mini: true,
                            child:  Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.black12,

                          ),
                          FloatingActionButton(
                            onPressed:(){
                              setState(() {
                                age++;
                              });
                            },
                            mini: true,
                            child:  Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.black12,

                          )
                        ]),
                      ],
                    ),
                    decoration:
                    BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.black12),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold), ) ,
                        Text(
                          '$weight',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          FloatingActionButton(

                            onPressed:(){
                              setState(() {
                                weight--;
                              });

                            },
                            mini: true,
                            child:  Icon(
                              Icons.remove,


                            ),
                            backgroundColor: Colors.black12,
                          ),
                          FloatingActionButton(
                            onPressed:(){
                              setState(() {
                                weight++;
                              });
                            },
                            mini: true,
                            child:  Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.black12,

                          )
                        ]),


                      ],
                    ),
                    decoration:
                    BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.black12),
                  ),
                )
              ],
            ),
          )
        ),

        Container(
          width: double.infinity,
          color: Colors.white70,
          child: MaterialButton(
            color: Colors.white70,
              onPressed: (){},
            height: 70,
          child: Text(
              'Calculate !',
          )
            ,),
        )
      ]),
    );
  }
}

