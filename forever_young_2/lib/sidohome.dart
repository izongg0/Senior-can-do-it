import 'package:flutter/material.dart';

void main() => runApp(SidoHome());

class SidoHome extends StatefulWidget {
  @override
  State<SidoHome> createState() => _SidoHomeState();
}

class _SidoHomeState extends State<SidoHome> {
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
                  image: AssetImage('assets/home.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 440,
                  ),

                  Row(

                    children: [
                      SizedBox(
                        width: 200,
                      ),

                    ],
                  ),
              Container(width: 400,
                height: 250,
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, '/mt');
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

