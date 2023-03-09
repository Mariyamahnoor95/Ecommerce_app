import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/models/models.dart';

import '../../../models/category_model.dart';
import '../../../models/price_model.dart';
import '../../../widgets/custum_category_filter.dart';
import '../../../widgets/custum_price_filter.dart';
import '../../blocs/filters/filter_bloc.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const String routeName = '/filter';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => FilterScreen(),
        settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Filter"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<FilterBloc, FilterState>(
                  builder: (context, state) {
                    if (state is FilterLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state is FilterLoaded) {
                      return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50)),
                          onPressed: () {
                            var categories = state.filter.categoryFilter
                                .where((filter) => filter.value)
                                .map((filter) => filter.category.name)
                                .toList();

                            var prices = state.filter.priceFilter
                                .where((filter) => filter.value)
                                .map((filter) => filter.price.price)
                                .toList();


                            List<Restaurant> restaurants = Restaurant.restaurants
                                .where(
                                  (restaurant) => categories.any(
                                    (category) =>
                                        restaurant.tags.contains(category),
                                  ),
                                )
                                .where(
                                  (restaurant) => prices.any(
                                    (price) => restaurant.priceCategory!
                                        .contains(price),
                                  ),
                                )
                                .toList();

                            Navigator.pushNamed(
                              context,
                              '/restaurantListing',
                              arguments: restaurants,
                            );
                          },
                          child: Text(
                            'Apply',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(color: Colors.white),
                          )
                      );
                    } else {
                      return const Text('Somthing went wrong');
                    }
                  },
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Theme.of(context).primaryColorDark),
              ),
              CustomPriceFilter(),
              Text(
                'Category',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Theme.of(context).primaryColorDark),
              ),
              CustomCategoryFilter(),
            ],
          ),
        ));
  }
}
