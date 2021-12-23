import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/models/activity_model.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination? destination;

  DestinationScreen({this.destination});
  @override
  _DestinationScreemState createState() => _DestinationScreemState();
}

class _DestinationScreemState extends State<DestinationScreen> {
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
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination!.imageUrl.toString(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      width: double.infinity,
                      image:
                          AssetImage(widget.destination!.imageUrl.toString()),
                      fit: BoxFit.cover,
                    ),
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
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          iconSize: 30.0,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          iconSize: 25.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination!.city.toString(),
                      style: TextStyle(
                        fontSize: 35.0,
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
                          widget.destination!.country.toString(),
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
                child: Icon(
                  FontAwesomeIcons.locationArrow,
                  size: 20.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: widget.destination!.activities!.length,
                // itemCount: activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = widget.destination!.activities![index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 30.0, 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 120.0,
                                    child: Text(
                                      activity.name.toString(),
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '\$${activity.price.toString()}',
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'per packs',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                activity.type.toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              _buildRatingStar(activity.ratings!.toInt()),
                              SizedBox(
                                height: 5.0,
                              ),
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
                                    child: Text(
                                        activity.startTimes![0].toString()),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                        activity.startTimes![1].toString()),
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
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            width: 110,
                            image: AssetImage(
                              activity.imageUrl.toString(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
