import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xffE4E8EF),

        body: SingleChildScrollView(
          child: Center(child:
          Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Image(
                image: AssetImage('assets/themeselect/bmkselected.png'),
                width: 330, // 이미지의 너비 설정

                ),


              SizedBox(
                height: 50,
              ),

              Container(
                width: 400,
                height: 110,
                decoration: BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.contain,
                image: AssetImage('assets/themeselect/ichae3.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context,'/iche');

                }, child: Text('')
                )
                ),
                SizedBox(
                height: 20,
              ),

              Container(
                width: 400,
                height: 110,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/themeselect/autoichae.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/iche');

                }, child: Text('')
                )
                ),
                SizedBox(
                height: 20,
              ),

              Container(
                width: 400,
                height: 110,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/themeselect/deal.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/iche');

                }, child: Text('')
                )
                ),
                SizedBox(
                height: 20,
              ),


              Image(
                image: AssetImage('assets/themeselect/sidoicon2.png'),
                width: 330, // 이미지의 너비 설정

                ),


            ],
          )
          ,),
        ),

      ),



    );
  }
}