import 'package:flutter/material.dart';

class BottomNavigationParent extends StatefulWidget {
  const BottomNavigationParent({Key? key}) : super(key: key);

  @override
  State<BottomNavigationParent> createState() => _BottomNavigationParentState();
}

class _BottomNavigationParentState extends State<BottomNavigationParent> {
  int pageIndex = 0;
  List pages = [];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
