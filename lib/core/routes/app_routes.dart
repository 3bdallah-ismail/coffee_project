import 'package:flutter/material.dart';

import '../../modules/coffee_detail/coffee_detail.dart';
import '../../modules/intro_screen/on_boarding.dart';
import '../../modules/layout/layout_screen.dart';
import '../../modules/layout/screens/pages/home_screen.dart';
import 'app_route_name.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutesName.onboarding: (_) => const OnBoardingScreen(),
    AppRoutesName.home: (_) => HomeScreen(),
    AppRoutesName.layout: (_) => const LayoutScreen(),
    AppRoutesName.detail: (_) => const CoffeeDetailScreen(),
  };
}
