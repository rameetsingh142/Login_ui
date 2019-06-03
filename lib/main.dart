import 'package:flutter/material.dart';
void main()=>runApp( new Myapp() );
 class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage() ,
      theme: ThemeData(
        primarySwatch: Colors.blue
      )
      );   
  }
 } 
class Loginpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Loginpagestate();
  }
}
class Loginpagestate  extends State<Loginpage> with SingleTickerProviderStateMixin{
  AnimationController _iconAnimationController;
  Animation<double>_iconAnimation;
  @override
  void initState(){
    super.initState();
    _iconAnimationController= AnimationController(vsync: this,
    duration: Duration(milliseconds: 1000));
    _iconAnimation= CurvedAnimation(
      curve: Curves.bounceOut,
      parent: _iconAnimationController);
    _iconAnimation.addListener(()=>this.setState((){}));
    _iconAnimationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/pic.jpg"),
            fit: BoxFit.cover,
            color:Colors.black87,
            colorBlendMode: BlendMode.darken,
            ),
            Column(mainAxisAlignment:MainAxisAlignment.center ,
              children: <Widget>[
             Image(
               image: AssetImage("assets/images.png") ,
               height: _iconAnimation.value*100,
               width: _iconAnimation.value*100,
               ), 
               Form(
                 child: Theme(
                   data: ThemeData(brightness:Brightness.dark,primarySwatch: Colors.teal,
                   inputDecorationTheme: InputDecorationTheme(
                     labelStyle: TextStyle(color: Colors.teal, fontSize: 20.0)
                   )
                   ),
                   child:Container(
                     padding: const EdgeInsets.all(50.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>[
                       TextFormField(
                     decoration: 
                     InputDecoration(labelText: "Enter Email Id",
                     hintText: "Email",
                     ),
                  keyboardType: TextInputType.emailAddress,
                 ) ,
                     TextFormField(
                     decoration: 
                     InputDecoration(labelText: "Enter Password",
                     hintText: "Password",
                     ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                 ) ,
                 Padding(padding: const EdgeInsets.only(top:20.0),
                 ),
                 MaterialButton(height: 50.0,
                 minWidth: 100.0,
                   color: Colors.teal,
                   textColor: Colors.white,
                   child: Text("Login"),
                   onPressed:()
                   {} ,
                   splashColor: Colors.tealAccent,
                 )
                     ],
                 ),
                   ),
                 )
               ),
            ],)
        ],

      ),
    );
  }


}




