import 'package:travel_app/models/foods_model.dart';

class Hotel {
  String? imageUrl;
  String? name;
  String? address;
  int? price;
  List<Food>? foods;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Food> foods = [
  Food(
    imageUrl: 'assets/images/sashimi.jpg',
    foodName: 'Mo: Mo',
    orderTime: ['9:00 am', '7:00 pm'],
    ratings: 4,
    price: 150,
  ),
  Food(
    imageUrl: 'assets/images/eggs.jpg',
    foodName: 'Mo: Mo',
    orderTime: ['10:00 am', '11:00 pm'],
    ratings: 4,
    price: 150,
  ),
  Food(
    imageUrl: 'assets/images/tuna.jpg',
    foodName: 'Mo: Mo',
    orderTime: ['9:00 am', '7:00 pm'],
    ratings: 4,
    price: 150,
  ),
  Food(
    imageUrl: 'assets/images/sushi.jpg',
    foodName: 'Mo: Mo',
    orderTime: ['9:00 am', '7:00 pm'],
    ratings: 4,
    price: 150,
  ),
  Food(
    imageUrl: 'assets/images/sashimi.jpg',
    foodName: 'Mo: Mo',
    orderTime: ['9:00 am', '7:00 pm'],
    ratings: 4,
    price: 150,
  ),
  Food(
    imageUrl: 'assets/images/tuna.jpg',
    foodName: 'Mo: Mo',
    orderTime: ['9:00 am', '7:00 pm'],
    ratings: 4,
    price: 150,
  ),
];
final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/obito.jpg',
    name: 'Hotel 0',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/obito.jpg',
    name: 'Hotel 1',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/baaka.jpg',
    name: 'Hotel 2',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/rin.jpg',
    name: 'Hotel 3',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/obito.jpg',
    name: 'Hotel 4',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/baaka.jpg',
    name: 'Hotel 5',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/rin.jpg',
    name: 'Hotel 6',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/baaka.jpg',
    name: 'Hotel 7',
    address: 'Kalanki',
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/rin.jpg',
    name: 'Hotel 8',
    address: 'Kalanki',
    price: 2000,
  ),
];
