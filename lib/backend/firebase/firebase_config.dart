import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAe9pgpvG4GyjnBhInPejAQXCjuE7amt6U",
            authDomain: "test-te0p30.firebaseapp.com",
            projectId: "test-te0p30",
            storageBucket: "test-te0p30.appspot.com",
            messagingSenderId: "502666026601",
            appId: "1:502666026601:web:ec3375a9cbca9769ab4cf8"));
  } else {
    await Firebase.initializeApp();
  }
}
