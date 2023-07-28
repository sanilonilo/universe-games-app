import 'package:flutter/material.dart';

typedef void OnSubmitted();
typedef void OnSaved(String field,String value);
typedef dynamic Validate(String field,String? value);

class Input extends StatelessWidget{
  final String label;
  final String field; 
  final bool secure;
  final TextInputAction? action;
  final FocusNode? focusNode;
  final List<Validate> validators;
  final OnSaved onSaved;
  final OnSubmitted? onSubmitted; 

  @override
  Widget build(BuildContext context){
    return Container(
      child: TextFormField(
        focusNode: focusNode,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(labelText: label),
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
    required this.secure,
    this.focusNode,
    this.onSubmitted,
    this.action,
    required this.onSaved,
    required this.validators,
  });
}