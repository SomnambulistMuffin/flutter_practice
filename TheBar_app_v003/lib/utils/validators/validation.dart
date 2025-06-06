
class TValidatorclass {
  static String? validateEmail(String? value){
    if (value==null||value.isEmpty) {
      return 'Email is required';
    }
    // regular expression for email validation
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if(!emailRegExp.hasMatch(value)){
    return 'Invalid email address.';

  }
  return null;
  }

  static String? validatePassword(String? value){
    if (value == null || value.isEmpty){
      return 'Password is required';
    }

    //check for minimun password length
    if(value.length < 8){
      return 'Password must be 8 characters long';
    }

    //check for uppercase letters 
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    //check for numbers
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain atleast one number.';
    
    }

    //check for special characters
    if(!value.contains(RegExp(r'[!?£$%^&*()<>?":#@|{}]'))){
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){

  
    if (value == null|| value.isEmpty) {
      return 'Phone number is required';
      
    }
    //regular expression for phone number validation 10 digit south african numbers
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format. please enter 10 digit number';
    }
    return null;
  }
}