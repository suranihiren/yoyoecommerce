import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoyoecommerce/utils/widgets/appbar_widget/webappbar.dart';
import 'package:yoyoecommerce/utils/widgets/text_field_widget.dart';
import 'package:yoyoecommerce/view/home/provider.dart';
import '../../app_element/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          WebAppBar()

        ],
      ),
    );
  }
}
