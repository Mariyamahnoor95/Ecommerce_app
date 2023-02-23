import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/presentation/screen/authentication/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTimer(){
    Timer(const Duration( seconds: 8),() async{
      Navigator.push(context, MaterialPageRoute(builder:(c)=> const AuthScreen() ));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/splash.jpg"),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Food Seller",
                textAlign: TextAlign.center ,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: "Signatra",
                    letterSpacing: 3
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
