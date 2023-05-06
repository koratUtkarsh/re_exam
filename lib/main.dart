import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:re_exam/Screen/ApiCall_Screeen/Provider/home_provider.dart';
import 'package:re_exam/Screen/ApiCall_Screeen/View/home_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
        },
      ),
    ),
  );
}