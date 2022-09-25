import 'package:flutter/material.dart';
class BMIResult extends StatelessWidget {
  final int result;
   final bool isMale;
  final  int age;
  BMIResult({
    required this.result,
    required this.age,
    required this.isMale,

});
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_new_outlined
      ),
      ),
      title: Text('BMI Result !'),
      backgroundColor: Colors.pink,
    ),

      backgroundColor:Color(0xFF1A237E),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            'Gender : ${isMale ? 'Male': 'Female'}'
            ,style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
              Text(
                'Result:$result',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Age :$age',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
        ]),
      ),
    );
  }
}

