import 'package:flutter/material.dart';
import 'package:app/ui/components/form/form_login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.8,
                child: Image.asset('assets/images/bg-login.jpg',
                    fit: BoxFit.cover),    
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black,Colors.black12,Colors.black26]
                  )
                ), 
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.8,
                child: Center(
                  child: Image.asset('assets/images/logo-white.png',width: 60,),
                ),
              ),
              Positioned(
                width: MediaQuery.of(context).size.width,
                
                left: 0,
                bottom: 0,
                child: FormLogin(),
              )
            ],
          )),
    ));
  }
}
