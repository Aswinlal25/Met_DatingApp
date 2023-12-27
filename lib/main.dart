

import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/routes/routes_generator.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
   DatingApp({super.key});

   final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
      colorScheme: const ColorScheme.light(),
      primaryColor: Colors.red
      ),
      initialRoute: Routes.loginPage,
      onGenerateRoute:  routeGenerator.onGenerateRoute,
      
    );
  }
}
