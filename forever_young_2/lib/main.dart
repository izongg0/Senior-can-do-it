import 'package:flutter/material.dart';

import 'package:forever_young_2/fifth.dart';
import 'package:forever_young_2/first.dart';
import 'package:forever_young_2/fourthne.dart';
import 'package:forever_young_2/howiche.dart';
import 'package:forever_young_2/howinput.dart';
import 'package:forever_young_2/howmoney.dart';
import 'package:forever_young_2/minus.dart';
import 'package:forever_young_2/realmain.dart';
import 'package:forever_young_2/sidohome.dart';
import 'package:forever_young_2/sucess.dart';
import 'package:forever_young_2/test.dart';
import 'package:forever_young_2/third.dart';
import 'package:forever_young_2/fourth.dart';
import 'package:forever_young_2/minus2.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              debugShowCheckedModeBanner: false,

      initialRoute : '/q',
      routes: {

          '/q' : (context) => RealMain(), // 시작 화면
          '/home' : (context) => SidoHome(), // 시작 화면
          '/mt' : (context) => MinusTwo(), // 은행, 병원, 식당 선택
          '/m' : (context) => MinusApp(), // 어느 은행 선택
        '/o' : (context) => FirstApp(), // 이체하기 테마 선택
        '/iche' : (context) => HowIche(), // 이체 버튼 안내
        '/test' : (context) => TestApp(), // 부산은행 메인 홈
        '/how' : (context) => HowMoney(), // 이체 금액 입력 방법
        '/t' : (context) => ThirdApp(), // 보내는 금액 입력

        '/fo' : (context) => MyApp(), // 은행선택가이드


        '/input' : (context) => HowInput(), // 계좌번호 입력 소개
        '/f' : (context) => FourthApp(), // 계좌번호 입력하는 창



        '/v' : (context) => FifthApp(), // 비밀번호 입력창
        '/s' : (context) => SuccessApp(), // 이체 완료 창

      },
    );
  }
}