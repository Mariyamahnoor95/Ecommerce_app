
import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);
  static const String routeName= '/basket';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> BasketScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("basket"),
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
