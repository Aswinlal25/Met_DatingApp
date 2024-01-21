import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/routes/routes_generator.dart';
import 'package:dating_app/data/services/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  DatingApp({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthApi()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Met',
        theme: ThemeData(
            useMaterial3: false,
            colorScheme: const ColorScheme.light(),
            primaryColor: Colors.red),
        initialRoute: Routes.initail,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
