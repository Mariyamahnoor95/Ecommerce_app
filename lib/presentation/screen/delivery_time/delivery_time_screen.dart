
import 'package:flutter/material.dart';

class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({Key? key}) : super(key: key);
  static const String routeName= '/deliverytime';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> DeliveryTimeScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliveryTime screen"),
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
