
import 'package:flutter/material.dart';
import 'package:news_app/presentation/forgot_password/forgot_password.dart';
import 'package:news_app/presentation/login/login.dart';
import 'package:news_app/presentation/main/main.dart';
import 'package:news_app/presentation/news/news.dart';
import 'package:news_app/presentation/onboarding/onboarding.dart';
import 'package:news_app/presentation/register/register.dart';
import 'package:news_app/presentation/resources/strings_manager.dart';
import 'package:news_app/presentation/splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String newsRoute = "/news";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.newsRoute:
        return MaterialPageRoute(builder: (_) => const NewsView());
      default: 
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => 
       Scaffold(
        appBar: AppBar(title: const Text(AppString.noRouteFound)),
        body: const Center(child: Text(AppString.noRouteFound)),
       )
    );
  }
}


