import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/models.dart';
import 'package:food_delivery_app/presentation/screen/screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    print('the Route is : ${settings.name}');
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurantDetailScreen.routeName:
        return RestaurantDetailScreen.route(
          restaurant: settings.arguments as Restaurant
        );

      case RestaurantlistingScreen.routeName:
        return RestaurantlistingScreen.route(
          restaurants: settings.arguments as List<Restaurant>
        );

      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('error'),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
