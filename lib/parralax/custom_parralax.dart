import 'package:cool_stuff/parralax/location_item_list.dart';
import 'package:flutter/material.dart';

import '../model/location.dart';


class CustomParralax extends StatelessWidget {
  const CustomParralax({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(final location in locations)
            LocationListItem(
                imageUrl: location.imageUrl,
                place: location.place,
                name: location.name
            )
        ],
      ),
    );
  }
}





