import 'package:flutter/material.dart';

import 'login_page.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xff90afff),
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.lock,color: Color(0xff074cff),),
              ),
              SizedBox(height: 70,),
               Text("Ro'yxatdan o'tish",
                   textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    )),

              SizedBox(height: 20,),
              Text("Ro'yxatdan o'tish uchun pastdegi tugmani bosing",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginPage();
                  }
                  ));
                },
                child: Container(
                  child: Center(child: Text("Ro'yhatdan o'tish",style: TextStyle(color: Colors.white),),),
                    width: 361,
                    height: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff074cff))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}