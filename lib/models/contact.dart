
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
class Contact {
  final String id;
  final String name;

  Contact({required this.name}): id= const Uuid().v4();
}
class ContactBook extends ValueNotifier<List<Contact>> {
  //make a singleton class
  ContactBook._sharedInstance( ): super([Contact(name: 'hello')]);

  static final ContactBook _shared = ContactBook._sharedInstance();

  factory ContactBook() => _shared;



// get length of the contact
  int get length => value.length;

  void add({required Contact contact}) {
 final contacts = value;
   contacts.add(contact);
   notifyListeners();
  }

  void remove({required Contact contact}) {
    final contacts = value;
    if(contacts.contains(contact)){
    contacts.remove(contact);

    notifyListeners();}
  }

  Contact? contact({required int atIndex}) =>
      value.length > atIndex ? value[atIndex] : null;
}