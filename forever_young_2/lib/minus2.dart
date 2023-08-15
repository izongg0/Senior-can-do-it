import 'package:flutter/material.dart';

void main() {
  runApp(const MinusTwo());
}

class MinusTwo extends StatefulWidget {
  const MinusTwo({super.key});

  @override
  State<MinusTwo> createState() => _MinusTwoState();
}

class _MinusTwoState extends State<MinusTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xffE4E8EF),
        // appBar: AppBar(
        //   title: Text('주제 선택',textAlign: TextAlign.center,style: TextStyle(
        //     color: Colors.black
        //   ),),
        //   centerTitle: true,

        //   backgroundColor: Colors.white,
        // ),
        body: SingleChildScrollView(
          child: Center(child:
          Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Image(
                image: AssetImage('assets/themename/themetitle.png'),
                // 이미지 경로 설정. 필요에 따라 AssetImage 또는 NetworkImage를 사용할 수 있습니다.
                width: 330, // 이미지의 너비 설정
                // height: 200, // 이미지의 높이 설정
                // fit: BoxFit.cover, // 이미지를 어떻게 조정할지 설정 (예: cover, contain 등)
                ),
                // Image(
                // image: AssetImage('assets/themename/practicek.png'),
                // // 이미지 경로 설정. 필요에 따라 AssetImage 또는 NetworkImage를 사용할 수 있습니다.
                // width: 200, // 이미지의 너비 설정
                // height: 400, // 이미지의 높이 설정
                // // fit: BoxFit.cover, // 이미지를 어떻게 조정할지 설정 (예: cover, contain 등)
                // ),


              SizedBox(
                height: 50,
              ),

              Container(
                width: 400,
                height: 110,
                decoration: BoxDecoration(
                image: DecorationImage(
                  // fit: BoxFit.contain,
                image: AssetImage('assets/themename/banktheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                  Navigator.pushNamed(context,'/m');

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
                image: AssetImage('assets/themename/officetheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/m');

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
                image: AssetImage('assets/themename/kiosktheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/m');

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
                image: AssetImage('assets/themename/hospitaltheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/m');

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
                image: AssetImage('assets/themename/bustheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/m');

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
                image: AssetImage('assets/themename/taxitheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/m');

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
                image: AssetImage('assets/themename/maptheme.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/m');

                }, child: Text('')
                )
                ),
              SizedBox(
                height: 20,
              )


            ],
          )
          ,),
        ),

      ),



    );
  }
}