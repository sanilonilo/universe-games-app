import 'package:flutter/material.dart';

typedef void OnSubmitted();
typedef void OnSaved(String field,String value);
typedef dynamic Validate(String field,String? value);

class Input extends StatelessWidget{
  final String label;
  final String field; 
  final IconData? icon;
  final bool secure;
  final TextInputAction? action;
  final FocusNode? focusNode;
  final List<Validate> validators;
  final OnSaved onSaved;
  final OnSubmitted? onSubmitted; 

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        focusNode: focusNode,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: icon != null ? Icon(icon,size: 20,color: Colors.white,) : null,
          suffixIcon: secure ? GestureDetector(
            child: Icon(Icons.remove_red_eye,color: Colors.white38,size: 20,),
            onTap: (){
              print("Toggle");
            },
          ) : null
        ),
        style: const TextStyle(fontSize: 14),
        textInputAction: action ?? TextInputAction.send,
        onFieldSubmitted: (_){
          if(onSubmitted != null) onSubmitted!();
        },
        obscureText: secure,
        onSaved: (newValue) => onSaved(field,newValue ?? ''),
        validator: (value){
          dynamic validate;
          for(int i = 0; i < validators.length; i++){
            validate = validators[i](label,value);
          }
          return validate;
        },
      ),
    );
  }

  Input({
    required this.field,
    required this.label,
    this.icon,
    required this.secure,
    this.focusNode,
    this.onSubmitted,
    this.action,
    required this.onSaved,
    required this.validators,
  });
}