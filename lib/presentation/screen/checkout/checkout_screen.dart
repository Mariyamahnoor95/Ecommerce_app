
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);
  static const String routeName= '/checkout';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> CheckoutScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("checkout"),
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
