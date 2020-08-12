import 'package:flutter/material.dart';
import 'package:lgana/providers/countries.dart';
import 'package:lgana/widgets/room_item.dart';
import 'package:provider/provider.dart';

class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final countries=Provider.of<Countries>(context).items;

    return ListView.builder(
        itemCount:countries.length,
        itemBuilder: (ctx,i)=>ChangeNotifierProvider.value(
            value: countries[i],
        child: RoomItem(),)

    );
  }
}
