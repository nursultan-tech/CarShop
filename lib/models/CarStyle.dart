import 'dart:collection';

import 'package:flutter/foundation.dart';

class CarStyle with ChangeNotifier {
  final String id;
  final String name;
  final String imgUrl;

  CarStyle({
    @required this.id,
    @required this.name,
    @required this.imgUrl,
  });
}

class CarStyleDataProvider with ChangeNotifier {
  List<CarStyle> _items = [
    CarStyle(
      id: '1',
      name: 'Sedan',
      imgUrl:
          'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_SEDAN.png',
    ),
    CarStyle(
        id: '2',
        name: 'Truck',
        imgUrl:
            'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_TRUCKS.png'),
    CarStyle(
        id: '3',
        name: 'SUV/Crossover',
        imgUrl:
            'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_SUVCROSS.png'),
    CarStyle(
        id: '4',
        name: 'Coupe',
        imgUrl:
            'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_COUPE.png'),
    CarStyle(
        id: '5',
        name: 'Hatckback',
        imgUrl:
            'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_HATCH.png'),
    CarStyle(
        id: '6',
        name: 'Van/Minivan',
        imgUrl:
            'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_VANMV.png'),
    CarStyle(
        id: '7',
        name: 'Convertible',
        imgUrl:
            'https://www.autotrader.com/content/dam/autotrader/homepage/styles/DefaultDesk_Style_CONVERT.png'),
  ];

  UnmodifiableListView<CarStyle> get items => UnmodifiableListView(_items);

  CarStyle getElementById(String id) =>
      _items.singleWhere((value) => value.id == id);
}
