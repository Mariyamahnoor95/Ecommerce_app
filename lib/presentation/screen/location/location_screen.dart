
import 'package:flutter/material.dart';

import '../../../widgets/location_searchbox.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);
  static const String routeName= '/location';

  static Route route(){
    return MaterialPageRoute(builder: (_)=> LocationScreen(),
        settings: RouteSettings(name: routeName)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("location"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Image.asset('images/seller.png', fit: BoxFit.fill),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,'/');
              },
              child:const  Text('Home Screen'),
            ),
          ),
           Positioned(top: 30 , left: 20 , right: 20,
               child: Container(
                 height: 100,
                 child: Row(
             children: [
                 Image.asset('images/543-pizza-1.svg.png',height: 40,),
                 SizedBox(width: 20,),
                 Expanded(child: LocationSearchBox(hinttext: 'Enter your location',)),
             ],
           ),
               )),
          Positioned(bottom: 50 , left: 20 , right: 20,
              child: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor,),
                    onPressed: () {  },
                    child: Text('save'),
                  ),
                )
              ))
        ],
      ),
    );
  }
}


