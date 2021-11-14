import 'package:demoapp/models/CarStyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/item_page.dart';

class ItemCard extends StatelessWidget {
  //final product;

  const ItemCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carStyle = Provider.of<CarStyle>(context, listen: false);
    //final product = context.read<Product>();

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => ItemPage(carStyle: carStyle.name)),
        );
      },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.black.withOpacity(0.78),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(carStyle.imgUrl),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
                child: Text(
              '${carStyle.name}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
