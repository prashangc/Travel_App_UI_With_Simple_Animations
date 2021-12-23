import 'activity_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? country;
  String? description;
  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

final List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/rin.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    ratings: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/obito.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    ratings: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/baaka.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    ratings: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/obito.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    ratings: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/baaka.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    ratings: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/obito.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    ratings: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/baaka.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    ratings: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/obito.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    ratings: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/obito.jpg',
    city: 'Konoha',
    country: 'Nepal',
    description: 'Visit Parts for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/rin.jpg',
    city: 'Konoha',
    country: 'Japan',
    description: 'Visit Parts for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/baaka.jpg',
    city: 'Konoha',
    country: 'Germany',
    description: 'Visit Parts for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/rin.jpg',
    city: 'Konoha',
    country: 'United States',
    description: 'Visit Parts for an amazing and unforgettable adventure',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/obito.jpg',
    city: 'Korean',
    country: 'United States',
    description: 'Visit Parts for an amazing and unforgettable adventure',
    activities: activities,
  ),
];
