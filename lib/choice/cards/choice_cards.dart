import 'package:flutter/material.dart';



class Cards extends StatefulWidget {
  const Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
        color: Color(0xff2E2D23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('images/arts_crafts.jpeg',fit: BoxFit.cover,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:23.0,top:18.0),
                  child: Text('interest',style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,),
                  child: Text('※131',style: TextStyle(fontSize: 12,color: Color(0xffADA7A9), fontWeight: FontWeight.w400),),
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        print('클릭!');
      },
    );
  }
}




// listTile로 구현할 시 leading <- 부분의 이미지가 listTile의 padding 때문에 꽉차게 보이지 않아서 Row와 Column으로 구성하였음.
// ListTile(
// tileColor: Colors.black12,
// leading: Image.network(
// 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkZZGlHysqbdfOeOz_Q5IrEZeixF7AoWW-Tg&usqp=CAU',
// fit: BoxFit.cover,
// ),
// title: Text('interest'),
// subtitle: Text('※131'),
// onTap: () {},
// ),
