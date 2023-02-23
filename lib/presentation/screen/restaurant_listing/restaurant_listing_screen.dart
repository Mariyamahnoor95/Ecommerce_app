
import 'package:flutter/material.dart';

class RestaurantlistingScreen extends StatelessWidget {
  const RestaurantlistingScreen({Key? key}) : super(key: key);
  static const String routeName= '/restaurantListing';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> RestaurantlistingScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("restaurant Listing"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context,'/');
          },
          child:const  Text('Home Screen'),
        ),
      ),
    );
  }
}
