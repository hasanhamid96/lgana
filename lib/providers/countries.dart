
import 'package:flutter/cupertino.dart';

class Country with ChangeNotifier{

  final String id;
  final String countryName;
  final int roomsNum;
  final int userNum;
  final String imageUrl;

  Country({
    @required  this.id,
    @required  this.countryName,
    @required this.roomsNum,
    @required  this.userNum,
    @required  this.imageUrl});
}

class Countries with ChangeNotifier{


  final List<Country> _items=[
    Country(
      id: DateTime.now().toIso8601String(),
      countryName: "Iraq",
      roomsNum: 500,
      userNum: 20,
      imageUrl: 'https://cdn.countryflags.com/thumbs/iraq/flag-800.png'


    ),
    Country(
        id: DateTime.now().toIso8601String(),
        countryName: "Egypt",
        roomsNum: 120,
        userNum: 10,
        imageUrl: 'https://cdn.webshopapp.com/shops/94414/files/52382094/flag-of-egypt.jpg'


    ),
    Country(
        id: DateTime.now().toIso8601String(),
        countryName: "Iran",
        roomsNum: 10,
        userNum: 50,
        imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Flag_of_Iran.svg/1024px-Flag_of_Iran.svg.png'


    ),
    Country(
        id: DateTime.now().toIso8601String(),
        countryName: "barazil",
        roomsNum: 450,
        userNum: 90,
        imageUrl: 'https://upload.wikimedia.org/wikipedia/en/0/05/Flag_of_Brazil.svg'


    ),
    Country(
        id: DateTime.now().toIso8601String(),
        countryName: "Iraq",
        roomsNum: 500,
        userNum: 20,
        imageUrl: 'https://cdn.countryflags.com/thumbs/iraq/flag-800.png'


    ),
    Country(
        id: DateTime.now().toIso8601String(),
        countryName: "Egypt",
        roomsNum: 120,
        userNum: 10,
        imageUrl: 'https://cdn.webshopapp.com/shops/94414/files/52382094/flag-of-egypt.jpg'


    ),


  ];
  List<Country> get items{
    return [..._items];
  }


}