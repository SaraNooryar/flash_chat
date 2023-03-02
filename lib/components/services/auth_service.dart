import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthService{
  final _firebaseAuth  = FirebaseAuth.instance;
  User? get getCurrentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
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