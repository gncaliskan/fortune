// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

Future<String> getRandomMessage() async {
  // Get the Firestore instance
  final firestoreInstance = FirebaseFirestore.instance;
  Random random = new Random();
  int randomNumber = random.nextInt(200) + 1;
  // Get the document reference
  final documentReference = firestoreInstance
      .collection("messages")
      .where("message_id", isEqualTo: 1)
      .limit(1);
  // Get the document snapshot
  final documentSnapshot = await documentReference.get();
  // Return the document snapshot
  final document =
      documentSnapshot.docs.isNotEmpty ? documentSnapshot.docs.first : null;
  return document?.get("message");
}
