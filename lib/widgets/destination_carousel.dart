import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/screens/destination_screen.dart';

class DestinationCarousel extends StatelessWidget {
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
                'Top Destinations',
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
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  Destination destination = destinations[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DestinationScreen(
                          destination: destination,
                        ),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: 210.0,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom: 18.0,
                            child: Container(
                              height: 120.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '${destination.activities.toString().length} activities',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                    Text(
                                      destination.description.toString(),
                                      style: TextStyle(
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
                                Hero(
                                  tag: destination.imageUrl.toString(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      height: 180.0,
                                      width: 180.0,
                                      image: AssetImage(
                                          destination.imageUrl.toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: 15.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        destination.city.toString(),
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.locationArrow,
                                            size: 10.0,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            destination.country.toString(),
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
