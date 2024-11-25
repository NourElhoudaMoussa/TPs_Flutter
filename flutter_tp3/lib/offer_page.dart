import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0),
      items: [
        Container(
          child: Image.asset("assets/banner1.png"),
        ),
        Container(
          child: Image.asset("assets/banner2.png"),
        ),
        Container(
          child: Image.asset("assets/banner3.png"),
        )
      ],
    );
  }
}
