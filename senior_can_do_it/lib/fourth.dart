import 'package:flutter/material.dart';

void main() {
  runApp(const FourthApp());
}

class FourthApp extends StatefulWidget {
  const FourthApp({super.key});

  @override
  State<FourthApp> createState() => _FourthAppState();
}

class _FourthAppState extends State<FourthApp> {
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
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
                      child: Row(
                        children: [
                          Text(
                            '보내는 금액 >',
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(width: 200,),
                          Text(
                            '10,000원',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      )


                      ,
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '은행/증권사',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
                      child: Container(
                        width: 370,
                        child: DropdownButton<String>(
                                  value: 'Option 1',

                                  items: [
                                    DropdownMenuItem(
                        value: 'Option 1',
                        child: Text('부산은행'),
                                    ),
                                    DropdownMenuItem(
                        value: 'Option 2',
                        child: Text('기업은행'),
                                    ),
                                    DropdownMenuItem(
                        value: 'Option 3',
                        child: Text('농협'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                        selectedOption = value;
                                    }
                                    );
                                  },
                                ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                Align(

                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(12.0,0,0,0),
                      child: Text(
                        '계좌번호',
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              child: Row(

                children:<Widget> [
                Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
                    child: TextField(

                                  ),
                  )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                    child: OutlinedButton( onPressed: () {}, child: const Text("붙여넣기",style: TextStyle(
                      color: Colors.black
                    ),),
                    ),
                  )

                ],
              ),


            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,

                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '내 통장 표시',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),Container(
                      width: 250,
                      child: TextField(

                      ),

                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),

                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '받는분 표시',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),Container(
                      width: 250,
                      child: TextField(

                      ),

                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),

                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '메모',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),Container(
                      width: 280,
                      child: TextField(

                      ),

                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),

                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '예약이체',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),Container(
                      width: 250,
                      child: TextField(

                      ),

                    ),
                                        SizedBox(width: 10,),

                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),

                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'CMS코드',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),Container(
                      width: 250,
                      child: TextField(

                      ),

                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton( onPressed: () {}, child: const Text("+ 추가 이체",style: TextStyle(
                      color: Colors.black
                    ),),
                  ),
                  SizedBox(
              height: 50,
            ),
                  Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
              ),
              onPressed: () {
                // 버튼이 클릭되었을 때 수행할 동작
                showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {

                return Container(
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('홍길동님께',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('10원을 이체 하시겠습니까?',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(),
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('출금계좌                  111-2345-6789-01'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('입금계좌                     부산은행 123-123'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('이체금액                             10,000원'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('수수료                                    0원'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('내통장표시                            홍길동'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('받는분 통장 표시                    홍길동'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(),
                      Text('착오송금 방지를 위해 이체정보를 다시한번 확인하세요!',style: TextStyle(fontWeight: FontWeight.bold),),
                      OutlinedButton(onPressed: (){}, child: Text('추가이체',style: TextStyle(color: Colors.black),)),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            width: 150,
                            height: 60,
                            child: OutlinedButton(onPressed: (){}, child: Text('아니오',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        )))),

                              Container(
                                width: 250,
                            height: 60,
                                child: OutlinedButton(style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
              ),onPressed: (){
                                        Navigator.pushNamed(context,'/v');


                                }, child: Text('예',style: TextStyle(
                            color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        )))),

                        ],),
                      )



                    ],
                  )

                );
              },
            );

              },
              child: Text('다음',style: TextStyle(
                color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )),
            ),
          ),
        ),




              ]),

          ),
        ),
      ),
    );
  }
}
