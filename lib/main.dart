import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/home_for_rest_api.dart';
import 'package:food_delivery_app/screen/new_contact.dart';
import 'package:food_delivery_app/widgets/app_button.dart';

import 'data/data_source/base_client.dart';
import 'models/contact.dart';
import 'models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:HomeForRestApi() ,
      routes: {
        '/new_contact':(context)=> const NewContactViewState(),
      },
    );
  }
}

class HomeBloc extends StatelessWidget {
  const HomeBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}







