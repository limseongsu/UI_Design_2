// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility that Flutter provides. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart'as http ;
// import 'dart:convert';
// import 'package:ui_design_samples/models/fake_data.dart';
// import 'package:ui_design_samples/choice/choice_main.dart';
//
// void main() {
//   test('http 통신 테스트', () async {
//     var uri = Uri.parse('https://junho1124.github.io/web_test/posts.json');
//     var response = await http.get(uri);
//     expect(response.statusCode, 200);
//
//     FakeData result = FakeData.fromJson(json.decode(response.body));
//     expect(result.result[0].imageId, 2131165292);
//   });
// }

