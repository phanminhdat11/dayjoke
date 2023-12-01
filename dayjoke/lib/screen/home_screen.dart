import 'dart:io';
import 'dart:math';

import 'package:dayjoke/data/cookie_manager.dart';
import 'package:flutter/material.dart';

import '../data/joke_model.dart';
import '../widgets/button_custom.dart';
import '../widgets/new_app_bar.dart';
import 'mobile_screen.dart';
import 'web_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'home_screen.dart';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > 600) {
      return WebScreen();
    } else {
      return MobileSreen();
    }
  }
}
