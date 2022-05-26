import 'package:flutter/material.dart';
import 'package:login/custom_widgets.dart';



class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
           Text_Widget(
             name: 'Home Tab'
           ),
    );
  }
}