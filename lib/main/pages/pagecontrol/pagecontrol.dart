import 'package:flutter/material.dart';
import 'package:ui_design_samples/main/check_main.dart';
import 'package:ui_design_samples/main/pages/couresespage.dart';
import 'package:ui_design_samples/main/pages/searchpage.dart';

class PageControl extends StatefulWidget {
  const PageControl({Key key}) : super(key: key);




  @override
  _PageControlState createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  int _currentIndex = 1;
  final List<Widget> _pages = [CouresesPage(),CheckMain(),SearchPage()];
   void _onTap(int index) {
     setState(() {
       _currentIndex = index;
     });
   }
    @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body:
        _pages.elementAt(_currentIndex),
        bottomNavigationBar:
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0XFF37373F),
          selectedItemColor: Color(0XFFF0DC57), //셀렉트 컬
          unselectedItemColor: Colors.white,
          onTap: _onTap,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(

              label: 'MY COURESES',
              icon: Icon(Icons.ac_unit_rounded),
            ),
            BottomNavigationBarItem(
              label: 'FEATURED',
              icon: Icon(Icons.adjust_rounded),
            ),
            BottomNavigationBarItem(
              label: 'SEARCH',
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
// _pages[_currentIndex],