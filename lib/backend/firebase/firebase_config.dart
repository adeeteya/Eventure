import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCPCiDGylmfbrj-35jYKvzRW5bxIpYUxI8",
            authDomain: "flutter-flux-yx8nrn.firebaseapp.com",
            projectId: "flutter-flux-yx8nrn",
            storageBucket: "flutter-flux-yx8nrn.firebasestorage.app",
            messagingSenderId: "540720843562",
            appId: "1:540720843562:web:1803a00cb6b8ec028eac53"));
  } else {
    await Firebase.initializeApp();
  }
}
