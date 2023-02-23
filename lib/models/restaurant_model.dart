import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;

  // final List<MenuItem> menuItem;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  const Restaurant(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.tags,
      required this.deliveryTime,
      required this.deliveryFee,
      required this.distance});

  @override
  List<Object?> get props =>
      [id, imageUrl, name, tags, deliveryTime, deliveryFee, distance];

  static List<Restaurant> restaurant = [
    const Restaurant(
        id: 1,
        imageUrl: 'images/burrito.jpg',
        name: 'Burrito',
        tags: ['burritos', 'italian'],
        deliveryTime: 20,
        deliveryFee: 50.8,
        distance: 0.1),
    const Restaurant(
        id: 2,
        imageUrl: 'images/burgerOclock.jpg',
        name: 'BurgerOclock',
        tags: ['fries', 'burger'],
        deliveryTime: 50,
        deliveryFee: 57.8,
        distance: 0.2),
    const Restaurant(
        id: 3,
        imageUrl: 'images/salmon.jpg',
        name: 'Salmani',
        tags: ['salmon', 'burger'],
        deliveryTime: 60,
        deliveryFee: 60.8,
        distance: 0.3),
    const Restaurant(
        id: 4,
        imageUrl: 'images/543-pizza-1.svg.png',
        name: 'Piggery',
        tags: ['pizza', 'burger'],
        deliveryTime: 70,
        deliveryFee: 70.8,
        distance: 0.4)
  ];
}
