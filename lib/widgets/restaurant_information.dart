import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/models.dart';
import 'package:food_delivery_app/widgets/widget.dart';

class RestaurantInformation extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantInformation({Key? key, required this.restaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.name,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).primaryColorDark),
          ),
          const SizedBox(height: 5,),
          RestaurantTags(restaurant:restaurant),
          const SizedBox(height: 5,),
          Text('${restaurant.distance}km away -\$${restaurant.deliveryFee} delivery fee',
            style: Theme.of(context)
                .textTheme
                .titleLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Restaurant Information', style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "'Lorem Ipsum has been the"
                " industrs standard dummy text ever since"
                "passages, and more recently with desktop publishing software",
            style: Theme.of(context).textTheme.titleLarge,
          ),


        ],
      ),
    );
  }
}
