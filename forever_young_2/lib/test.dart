import 'package:flutter/material.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
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
                  image: AssetImage('assets/busanmain.png'), // 배경 이미지 경로
                  fit: BoxFit.cover, // 이미지를 화면에 꽉 채움
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
                      TextButton(onPressed: (){

                                Navigator.pushNamed(context,'/how');

                      }, child: Text('')),
                    ],
                  ),
                  Container(
                    width: 500,
                    height: 200,
                    child: TextButton(onPressed: (){

                      Navigator.pushNamed(context, '/t');
                    }, child: Text('')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
