import 'package:breakingbad_with_bloc/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BreakingBad(
    appRoute: AppRoute(),
  ));
}

class BreakingBad extends StatelessWidget {
  const BreakingBad({super.key, required this.appRoute});

  final AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
