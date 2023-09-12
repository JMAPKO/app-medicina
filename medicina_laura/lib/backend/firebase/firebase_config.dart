import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC9zyd2thbz17Ncz80TObvhDNS417tEd1Y",
            authDomain: "pakuayb-aa257.firebaseapp.com",
            projectId: "pakuayb-aa257",
            storageBucket: "pakuayb-aa257.appspot.com",
            messagingSenderId: "53157600253",
            appId: "1:53157600253:web:19c54436e099bde231d794",
            measurementId: "G-SV7JP5RGP2"));
  } else {
    await Firebase.initializeApp();
  }
}
