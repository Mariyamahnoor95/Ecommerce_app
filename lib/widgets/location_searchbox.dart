import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/theme.dart';
class LocationSearchBox extends StatelessWidget {
  final String hinttext;
  const LocationSearchBox({
    super.key, required this.hinttext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hinttext,hintStyle: TextStyle(fontSize: 16),
            suffixIcon: Icon(Icons.search,color: Theme.of(context).primaryColor,),
            contentPadding: const EdgeInsets.only(left: 16, bottom: 5, right: 10),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.pink),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            )
        ),
      ),
    );
  }
}