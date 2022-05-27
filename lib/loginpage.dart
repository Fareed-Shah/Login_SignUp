import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:login/custom_widgets.dart';
import 'package:login/home.dart';



class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {

GlobalKey<FormState> formkey = GlobalKey<FormState>();

void validate(){
  if(formkey.currentState!.validate()){
    print('Ok');
  }
  else{
    print('Error');
  }
}

String? emailvalidate(email){
  if(email!.isEmpty && !EmailValidator.validate(email)){
    return "Enter a Valid Email";
  }
  else{
    return null;
  }
}

String? passwordvalidate(pass){
   if(pass!.isEmpty){
     return "Enter Password";
   }
   else{
     return null;
   }
}


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Welcomed !'),
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
     Form(
       key: formkey,
       autovalidateMode: AutovalidateMode.onUserInteraction,
       child:      
       ListView(         
       children: [
          Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Fareed shah',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
                Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
                Container(
                 alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.mail)
                    ),
                    //validation function define above
                    validator: emailvalidate                    
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock)
                    ),
                    validator: passwordvalidate,
                  ),
                ),
                Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    final validform =formkey.currentState!.validate();

                    if(validform){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                    }


                  }                  
                  
                 ,
                )
            ),
                
       ],

     ),
     )
                                          
       
      );     
   
  }
}