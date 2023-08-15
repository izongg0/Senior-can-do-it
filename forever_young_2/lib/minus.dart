import 'package:flutter/material.dart';

void main() {
  runApp(const MinusApp());
}

class MinusApp extends StatefulWidget {
  const MinusApp({super.key});

  @override
  State<MinusApp> createState() => _MinusAppState();
}

class _MinusAppState extends State<MinusApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xfff78c24),
        // appBar: AppBar(
        //   title: Text('은행 선택',textAlign: TextAlign.center,style: TextStyle(
        //     color: Colors.black
        //   ),),
        //   centerTitle: true,

        //   backgroundColor: Colors.white,
        // ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                ),
                Image(
                  image: AssetImage('assets/bankname/whatbank.png'),
                  width: 330, // 이미지의 너비 설정

                  ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    _buildTableCell('busan'),
                    SizedBox(width: 16),
                    _buildTableCell('got'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    _buildTableCell('ibk'),
                    SizedBox(width: 16),
                    _buildTableCell('jubank'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    _buildTableCell('water'),
                    SizedBox(width: 16),
                    _buildTableCell('kakao'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    _buildTableCell('kb'),
                    SizedBox(width: 16),
                    _buildTableCell('kdb'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    _buildTableCell('keb'),
                    SizedBox(width: 16),
                    _buildTableCell('nh'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    _buildTableCell('sinhan'),
                    SizedBox(width: 16),
                    _buildTableCell('we'),
                  ],
                ),
                Image(
                image: AssetImage('assets/bankname/arrow.png'),
                // 이미지 경로 설정. 필요에 따라 AssetImage 또는 NetworkImage를 사용할 수 있습니다.
                width: 330, // 이미지의 너비 설정
                // height: 200, // 이미지의 높이 설정
                // fit: BoxFit.cover, // 이미지를 어떻게 조정할지 설정 (예: cover, contain 등)
                ),
              ],
            ),
          ),
        ),

      ),



    );
  }
  Widget _buildTableCell(String text) {
    return Expanded(
      child: Container(
        height: 200,
        padding: EdgeInsets.all(8),
        // color: Colors.grey,
        child: Center(
          child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/bankname/$text.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                          Navigator.pushNamed(context,'/o');

                }, child: Text('')
                )
                ),
      ),
    ));
}}