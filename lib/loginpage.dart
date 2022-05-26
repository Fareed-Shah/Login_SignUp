import 'package:flutter/material.dart';
import 'package:login/custom_widgets.dart';
import 'package:login/home.dart';



class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Welcome'),
       centerTitle: true,      
       flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green,Colors.yellow],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft
            )
          ),
        ),
     ),
     body:     
     Column(
       children: [
         Container(
           alignment: Alignment.center,
           padding: EdgeInsets.all(10),
           child: Text_Widget(name: 'FareedShah',font_size: 30,fontcolor: Colors.green,font_Weight: FontWeight.w500),
         ),
          Container(            
           alignment: Alignment.center,
           padding: EdgeInsets.all(10),
           child: Text_Widget(name: 'Sign In',font_size: 20),
         ),
             Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(child: Text('Sign up'),
            onPressed: null,),
            
            ElevatedButton(
          child: const Text('Login'),
          onPressed: () {                     
          //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen() ));
          },
          style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(50),
             ),
              primary: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,                
          children: [
            
            
            Text('Does not have account?'),
       TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
          ],
        )
 
       ],
     )                                     
       
      );     
   
  }
}