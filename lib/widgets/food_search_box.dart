import 'package:flutter/material.dart';

import 'location_searchbox.dart';
class FoodSearchBox extends StatelessWidget {
  const FoodSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: LocationSearchBox(
                hinttext: 'What would you like to eat',
              ),
            )),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(top: 13.0, bottom: 13.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            height: 50,
            width: 50,
            child: IconButton(
              icon: Icon(Icons.menu),
              color: Theme.of(context).primaryColor,
              onPressed: (){},
            ),
          ),
        )

      ],
    );
  }
}