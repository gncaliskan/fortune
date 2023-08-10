import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDxyncbK8iRFlz4brQ-WD5g0ejoySy-1ok",
            authDomain: "fortune-c52ea.firebaseapp.com",
            projectId: "fortune-c52ea",
            storageBucket: "fortune-c52ea.appspot.com",
            messagingSenderId: "938412959318",
            appId: "1:938412959318:web:57de1cf84a0e58be9f3df7",
            measurementId: "G-K237PGKKVW"));
  } else {
    await Firebase.initializeApp();
  }
}
