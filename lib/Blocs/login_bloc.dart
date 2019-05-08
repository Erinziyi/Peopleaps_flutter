import 'dart:async';
import 'login_validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with login_Validators{

  final BehaviorSubject _portalController = BehaviorSubject<String>();
  final BehaviorSubject _emailController = BehaviorSubject<String>();
  final BehaviorSubject _passwordController = BehaviorSubject<String>();


  // add data to stream
  Function(String)get portalChanged => _portalController.sink.add;
  Function(String)get emailChanged => _emailController.sink.add;
  Function(String)get passwordChanged => _passwordController.sink.add;


  // retrieve data from stream
  Stream<String> get portal => _portalController.stream.transform(portalValidator);
  Stream<String> get email => _emailController.stream.transform(emailValidator);
  Stream<String> get password => _passwordController.stream.transform(passwordValidator);
  Stream<bool> get sumbitCheck => Observable.combineLatest3(portal,email, password, (pi,e,p)=> true);




  void submit(){
    final validPortal=  _portalController.value;
    final validEmail=  _emailController.value;
    final validPassword=  _passwordController.value;

    print('Portal is $validPortal');
    print('Email is $validEmail');
    print('Password is $validPassword');

  }




  @override
  void dispose() {
    // TODO: implement dispose
    _portalController?.close();
    _emailController?.close();
    _passwordController?.close();
  }

}


abstract class BaseBloc{
  void dispose();

}
