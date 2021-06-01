import 'package:flutter/material.dart';
import 'package:ui_design_samples/models/datalist.dart';

class MainCard extends StatefulWidget {
  const MainCard({Key key}) : super(key: key);

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff28282F),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
              aspectRatio: 18/11,
            child: Image.asset('images/arts_crafts.jpeg',
                fit: BoxFit.cover),
          ),
          Expanded(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 7),
                  child: Text('ARTS & CRAFTS', style: TextStyle(color: Color(0xFF6672A6),fontSize: 8,),),
                ),
                Text('Basic Blocks and \n WoodTurning'),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('‣7'),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
