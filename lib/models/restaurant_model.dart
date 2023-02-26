import 'package:equatable/equatable.dart';

import 'models.dart';

class Restaurant extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  const Restaurant(
      {required this.id,
      required this.menuItems,
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
    Restaurant(
        id: 1,
        imageUrl: 'images/burrito.jpg',
        name: 'Burrito',
        tags: ['burritos', 'italian'],
        menuItems: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 1)
            .toList(),
        deliveryTime: 20,
        deliveryFee: 50.8,
        distance: 0.1),
    Restaurant(
        id: 2,
        imageUrl: 'images/burgerOclock.jpg',
        name: 'BurgerOclock',
        tags: ['fries', 'burger'],
        menuItems: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 2)
            .toList(),
        deliveryTime: 50,
        deliveryFee: 57.8,
        distance: 0.2),
    Restaurant(
        id: 3,
        imageUrl: 'images/salmon.jpg',
        name: 'Salmani',
        tags: ['salmon', 'burger'],
        menuItems: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 3)
            .toList(),
        deliveryTime: 60,
        deliveryFee: 60.8,
        distance: 0.3),
    Restaurant(
        id: 4,
        imageUrl: 'images/salmon.jpg',
        name: 'Piggery',
        tags: ['pizza', 'burger'],
        menuItems: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 4)
            .toList(),
        deliveryTime: 70,
        deliveryFee: 70.8,
        distance: 0.4)
  ];
}
