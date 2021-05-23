import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_samples/choice/cards/choice_cards.dart';

class ChoiceCard extends StatefulWidget {

  @override
  _ChoiceCardState createState() => _ChoiceCardState();

}

class _ChoiceCardState extends State<ChoiceCard> {
  final CarouselController _buttonCarouselController = CarouselController();
  final List<int> _cardlist = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    // carousel 슬라이더를 사용하여 슬라이더 구성 및 목록 구성
    return CarouselSlider(
      carouselController: _buttonCarouselController,
      options: CarouselOptions(
        // 카드리스트 간격
        viewportFraction: 0.5,
        height: 80,
        enableInfiniteScroll: false,
        disableCenter: false,
      ),
      items: _cardlist
          .map((e) => Container(
                child: Container(
                  child: Card(
                    child: Cards(),
                  ),
                ),
              ))
          .toList(),
    );
  }
}

