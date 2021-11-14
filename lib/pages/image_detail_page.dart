import 'package:demoapp/models/Car.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:demoapp/widgets/specific_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  final String imgUrl;

  ImageDetailPage({
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Image.network(
            imgUrl,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
