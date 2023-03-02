
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/models.dart';
import 'package:food_delivery_app/widgets/restaurant_card.dart';

class RestaurantlistingScreen extends StatelessWidget {
  const RestaurantlistingScreen({Key? key, required this.restaurants}) : super(key: key);

  static const String routeName= '/restaurantListing';

  static Route route( {required List<Restaurant> restaurants}){
    return MaterialPageRoute(
        builder: (_)=> RestaurantlistingScreen(restaurants : restaurants),
        settings: RouteSettings(name: routeName)
    );
  }
  final List<Restaurant> restaurants;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(""
            "RestaurantS " ,style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: restaurants.length,
            itemBuilder: (context, index){
            return RestaurantCard(restaurant: restaurants[index]);
            }),
      )
    );
  }
}
