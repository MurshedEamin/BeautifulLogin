import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/register.png"),fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 55,top: 150),
              child: Text("Create\nAccount",
                style: TextStyle(color: Colors.white70,fontSize: 33,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic),),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.38,
                    left: 35,
                    right: 35),
                child:Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(height: 30,),
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
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
