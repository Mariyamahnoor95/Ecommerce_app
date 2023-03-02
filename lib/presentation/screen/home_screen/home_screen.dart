import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/promo_model.dart';
import '../../../models/models.dart';
import '../../../widgets/promo_box.dart';
import '../../../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: const CustomAppBar(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Category.category.length,
                    itemBuilder: (context, index) {
                      return CategoryBox(
                        category: Category.category[index],
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Promo.promo.length ,
                    itemBuilder: (context, index) {
                      return  PromoBox(promo: Promo.promo[index],);
                    }),
              ),
            ),
            FoodSearchBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Top Rated',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: Restaurant.restaurant.length,
                  itemBuilder: (context, index) {
                    return RestaurantCard(
                        restaurant: Restaurant.restaurant[index]);
                  }),
            )
          ],
        ));
  }
}




class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.person),
        onPressed: () {},
      ),
      centerTitle: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CURRENT LOCATION',
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Colors.white),
          ),
          Text(
            'Singapore,| gulshaneiqbal',
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
