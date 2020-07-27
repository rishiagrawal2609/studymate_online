import 'package:StudyMate/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  Future signInAnon() async {
    try {
      var result = await _auth.signInAnonymously();
      var user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Future registerWithEmailAndPassword(String email, String password) async {
  //try {
  //AuthResult result = await _auth.createUserWithEmailAndPassword(
  //  email: email, password: password);
  // FirebaseUser user = result.user;
  //return _userFromFirebaseUser(user);
  // } catch (e) {
  // print(toString());
  //return null;
  //}
  //}

  Future<FirebaseUser> registerWithEmailAndPassword(
      String email, String password) async {
    FirebaseUser userData;
    try {
      userData = (await _auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
    } catch (error) {
      print(error);
    }
    if (userData != null) {
      print(userData);
      return userData;
    }
    return null;
  }

  Future<FirebaseUser> signInWithEmailAndPassword(email, password) async {
    FirebaseUser userData;
    try {
      userData = (await _auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;
      //userData = (await _auth.signInWithEmailAndPassword(email: userName.toString(), password: userPassword.toString())).user;
    } catch (error) {
      print(error);
    }
    if (userData != null) {
      print(userData);
      return userData;
    }
    return null;
  }

  Future SignOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
