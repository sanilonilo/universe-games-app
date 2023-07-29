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
      height: MediaQuery.of(context).size.height / 2.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: ListView(
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
          ],
        ),
      )
    );
  }
}