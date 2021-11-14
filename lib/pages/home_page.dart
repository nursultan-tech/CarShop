import 'package:demoapp/models/Car.dart';
import 'package:demoapp/models/CarStyle.dart';
import '../widgets/car_list.dart';
import '../widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final carStyleData = Provider.of<carStyleDataProvider>(context);
    // *Для версии > 4.1.0
    final carStyleData = context.watch<CarStyleDataProvider>();
    final carData = context.watch<CarDataProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cars for Sale',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 85,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5.0),
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: carStyleData.items.length,
                  itemBuilder: (context, int index) =>
                      ChangeNotifierProvider.value(
                        value: carStyleData.items[index],
                        child: ItemCard(),
                      )
                  //ItemCard(product: carStyleData.items[index]),
                  ),
            ),
            ...carData.items.map(
              (car) {
                return CarList(car: car);
              },
            ).toList(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}
