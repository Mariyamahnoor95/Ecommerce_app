import 'package:flutter/material.dart';

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

class Contact {
  final String name;

  const Contact({required this.name});
}

class ContactBook {
  //make a singleton class
  ContactBook._sharedInstance();

  static final ContactBook _shared = ContactBook._sharedInstance();

  factory ContactBook() => _shared;

  // storage for the contact
  final List<Contact> _contact = [
    Contact(name: 'Mahnoor'),
    Contact(name: 'Hamza'),
    Contact(name: 'Owais')
  ];

// get length of the contact
  int get length => _contact.length;

  void add({required Contact contact}) {
    _contact.add(contact);
  }

  void remove({required Contact contact}) {
    _contact.remove(contact);
  }

  Contact? contact({required int atIndex}) =>
      _contact.length > atIndex ? _contact[atIndex] : null;
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
      body: ListView.builder(
          itemCount: contactBook.length,
          itemBuilder: (context, int index) {
            final contact = contactBook.contact(atIndex: index)!;
            return ListTile(
              title: Text(contact.name),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).pushNamed('/new_contact');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class NewContactViewState extends StatefulWidget {
  const NewContactViewState({Key? key}) : super(key: key);

  @override
  State<NewContactViewState> createState() => _NewContactViewStateState();
}

class _NewContactViewStateState extends State<NewContactViewState> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Contact'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: ' Enter a new contact name...',
            ),
          ),
          TextButton(onPressed: (){
            final contact = Contact(name: _controller.text);
            ContactBook().add(contact: contact);
            Navigator.of(context).pop();
          }, child: const Text('Add contact'))
        ],
      ),
    );
  }
}
