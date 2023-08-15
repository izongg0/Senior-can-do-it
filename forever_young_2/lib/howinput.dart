import 'package:flutter/material.dart';

void main() {
  runApp(HowInput());
}

class HowInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/howinput.png'), // 배경 이미지 경로
                  fit: BoxFit.fill, // 이미지를 화면에 꽉 채움
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 538,
                  ),

                  Row(

                    children: [
                      SizedBox(
                    width: 290,
                  ),

                    ],
                  ),
                  Container(width: 500,
                      height: 250,
                        child: TextButton(onPressed: (){

                                  Navigator.pushNamed(context,'/f');

                        }, child: Text('')),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
