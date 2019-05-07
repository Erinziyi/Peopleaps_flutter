// TODO Implement this library.

import 'dart:async';

mixin login_Validators{

  // portal
  var portalValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (portal,sink){
        if (portal.contains('@')) {
          sink.add(portal);
        }else{
          sink.addError('Portal Id is not valid');
        }
      }
  );




  // email
  var emailValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (email,sink){
        if (email.contains('@')) {
          sink.add(email);
        }else{
          sink.addError('Email is not valid');
        }
      }
  );


  // password
  var passwordValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if (password.length> 8) {
          sink.add(password);
        }else{
          sink.addError('Password must be at least 8 characters');
        }
      }
  );


}