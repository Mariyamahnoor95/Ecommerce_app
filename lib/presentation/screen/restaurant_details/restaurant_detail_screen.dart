import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/models.dart';
import 'package:food_delivery_app/widgets/widget.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({Key? key, required this.restaurant}) : super(key: key);
  static const String routeName = '/restaurantDetail';

  static Route route({required Restaurant restaurant}) {
    return MaterialPageRoute(
        builder: (_) =>RestaurantDetailScreen(restaurant: restaurant),
        settings: const RouteSettings(name: routeName));
  }
final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      padding: const EdgeInsets.symmetric(horizontal: 50)),
                  onPressed: () {},
                  child: Text(
                    'Basket',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(restaurant.imageUrl))),
            ),
            RestaurantInformation(
              restaurant: restaurant,
            ),
            ListView.builder(
             physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: restaurant.tags.length,
                itemBuilder: (context, index) {
                  return _buildMenuItem(restaurant, context, index);
                })
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      Restaurant restaurant, BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
          child: Text(
            restaurant.tags[index],
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Theme.of(context).primaryColorDark),
          ),
        ),
        Column(
            children: restaurant.menuItems
                .where(
                    (menuItem) => menuItem.category == restaurant.tags[index])
                .map(
                  (menuItem) => Column(
                    children: [
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          title: Text(menuItem.name, style: Theme.of(context).textTheme.titleLarge,),
                          subtitle: Text(menuItem.description,style: Theme.of(context).textTheme.bodyLarge,),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('\$${menuItem.price}', style: Theme.of(context).textTheme.titleLarge),
                              IconButton(
                                  onPressed: () {},
                                  icon:  Icon(Icons.add_circle, color: Theme.of(context).primaryColorDark,))
                            ],
                          ),
                        ),
                      ),
                      Divider(height: 2,)
                    ],
                  ),
                )
                .toList())
      ],
    );
  }
}
