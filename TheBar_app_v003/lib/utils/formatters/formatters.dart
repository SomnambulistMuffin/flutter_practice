import 'package:intl/intl.dart';

class TFormatterclass {
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date); //customize date format 
  }
  
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_RSA',symbol: 'R').format(amount);
  }

  static String formatPhonenumber(String phonenumber){
    //assuming 10 digit south african numbers
    if (phonenumber.length == 10) {
      return '(${phonenumber.substring(0,3)}) ${phonenumber.substring(3,6)} ${phonenumber.substring(6)}';
    } else if (phonenumber.length == 11){
      return '(${phonenumber.substring(0,4)}) ${phonenumber.substring(4,7)} ${phonenumber.substring(7)}';
    }
    //add different logic for different formats to the phone number
    return phonenumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber){
    //remove non-digit chars from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extrsct Country code from digitsonly 
    String countryCode = '+${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);

    //add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i =0;
    while (i<digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode =='+27') {
        groupLength = 3;
      }

      int end = i +groupLength;
      formattedNumber.write(digitsOnly.substring(i,end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      i =end;
    }

  } 
}