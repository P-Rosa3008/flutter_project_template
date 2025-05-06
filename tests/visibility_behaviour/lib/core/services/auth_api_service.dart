import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthApiService {
  Future<UserCredential> signInUserWithEmailAndPassword(
      String emailAddress, String password);
  Future<UserCredential> createUserWithEmailAndPassword(
      String emailAdress, String password);
}

class AuthApiService extends IAuthApiService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  bool isUserSignedIn() {
    return currentUser != null;
  }

  Future<UserCredential> signInUserWithEmailAndPassword(
      String emailAddress, String password) async {
    try {
      return await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      throw (e);
    }
  }

  Future<UserCredential> createUserWithEmailAndPassword(
      String emailAddress, String password) async {
    try {
      return await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      throw (e);
    } catch (e) {
      throw (e);
    }
  }
}
