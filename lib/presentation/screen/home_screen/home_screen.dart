import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => HomeScreen(), settings: RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset('icons8-amazon-alexa-logo.svg',height: 40,width: 30,),
            Center(
              child: ElevatedButton(
                // style: ElevatedButton.styleFrom(backgroundColor:Theme.of(context).primaryColor ),
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                child:  Text(
                  'Location Screen',
                  style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
