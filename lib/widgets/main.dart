import 'package:flutter/material.dart';
import 'package:lgana/providers/countries.dart';
import 'package:lgana/screens/main_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Country()),
        ChangeNotifierProvider.value(
            value: Countries())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(


          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Color.fromRGBO(202, 109, 156, 5),
          primarySwatch: Colors.pink,
        ),
        home: MainScreen(),
      ),
    );
  }
}

