import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/models/foods_model.dart';
import 'package:travel_app/models/hotel_model.dart';

class HotelScreen extends StatefulWidget {
  final Hotel? hotel;

  HotelScreen({this.hotel});
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  _buildRatingStar(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    width: double.infinity,
                    image: AssetImage(widget.hotel!.imageUrl.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                      ),
                      color: Colors.white,
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 30.0,
                          ),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.sortAlphaDown,
                            size: 25.0,
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.hotel!.name.toString(),
                      style: TextStyle(
                        fontSize: 35.0,
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
                          widget.hotel!.address.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Column(
                  children: [
                    Text(
                      '\$${widget.hotel!.price.toString()}',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'per night',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: foods.length,
                itemBuilder: (BuildContext context, int index) {
                  Food food = foods[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                        width: double.infinity,
                        height: 170.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 120,
                                    child: Text(
                                      food.foodName!.toString(),
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Text(
                                    '\$${food.price}',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildRatingStar(food.ratings!.toInt()),
                                  Text(
                                    'per plate',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(food.orderTime![0]),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(food.orderTime![1]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            width: 110,
                            image: AssetImage(
                              food.imageUrl.toString(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
