import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cansenior',
      home: Scaffold(
        body:Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fourth/fourthgal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                  ),

                  Row(

                    children: [
                      SizedBox(
                        width: 200,
                      ),

                    ],
                  ),
              Container(width: 400,
                height: 200,
                child: TextButton(onPressed: (){

                  Navigator.pushNamed(context, '/input');
                },
                    child: Text('')),
              ),
                ],
              ),
            ),
    ]
    ),
    ),
    );
  }
}


