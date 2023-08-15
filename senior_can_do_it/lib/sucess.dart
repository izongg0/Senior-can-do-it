import 'package:flutter/material.dart';

void main() => runApp(SuccessApp());

class SuccessApp extends StatefulWidget {
  @override
  State<SuccessApp> createState() => _SuccessAppState();
}

class _SuccessAppState extends State<SuccessApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'completed',
      home: Scaffold(
      backgroundColor: Color(0xff1f26b2),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Container(
              child: Image.asset('assets/success/duck.png',
                width: 600,
                height: 400,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Image.asset('assets/success/text.png'),
            ),SizedBox(
              height: 20,
            ),
            Container(
                width: 200,
                height: 110,
                decoration: BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.contain,
                image: AssetImage('assets/themeselect/sidoicon2.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context,'/home');

                }, child: Text('')
                )
                )


          ],
        ),
      ),
    ),
    );
  }
}



