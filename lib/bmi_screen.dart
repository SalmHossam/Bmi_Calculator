import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
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
                        BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.black12),
                      ),
                    ),
                    SizedBox(
                      width: 20,),
                    Expanded(
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
                        BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.black12),
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
                    '180',
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
                Slider(value: 120,
                    max: 220,
                    min: 80,
                    activeColor: Colors.pink,
                    onChanged: (value){
                      print(value.round());
                    })
              ],),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
            ),
          ),

        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),

        Container(
          width: double.infinity,
          color: Colors.white70,
          child: MaterialButton(
            color: Colors.white70,
              onPressed: (){},
            height: 50,
          child: Text(
              'Calculate !',
          )
            ,),
        )
      ]),
    );
  }
}
