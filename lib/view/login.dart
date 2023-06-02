import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Text("تسجيل الدخول",style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(height: 10,),
                Text("مرحباً بعودتك",style: TextStyle(color: Colors.white,fontSize: 20),)

              ],
            ),
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60), )
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    SizedBox( height: 40,),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                          color: Color.fromARGB(50, 95 , 27 ,3 ),
                        blurRadius: 20,
                        //  offset: Offset(0,10)
                        )]
                      ),
                      child: Column(
                        children:<Widget> [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.blueAccent))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email or phone number",
                                hintStyle: TextStyle(color: Colors.blueGrey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.blueAccent))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.blueGrey),
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("نسيت الرمز",style: TextStyle(color: Colors.grey),),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text("دخول", style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                   /* SizedBox(height: 80,),
                    Row(
                      children:<Widget> [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )*/
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      );
  }
}