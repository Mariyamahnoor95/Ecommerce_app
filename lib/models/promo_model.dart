import 'package:equatable/equatable.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;

  final String imageUrl;

  Promo(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, description, imageUrl];
  static List<Promo> promo = [
    Promo(
      id: 1,
      title: 'free delivery on Yore first three order',
      description: 'Place an order of 100 and delivery fee is on us',
      imageUrl: 'images/burrito.jpg',
    ),
    Promo(
      id: 2,
      title: '50 percent off in these restaurant',
      description: 'Remaining delivery fee is on us',
      imageUrl: 'images/salmon.jpg',
    ),
    Promo(
      id: 3,
      title: 'Place an order on promo codes and get discount',
      description: 'Place an order of 100 and delivery fee is on us',
      imageUrl: 'images/burgerOclock.jpg',
    )
  ];
}
