import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final Image image;

  Category({required this.id, required this.name, required this.image});

  @override

  List<Object?> get props => [id, name, image];

static List<Category> category =[
  Category(id: 1, name: "pizza", image: Image.asset('images/543-pizza-1.svg.png'),),
  Category(id: 2, name: "burger", image: Image.asset('images/burger.jpg'),),
  Category(id: 2, name: "salad", image: Image.asset('images/salad.jpg'),),
  Category(id: 2, name: "drink", image: Image.asset('images/drink.jpg'),),
  Category(id: 2, name: "fries", image: Image.asset('images/fries.jpg'),),
];
}
