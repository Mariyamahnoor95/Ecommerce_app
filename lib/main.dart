import 'package:flutter/material.dart';
import 'package:food_delivery_app/screen/new_contact.dart';

import 'models/contact.dart';

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
      home: MyHome(),
      routes: {
        '/new_contact':(context)=> const NewContactViewState(),
      },
    );
  }
}





class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Book'),
      ),
      body: ValueListenableBuilder(
        valueListenable: ContactBook(),
        builder: (contact , value , child){
          final contacts = value as List<Contact>;
        return  ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, int index) {
              final contact = contacts[index];
              return Dismissible(
                onDismissed:(Direction){
                  ContactBook().remove(contact: contact);
                } ,
                key: ValueKey(contact.id),
                child: Material(
                  color: Colors.white,
                  elevation: 7.0,
                  child: ListTile(
                    title: Text(contact.name),
                  ),
                ),
              );
            });
        }

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/new_contact');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

