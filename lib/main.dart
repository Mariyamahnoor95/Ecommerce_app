import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_router.dart';
import 'package:food_delivery_app/presentation/screen/screen.dart';

import 'config/theme.dart';


Future<void> main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seller App',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,


    );
  }
}










