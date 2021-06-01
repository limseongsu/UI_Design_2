import 'package:flutter/material.dart';
import 'package:ui_design_samples/main/check_main.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Architecture',
      'Arts&Crafts',
      'Business',
      'Culinary',
      'Design',
      'Fashion',
      'Film',
      'Gaming',
      'illustration',
      'Lifestyle',
      'Music',
      'Painting',
      'Photography',
      'Technology'
    ];

    return Scaffold(
      backgroundColor: Color(0XFF1C1C24),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Icon(Icons.account_circle_rounded),
            ),
          )
        ],
        //앱바 하단 보더 없애기
        elevation: 0.0,
        bottomOpacity: 0.0,
        //앱바 컬러
        backgroundColor: Color(0XFF1C1C24),
        title: Icon(Icons.search),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(3.0),
        itemCount: items.length,
        itemBuilder: (BuildContext, int index) {
          return Container(
            width: double.infinity,
            height: 50,
            color: Color(0XFF1C1C24),
            alignment: Alignment.centerLeft, // text위치를 센터 left를 한번에맞춤
            child: Text(
              '${items[index]}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          );
        },
      ),
    );
  }
}
