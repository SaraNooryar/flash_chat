import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future createUserWithEmailAndPassword(

  {required String email,required String password}) async{
  return await   _firebaseAuth.
    createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
  Future signInWithEamilAndPassword(
      {required String email,required String password}) async {
    await _firebaseAuth.
    signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
Future<void> signOut() async{
await  _firebaseAuth.signOut();
  }
}