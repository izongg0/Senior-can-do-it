import 'package:flutter/material.dart';

void main() {
  runApp(const ThirdApp());
}

class ThirdApp extends StatefulWidget {
  const ThirdApp({super.key});

  @override
  State<ThirdApp> createState() => _ThirdAppState();
}

class _ThirdAppState extends State<ThirdApp> {
  @override
  String? selectedOption;


  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,

      home: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          backgroundColor:Colors.white ,
          title: Text("이체",style: TextStyle(
            color: Colors.black),),
          centerTitle: true,

        ),
        body:
          Column(
              children: <Widget> [
                Container(
                  width: double.infinity,
                  color: Colors.grey[200],
                  height: 100,
                  child:
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                        SizedBox(
                          height: 20,
                        ),
                        Text('자유저축예금(평생통장)',style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        Text('111-2345-6789-01',style: TextStyle(
                          fontWeight: FontWeight.bold
                        )),

                        Text('출금가능금액 : 1,000,000 원',style: TextStyle(
                          color: Colors.grey
                        ),),
                        Text('현재잔액 : 1,000,000 원',style: TextStyle(
                          color: Colors.grey))

                      ],),
                    )


                ),
                SizedBox(
                  height:25
                ),
                Container(

              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '보내는 금액',
                          style: TextStyle(
                            fontSize: 20
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                    child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0), // 포커스 없을 때 밑줄 색과 두께 설정
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0), // 포커스 있을 때 밑줄 색과 두께 설정
              ),
            ),
          ),
                  ),
        SizedBox(
          height:430 ),
        Container(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
              ),

              onPressed: () {
                // 버튼이 클릭되었을 때 수행할 동작
            Navigator.pushNamed(context, '/fo');
                        },
                        child: Text('다음',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),


              ]),

          ),

      ]),
    )
    );
  }
}


