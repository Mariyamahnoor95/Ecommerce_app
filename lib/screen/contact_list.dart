import 'package:flutter/material.dart';

import '../models/contact.dart';
class ContactList extends StatelessWidget {
  ContactList({Key? key}) : super(key: key);

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

