import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design_samples/choice/choice_main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF2C2C2C),
      ),
      home: RunState(),
    );
  }
}

class RunState extends StatefulWidget {
  const RunState({Key key}) : super(key: key);

  @override
  _RunStateState createState() => _RunStateState();
}

class _RunStateState extends State<RunState> {




  @override
  Widget build(BuildContext context) {
    return ChoiceMain();
  }
}



