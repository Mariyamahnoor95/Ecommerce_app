import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/restaurant_tags.dart';

import '../models/models.dart';
class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  (){Navigator.pushNamed(context,'/restaurantDetail',
      arguments: restaurant,);},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                          image: AssetImage(restaurant.imageUrl),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "${restaurant.deliveryTime} min",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Text('${restaurant.tags}'),
                  RestaurantTags(restaurant: restaurant),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${restaurant.distance}km - \$${restaurant.deliveryFee} delivery charges',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

