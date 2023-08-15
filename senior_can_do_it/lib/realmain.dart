import 'package:flutter/material.dart';

void main() => runApp(const RealMain());

class RealMain extends StatefulWidget {
    const RealMain({super.key});

  @override
  State<RealMain> createState() => _RealMainState();
}

class _RealMainState extends State<RealMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'loading',
        home: Scaffold(
      backgroundColor: Color(0xff1E26B2),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff1E26B2),
      // ),
      body:
        Center(
          child: Column(
            children:<Widget> [
              SizedBox(
                height: 240.0,
              ),
              Container(
                child: Image.asset('assets/busanmain/sidoicon.png',
                width: 300,
                height: 200,
                fit: BoxFit.fill),
              ),
              SizedBox(
                height: 80.0,
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage('assets/busanmain/nextbutton.png'),
                ),
              ),
                child: TextButton(onPressed: (){
                              Navigator.pushNamed(context,'/home');

                }, child: Text('')
                )
                )
              // IconButton(
              //   icon: Image.asset('assets/busanmain/nextbutton.png'),
              //   iconSize: 70,
              //   onPressed: (){
              //     Navigator.pushNamed(context, '/mt');
              //   },
              // ),

            ],
        ),
          ),
    )
    );
  }
}

// class MyPage extends StatefulWidget {
//   const MyPage({super.key});

//   @override
//   State<MyPage> createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1E26B2),
//       appBar: AppBar(
//         backgroundColor: Color(0xff1E26B2),
//       ),
//       body:
//          Center(
//            child: Column(
//             children: [
//               SizedBox(
//                 height: 180.0,
//               ),
//               Container(
//                 child: Image.asset('assets/busanmain/sidoicon.png',
//                 width: 300,
//                 height: 200,
//                 fit: BoxFit.fill),
//               ),
//               SizedBox(
//                 height: 80.0,
//               ),
//               Container(
//                 width: 80,
//                 height: 80,
//                 decoration: BoxDecoration(
//                 image: DecorationImage(
//                 image: AssetImage('assets/busanmain/nextbutton.png'),
//                 ),
//               ),
//                 child: TextButton(onPressed: (){
//                               Navigator.pushNamed(context,'/mt');

//                 }, child: Text('')
//                 )
//                 )
//               // IconButton(
//               //   icon: Image.asset('assets/busanmain/nextbutton.png'),
//               //   iconSize: 70,
//               //   onPressed: (){
//               //     Navigator.pushNamed(context, '/mt');
//               //   },
//               // ),

//             ],
//         ),
//           ),
//     );
//   }
// }
