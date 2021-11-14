import 'dart:collection';

import 'package:flutter/foundation.dart';

class Car with ChangeNotifier {
  final String id;
  final String name;
  final num miles;
  final int year;
  final String carStyle;
  final num price;
  final List<String> imgUrls;
  final String color;

  Car({
    @required this.id,
    @required this.name,
    @required this.year,
    @required this.miles,
    @required this.carStyle,
    @required this.price,
    @required this.imgUrls,
    @required this.color,
  });
}

class CarDataProvider with ChangeNotifier {
  List<Car> _items = [
    Car(
      id: '10',
      year: 2016,
      name: 'Dodge Challenger SXT',
      miles: 58944,
      carStyle: 'Coupe',
      price: 22995.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018DOC190006_640_01.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/e3ae87167fc54aeea2ef4c729f5589e6.jpg',
      ],
      color: 'Black',
    ),
    Car(
      id: '1',
      year: 2018,
      name: 'Honda Accord LX',
      miles: 1422,
      carStyle: 'Sedan',
      price: 25095.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018HOC010005_640_01.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '2',
      year: 2021,
      name: 'Toyota Camry SE',
      miles: 16350,
      carStyle: 'Sedan',
      price: 30888.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018TOC020001_640_01.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '3',
      year: 2018,
      name: 'Ford F150 XLT',
      miles: 37417,
      carStyle: 'Truck',
      price: 40996.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018FOT110014_640_01.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '4',
      year: 2021,
      name: 'Chevrolet Silverado 1500 LT',
      miles: 16350,
      carStyle: 'Truck',
      price: 30888.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/color/white/640/cc_2019CHT270002_01_640_G9K.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '5',
      year: 2021,
      name: 'Toyota Corolla LE',
      miles: 56755,
      carStyle: 'Sedan',
      price: 18850.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018TOC040001_640_01.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '6',
      year: 2021,
      name: 'Ford Mustang Convertible',
      miles: 27515,
      carStyle: 'Convertible',
      price: 25500.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018TOC020001_640_01.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/55a23980619c4a7384f564dc5d9b2e73.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/7c4b37af90ea447c96c437f597e956cc.jpg',
      ],
      color: 'Black',
    ),
    Car(
      id: '7',
      year: 2021,
      name: 'Porsche 911 Carrera',
      miles: 81600,
      carStyle: 'Convertible',
      price: 3800.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/color/white/640/cc_2018PRC010010_01_640_A7.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/cfb0b5651c2d428ea75cd6e7fbe0a679.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/82a7b53160fa43fc92fe283e84b49512.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '8',
      year: 2015,
      name: 'Honda Civic LX',
      miles: 44000,
      carStyle: 'Hatckback',
      price: 20998.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018HOC020004_640_01.jpg'
            'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/7b8b9a980924423b865867e5a99ae834.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/e0c61898dbbf4c1496f3fa3fbbd362ee.jpg'
      ],
      color: 'Black',
    ),
    Car(
      id: '9',
      year: 2017,
      name: 'Toyota Prius Three',
      miles: 64000,
      carStyle: 'Hatckback',
      price: 19400.00,
      imgUrls: [
        'https://images.autotrader.com/scaler/220/126/pictures/model_info/chrome_angularfront_trm/vehicle/white/640/2018TOC160002_640_01.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/3d2f4367e7934b94965a6ec97d8109fb.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/4bfd2f2f7a3a40088a160f69908bf310.jpg',
        'https://images.autotrader.com/borderscaler/800/600/2d363e/hn/c/4221514107dc425aaac0afc17ed3f164.jpg',
      ],
      color: 'Black',
    ),
  ];

  UnmodifiableListView<Car> get items => UnmodifiableListView(_items);

  Car getElementById(String id) =>
      _items.singleWhere((value) => value.id == id);

  List<Car> getElementByStyle(String carStyle) =>
      _items.where((value) => value.carStyle == carStyle).toList();
}
