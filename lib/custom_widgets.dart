import 'package:flutter/material.dart';


    //  TextFieldWidget
Widget  Textfield_Widget(
  {
    islbl='Email',
    bool  ispassword=false,
    isheight=100,
    iswidth= 200
    }
  )
{
return Container(
  height: isheight,
  width: iswidth,
  child:   TextField(    
  obscureText: ispassword,  
  decoration: InputDecoration(  
  labelText: islbl,
  border: OutlineInputBorder(),
  ),),);
}

//  TextWidget
Widget Text_Widget({name,font_size=20,fontcolor=Colors.black,font_Weight}){
return Text( name ,
style: TextStyle(
fontSize: font_size,color: fontcolor,fontWeight: font_Weight
),     
  );
}


Widget Container_Widget({isalignment,ispadding,ischild,isheight,iswidth,iscolor,ismargin})
{
return Container(
height: isheight,
width: iswidth,
color: iscolor,
alignment: isalignment,
padding: ispadding,
margin: ismargin,
);
}