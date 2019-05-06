// TODO Implement this library.

import 'dart:async';

mixin login_Validators{


  // email
  var emailValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (email,sink){
        if (email.contains("@")) {
          sink.add(email);
        }else{
          sink.addError("Email is not valid");
        }
      }
  );


  // password
  var passwordValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if (password.length>4) {
          sink.add(password);
        }else{
          sink.addError("Password length should be greater than 4 chars.");
        }
      }
  );


}