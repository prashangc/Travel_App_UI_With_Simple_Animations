import 'package:flutter/material.dart';
import 'package:travel_app/models/hotel_model.dart';
import 'package:travel_app/screens/hotel_screen.dart';
import 'package:travel_app/models/destination_model.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive  Hotels',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('See All');
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 300,
            // color: Theme.of(context).scaffoldBackgroundColor,
            // color: Colors.blue,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (BuildContext context, int index) {
                  Hotel hotel = hotels[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HotelScreen(
                          hotel: hotel,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: 240.0,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom: 18.0,
                            child: Container(
                              height: 120.0,
                              width: 240.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      hotel.name.toString(),
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      hotel.address.toString(),
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 2.0,
                                    ),
                                    Text(
                                      '\$${hotel.price.toString()} / night',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0,
                                  ),
                                ]),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 180.0,
                                    width: 220.0,
                                    image:
                                        AssetImage(hotel.imageUrl.toString()),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                  // return Text(destinations[index].country.toString());
                })),
      ],
    );
  }
}
