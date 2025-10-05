import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/helper_function/on_genrated_routes.dart';
import 'package:food_app/core/services/get_it_service.dart';
import 'package:food_app/responsive_widgets/dashboard_view.dart';

import 'core/services/shared_preferences_singleton.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
  await Prefs.init();
  setupGeIit();
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute: onGenrateRoute,
      initialRoute: DashboardView.routeName,
    );
  }
}
