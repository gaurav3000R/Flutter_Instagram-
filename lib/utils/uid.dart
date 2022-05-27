import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';


  Future<String> inputData() async {
    final  user = FirebaseAuth.instance.currentUser!;
    final String uid = user.uid.toString();
    return uid;
  }
