import 'package:flutter/material.dart';
import 'package:news_app/presentation/resources/colors_manager.dart';

ThemeData getApplicationTheme(){
  final theme = ThemeData(
    
    // app theme datas
    primaryColor: ColorsManager.primaryColor,

  );

  return theme;
}