import 'package:flutter/material.dart';
import 'package:app/ui/components/form/ui/input.dart';
import 'package:app/ui/utils/form_validators.dart';

class FormLogin extends StatefulWidget{
  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  final _formData = Map<String,Object>();
  final _formValidators = FormValidators();
  final _focusPassword = FocusNode();

  void _submitForm(){
    final validate = _formKey.currentState?.validate() ?? false;
    if(!validate) return;
    _formKey.currentState?.save();
    print("$_formData");
  }

  void onChangeInput(String field,String value){
    _formData[field] = value;
  }

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Input(
              label: "Email",
              field: "email",
              icon: Icons.email,
              secure: false,
              focusNode: null,
              action: TextInputAction.next,
              validators: [_formValidators.requiredFieldValidator,_formValidators.emailValidator],
              onSaved: onChangeInput,
              onSubmitted: () => FocusScope.of(context).requestFocus(_focusPassword),
            ),
            Input(
              label: "Password",
              field: "password",
              icon: Icons.lock,
              secure: true,
              focusNode: _focusPassword,
              action: TextInputAction.send,
              validators: [_formValidators.requiredFieldValidator,_formValidators.passwordValidator],
              onSaved: onChangeInput,
              onSubmitted: () => _submitForm(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              child:TextButton(onPressed: ()=>{},child: Text('Sign in',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)
              ),),
            ),
            Container(
              width: double.infinity,
              child:TextButton(onPressed: ()=>{},child: Text('No account? Sign up!',style: TextStyle(color: Colors.green)),style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: Colors.green, width: 1),
                ),
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,bottom: 15),
              child: Text('OR',style: TextStyle(color: Colors.white54),)
            ),
            Container(
              width: double.infinity,
              child:TextButton(
                onPressed: ()=>{},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google-icon.png',width: 30,),
                    SizedBox(width: 20,),
                    Text('Sign in with Google',style: TextStyle(color: Colors.white),),
                  ],
                ),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(61, 241, 241, 241))
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child:TextButton(
                onPressed: ()=>{},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/apple-icon.png',width: 30,),
                    SizedBox(width: 20,),
                    Text('Sign in with Apple',style: TextStyle(color: Colors.white),),
                  ],
                ),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(61, 241, 241, 241))
              ),),
            ),
            
          ],
        ),
      )
    );
  }
}