import 'package:breakingbad_with_bloc/constant/strings.dart';
import 'package:breakingbad_with_bloc/presentation/screens/characters.dart';
import 'package:breakingbad_with_bloc/presentation/screens/charaters_details_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const CharactersScreen(),
        );
      case charactersDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => const CharactersDetailsScreen(),
        );
    }
    return null;
  }
}
