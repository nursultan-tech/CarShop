import 'package:demoapp/models/Car.dart';
import 'package:demoapp/utils/utils.dart';
import './image_detail_page.dart';
import 'package:demoapp/widgets/specific_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget {
  final Car car;

  CarDetail({
    this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(car.name),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          CarouselSlider(
            options: CarouselOptions(
              disableCenter: false,
              aspectRatio: 16 / 9,
              autoPlay: true,
              enableInfiniteScroll: car.imgUrls.length > 1,
            ),
            items: car.imgUrls
                .map((item) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageDetailPage(imgUrl: item),
                          ),
                        );
                      },
                      child: Container(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.network(item,
                                      fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      child: Text(
                                        'Image ${car.imgUrls.indexOf(item) + 1}',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ))
                .toList(),
          ),
          SizedBox(height: 40),
          Text(car.name, style: MainHeading),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Price',
                name0: '${car.price}',
                name2: 'Dollars',
              ),
              SpecificsCard(
                name: 'Year',
                name0: '${car.year}',
                name2: '',
              ),
              SpecificsCard(
                name: 'Mileage',
                name0: '${car.miles}',
                name2: 'miles',
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Color',
                name2: car.color,
              ),
              SpecificsCard(
                name: 'Gearbox',
                name2: "gearbox",
              ),
              SpecificsCard(
                name: 'Fuel',
                name2: "fuel",
              )
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
