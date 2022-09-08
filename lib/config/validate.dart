String? validateEmail(String? value) {
  if(value!.trim().isEmpty) {
    return "Email cannot be empty";
  } else if (!value.contains("@")){
    return "Email is incorrect";
  } else {
    return null;
  }
}

String? validateName(String? value) {
  if(value!.trim().isEmpty) {
    return "Name cannot be empty";
  } else if (value.length < 3){
    return "Name is too short";
  } else {
    return null;
  }
}

String? validateMessage(String? value) {
  if(value!.trim().isEmpty) {
    return "Message cannot be empty";
  } else if (value.length < 3){
    return "Message is too short";
  } else {
    return null;
  }
}