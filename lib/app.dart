import 'package:dzair_go/views/auth/auth_view.dart';
import 'package:dzair_go/views/onboarding/onboarding_view.dart';
import 'package:dzair_go/views/onboarding/onboarding_viewmodel.dart';
import 'package:dzair_go/views/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [Provider(create: (context) => OnboardingView())],
        child: AuthView(),
      ),
    );
  }
}
