import 'package:flutter/material.dart';
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


class HomeForRestApi extends StatelessWidget {
  const HomeForRestApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlutterLogo(size: 72),
              AppButton(
                operation: 'GET',
                operationColor: Colors.lightGreen,
                description: 'Fetch users',
                onPressed: () async {
                  var response = await BaseClient().get('/users').catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');

                  var users = userFromJson(response);
                  debugPrint('Users count: ' + users.length.toString());
                },
              ),
              AppButton(
                operation: 'POST',
                operationColor: Colors.lightBlue,
                description: 'Add user',
                onPressed: () async {
                  var user = User(
                    name: 'Afzal ',
                    qualifications: [
                      Qualification(degree: 'Maste', completionData: '01-01-2025'),
                    ],
                  );

                  var response = await BaseClient().post('/users', user).catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
              AppButton(
                operation: 'PUT',
                operationColor: Colors.orangeAccent,
                description: 'Edit user',
                onPressed: () async {
                  var id = 4;
                  var user = User(
                    name: 'Afzal ',
                    qualifications: [
                      Qualification(degree: 'Ph.D', completionData: '01-01-2028'),
                    ],
                  );

                  var response = await BaseClient().put('/users/$id', user).catchError((err) {});
                  if (response == null) return debugPrint('put error');
                  debugPrint('successful:');
                  debugPrint('successful call:');
                },
              ),
              AppButton(
                operation: 'DEL',
                operationColor: Colors.red,
                description: 'Delete user',
                onPressed: () async {
                  var id = 42;
                  var response = await BaseClient().delete('/users/$id').catchError((err) {});
                  if (response == null) return print('error');
                  debugPrint('successful:vvdfdfdf');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  }






