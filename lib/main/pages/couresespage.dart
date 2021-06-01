import 'package:flutter/material.dart';

class CouresesPage extends StatelessWidget {
  const CouresesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF1C1C24),
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.only(right: 15)
            ,
            child: GestureDetector(
              child: Icon(Icons.account_circle_rounded),
            ),)
        ],
        //앱바 하단 보더 없애기
        elevation: 0.0,
        bottomOpacity: 0.0,
        //앱바 컬러
        backgroundColor: Color(0XFF1C1C24),
        title: Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text('OWL',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Container(),
    );
  }
}
