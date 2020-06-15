import 'package:firebase_auth/firebase_auth.dart';
import 'package:registerloginpage/model/user.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on firebaseUser
  User _userFormFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFormFirebaseUser);
  }

  //sign in anonymous
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFormFirebaseUser(user);
    } catch(e) {
          print(e.toString());
          return null;
    }
  }

  //sign in with email and pass

  //register with email and pass

  //sign out

Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e){
      print(e.toString());
      return null;
    }
}
}