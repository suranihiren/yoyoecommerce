import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier{
  final List<String> _myTabBar = ['Home','Contact','About','Sign up'];
  List<String> get myTabBar => _myTabBar;
}