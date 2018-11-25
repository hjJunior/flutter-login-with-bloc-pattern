import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
      handleData: (String email, EventSink<String> sink) {
        if (email.contains('@')) {
          sink.add(email);
        } else {
          sink.addError('Enter a valid email');
        }
      }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String password, EventSink<String> sink) {
        if (password.length > 3) {
          sink.add(password);
        } else {
          sink.addError('Enter must be at least 4 characters');
        }
      }
  );
}