import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lgana/providers/countries.dart';
import 'package:provider/provider.dart';

class RoomItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final country=Provider.of<Country>(context);
    return Column(
      children: <Widget>[
        ListTile(
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.people,color: Colors.black54),
              SizedBox(width: 5,),
              Text("${country.userNum}"),
              SizedBox(width: 30,),
              Icon(Icons.chat_bubble,color: Colors.black54,),
              SizedBox(width: 5,),
              Text("${country.roomsNum}"),
            ],
          ),
          onTap: (){},
          title: Text("${country.countryName}"),
          leading: CircleAvatar(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(country.imageUrl,fit: BoxFit.contain,)),
          ),

        ),
        Divider()
      ],
    );
  }
}
