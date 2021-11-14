import 'package:demoapp/models/Car.dart';
import 'package:demoapp/widgets/car_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatelessWidget {
  final String carStyle;

  ItemPage({Key key, this.carStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Car> cars =
        context.watch<CarDataProvider>().getElementByStyle(carStyle);

    return Scaffold(
      appBar: AppBar(
        title: Text(carStyle),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 85,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            ...cars
                .map(
                  (car) => CarList(car: car),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
