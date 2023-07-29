class FormValidators{
  dynamic requiredFieldValidator(String field,String? value){
    if(value == null || value.isEmpty) return "$field is required";
    return null;
  }

  dynamic emailValidator(String field,String? value){
    if(value == null || value.isEmpty) return "$field is invalid";
    return null;
  }

  dynamic passwordValidator(String field,String? value){
    if(value == null || value.isEmpty) return "$field is invalid";
    return null;
  }
}