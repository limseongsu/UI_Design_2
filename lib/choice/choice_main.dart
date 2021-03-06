import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_samples/choice/choice_middle_card.dart';
import 'package:ui_design_samples/main/check_main.dart';
import 'package:ui_design_samples/main/pages/pagecontrol/pagecontrol.dart';


class ChoiceMain extends StatefulWidget {
  const ChoiceMain({Key key}) : super(key: key);

  @override
  _ChoiceMainState createState() => _ChoiceMainState();
}

class _ChoiceMainState extends State<ChoiceMain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 앱바 우측 메뉴
        actions: [
          Padding(padding: EdgeInsets.only(right: 15)
          ,
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.settings),
            ),)
        ],
        //앱바 하단 보더 없애기
        elevation: 0.0,
        bottomOpacity: 0.0,
        //앱바 컬러
        backgroundColor: Color(0XFF242315),
        title: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text('OWL',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
      ),
      // 앱 메인화면
      body: ListView(
        children: [
          //초이스 메인 화면 텍스트 위치 잡아주기
          SizedBox(
            height: 30,
          ),
          // 메인화면 텍스트 위치조정 및 좌측에서 패딩주고 글자 맞춰주기
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text(
              'Choose topics that',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 210.0),
            child: Text(
              'interest you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChoiceCard(),
              ChoiceCard(),
              ChoiceCard(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:320.0,top: 100),
            child: FloatingActionButton(onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckMain()));
              });
            },
              child: const Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.black,),
              backgroundColor: Color(0Xff94A6FF), // 플로팅액션버튼 색상
            ),
          ),
        ],
      ),
    );
  }

}
