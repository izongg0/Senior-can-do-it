import 'package:flutter/material.dart';

void main() {
  runApp(const FifthApp());
}


class FifthApp extends StatefulWidget {
  const FifthApp({super.key});

  @override
  State<FifthApp> createState() => _FifthAppState();
}


class _FifthAppState extends State<FifthApp> {

String _password = '';

  void _addNumberToPassword(String number) {
    setState(() {
      _password += number;
    });
  }

  void _deleteLastNumber() {
    setState(() {
      if (_password.isNotEmpty) {
        _password = _password.substring(0, _password.length - 1);
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
              debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Column(

                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Image(
                image: AssetImage('assets/password.png'),
                width: 200,
                ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 2, color: Colors.black), // 아래 테두리 설정
                        ),
                      ),
                      child: Text(
                        '$_password',
                        style: TextStyle(fontSize: 40),
                      ),
                  ),

                        SizedBox(
                          height: 40,
                        ),
                        Table(
                border: TableBorder.all(width: 0.0, color: Colors.white),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('1'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('2'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('3'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('4'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('5'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('6'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('7'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('8'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('9'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: _buildNumberButton('0'),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: IconButton(
                    icon: Icon(Icons.backspace),
                onPressed: _deleteLastNumber,
              ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          height: 100.0,
                          child: Center(
                            child: TextButton(onPressed: (){
                                        Navigator.pushNamed(context,'/s');

                            },child: Text('확인',style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),),),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),

                                        ],
                                      )
      ,),
    );

  }
  Widget _buildNumberButton(String number) {
    return Container(
      width: 90,
      height: 50,
      child: TextButton(
        onPressed: () {
          _addNumberToPassword(number);
        },
        child: Text(number,style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}


