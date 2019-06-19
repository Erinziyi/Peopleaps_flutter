import 'package:flutter/material.dart';

class Modules {
  String title;
  String level;
  String content;

  Modules(
      {this.title, this.level,  this.content});
}

List getLessons() {
  return [
    Modules(
        title: "What is PEOPLEAPS?",
        level: "Intermidiate",
        content:
        "Let’s admit this. Majority of us are clueless on what’s next for employees after training. Too many paperwork, too many employees to keep track of in terms of what they have completed and also too clueless in what they need for future skills. It is also hard to keep track of feedback from both HOD as well as trainers in terms of feedback on employee’s potential before and after training. With PEOPLEAPS we introduce a creative way to resolve all those problems by digitalizing the entire process with the usage of mobile app and a web platform – The result? Hassle free and convenient training management for every level of organization."),
  ];
}
