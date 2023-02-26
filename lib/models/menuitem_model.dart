import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  final String name;
  final String description;
  final double price;

  MenuItem(
      {required this.id,
      required this.restaurantId,
      required this.name,
      required this.description,
      required this.price});

  @override
  List<Object?> get props => [id, restaurantId, name, description, price];

  static List<MenuItem> menuItems = [
    MenuItem(
        id: 1,
        restaurantId: 1,
        name: 'pizza',
        description: 'pizza with Tomatoes',
        price: 500),
    MenuItem(
        id: 2,
        restaurantId: 1,
        name: 'CocaCola',
        description: 'A cold beverage',
        price: 120),
    MenuItem(
        id: 3,
        restaurantId: 1,
        name: 'pizza',
        description: 'pizza with Tomatoes',
        price: 500),
    MenuItem(
        id: 4,
        restaurantId: 1,
        name: 'CocaCola',
        description: 'A cold beverage',
        price: 120)
  ];
}
