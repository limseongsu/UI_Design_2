import 'package:flutter/material.dart';



class Cards extends StatefulWidget {
  const Cards({Key key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool _checked = false;


  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      tileColor: Colors.black12,
      secondary: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkZZGlHysqbdfOeOz_Q5IrEZeixF7AoWW-Tg&usqp=CAU',
        fit: BoxFit.cover,
      ),
      controlAffinity: ListTileControlAffinity.leading,
      value: _checked,
      title: Text('interest'),
      subtitle: Text('※131'),
      checkColor: Colors.black,
      onChanged: (bool value) {
        setState(() {
          _checked = value ;
        });

      },
    );
  }
}
