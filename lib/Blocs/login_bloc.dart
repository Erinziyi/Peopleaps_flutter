import 'dart:async';
import 'login_validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with login_Validators implements BaseBloc{

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //ask controller

  Function(String)get emailChanged => _emailController.sink.add;
  Function(String)get passwordChanged => _passwordController.sink.add;

  //Another way
  // StreamSink<String> get emailChanged => _emailController.sink;
  // StreamSink<String> get passwordChanged => _passwordController.sink;


  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password => _passwordController.stream.transform(passwordValidator);

//  rxdart combine two page

  Stream<bool> get sumbitCheck => Observable.combineLatest2(email, password, (e,p)=> true);

  StreamTransformer<String, String> get emailValidator => null;
  StreamTransformer<String, String> get passwordValidator => null;

  submit(){
    print("xyx");

  }

  /*
       *  Below is an async function which uses Repository class
       *  to hit a login API and gets the result in a variable
       *  isUserLoginSuccessful[true/false]. and then Add the result
       *  into the sink.
       *  now whenever something is added to the sink, a callback is given to
       *  the stream linked to that Sink, which is managed by the framework itself
       *
       */


  @override
  void dispose() {
    // TODO: implement dispose
    _emailController?.close();
    _passwordController?.close();
  }

}


abstract class BaseBloc{
  void dispose();

}
