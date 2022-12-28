import 'package:flutter/material.dart';

import '../models/contact.dart';

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