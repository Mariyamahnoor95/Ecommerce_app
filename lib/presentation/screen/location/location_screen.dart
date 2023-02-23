
import 'package:flutter/material.dart';

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
                 Expanded(child: LocationSearchBox()),
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

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
       decoration: InputDecoration(
         filled: true,
         fillColor: Colors.white,
         hintText: 'Enter your location',
         suffixIcon: Icon(Icons.search),
         contentPadding: const EdgeInsets.only(left: 20, bottom: 5, right: 5),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: BorderSide(color: Colors.pink),
         ),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
           borderSide: BorderSide(color: Colors.white),
         )
       ),
          ),
    );
  }
}
