import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EMOtFirebaseUser {
  EMOtFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

EMOtFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EMOtFirebaseUser> eMOtFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EMOtFirebaseUser>((user) => currentUser = EMOtFirebaseUser(user));
