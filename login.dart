import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget{
  const MyLogin({Key?key}):super(key: key);
  @override
  _MyLoginState createState()=>_MyLoginState();
}
class _MyLoginState extends State<MyLogin>{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/login.png"),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 55,top: 150),
              child: Text("Welcome\nBack",
              style: TextStyle(color: Colors.cyan,fontSize: 33,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.55,
                  left: 35,
                  right: 35),
              child:Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign in",style: TextStyle(
                        fontSize: 25,fontWeight: FontWeight.w700
                      ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.cyan,
                        child: IconButton(
                        color: Colors.black,
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'register');
                      }, child: Text("Sign up",style: TextStyle(
                        decoration: TextDecoration.underline ,fontSize: 20,fontWeight: FontWeight.bold,
                      ),
                      )),
                      TextButton(onPressed: (){}, child: Text("Forgot password",style: TextStyle(
                        decoration: TextDecoration.underline ,fontSize: 20,fontWeight: FontWeight.bold,
                      ),))
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}