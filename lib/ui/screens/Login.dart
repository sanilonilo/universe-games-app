import 'package:flutter/material.dart';
import 'package:app/ui/components/form/form_login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          width: double.infinity,
          
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 25,bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/logo-white.png',width: 30,),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 40),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello.',style: TextStyle(fontSize: 35,color: Colors.white),),
                    Text('Welcome back.',style: TextStyle(fontSize: 35,color: Colors.white),)
                  ],
                ),
              ),
              Container(
                child: FormLogin(),
              )
            ],
          )
    )));
  }
}
