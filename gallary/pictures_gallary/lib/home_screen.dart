import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> quots =[
    "Me thinking I’ve fixed my life just  beacus I cleaned my room",
    "When all this is over, Let’s go to Bali 🌴🖤",
    "When will fate laugh for us",
    "It may not be a good day,but there is something good in every day",
    "Turn your wounds into wisdom"

  ];
  List<Image> photos=[
        Image.asset('assets/image/spongpop.jpg'),
        Image.asset('assets/image/bali.jpg'),
          Image.asset('assets/image/laugh.jpg'),
           Image.asset('assets/image/nature.jpg'),
          Image.asset('assets/image/faliure.jpg')
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar:AppBar(
    leading: FlatButton (
        child:
       Text("prev",
      style : TextStyle(
         fontSize: 28,
         fontStyle: FontStyle.italic

       ),
       ),
       onPressed: ()
       {
            setState(() {
              index--;
            
            });    
       }
       
       ),

    
   title: Text("gallary"),
   backgroundColor: Colors.blueGrey,
   centerTitle: true,
   
   actions: [
       FlatButton (
        child:
       Text("next",
      style : TextStyle(
         fontSize: 28,
         fontStyle: FontStyle.italic

       ),
       ),
       onPressed: ()
       {
            setState(() {
              index++;
           
            });    
       }
       ),

    ],
    
   ),

  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[ 
        Text (
          quots[index],
         
          textAlign: TextAlign.center,
          style: TextStyle (
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          
        ),
        photos[index],
        
       
       
      ],
    ) 
  ), 
  );
  }
}