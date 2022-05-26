import 'package:flutter/material.dart';
import 'package:login/custom_widgets.dart';
import 'package:login/hometab.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
           leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },          
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){}, icon: Icon(Icons.logout_rounded)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green,Colors.yellow],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft
              )
            ),
          ),
          bottom: TabBar(
            indicatorWeight: 5,
            indicatorColor: Colors.white,
            tabs: [
           Tab(
             icon: IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeTab()));

             }, icon: Icon(Icons.home)),text: 'Home',
           ),
           Tab(
             icon: IconButton(onPressed: (){}, icon: Icon(Icons.info)),text: 'About',
           ),
           Tab(
             icon: IconButton(onPressed: (){}, icon: Icon(Icons.notification_add)),text: 'Notifications',
           ),

          ]
          ),          
        ),
           
    
    
      ),
          );
  }
}