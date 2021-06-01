import 'package:flutter/material.dart';
import 'package:ui_design_samples/main/main_card_list/main_card.dart';
import 'package:ui_design_samples/main/pages/pagecontrol/pagecontrol.dart';


class CheckMain extends StatelessWidget {

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
      body:Center(
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(8.0),
          childAspectRatio: 8.0 / 9.0,
          children: <Widget>[
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard(),
            MainCard(),
          ],
        ),
      ),
      // bottomNavigationBar: PageControl(),
    );
  }
}

