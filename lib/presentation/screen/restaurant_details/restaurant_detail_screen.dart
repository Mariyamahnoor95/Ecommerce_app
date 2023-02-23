
import 'package:flutter/material.dart';

class RestaurantDetailScreen extends StatelessWidget {
  const RestaurantDetailScreen({Key? key}) : super(key: key);
  static const String routeName= '/restaurantDetail';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> RestaurantDetailScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurant Detail screen"),
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
