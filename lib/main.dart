import 'package:dating_app/application/business_logic/Auth/auth_bloc.dart';
import 'package:dating_app/application/business_logic/Chat/chat_bloc.dart';
import 'package:dating_app/application/business_logic/Features/features_bloc.dart';
import 'package:dating_app/application/business_logic/Profile/profile_bloc.dart';
import 'package:dating_app/application/business_logic/Users/users_bloc.dart';
import 'package:dating_app/application/presentation/routes/routes.dart';
import 'package:dating_app/application/presentation/routes/routes_generator.dart';
import 'package:dating_app/data/services/auth/auth.dart';
import 'package:dating_app/data/services/chat/chat.dart';
import 'package:dating_app/data/services/features/features.dart';
import 'package:dating_app/data/services/profile/profile.dart';
import 'package:dating_app/data/services/users/users.dart';
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
        BlocProvider(
          create: (context) => ProfileBloc(ProfileApi()),
        ),
        BlocProvider(create: (context) => UsersBloc(UsersApi())),
        BlocProvider(create: (context) => FeaturesBloc(FeaturesApi())),
        BlocProvider(create: (context) => ChatBloc(ChatApi())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Met',
        theme: ThemeData(
          useMaterial3: false,
          colorScheme: const ColorScheme.light(),
          primaryColor: Colors.red,
        ),
        initialRoute: Routes.initail,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
