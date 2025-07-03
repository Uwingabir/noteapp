// File generated manually from google-services.json.
// ignore_for_file: type=lint

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDjlqV5bW565n1V2Y2fpPp7UY2RC2WaBUc',
    appId: '1:968862915683:web:fe1b268c1ce81394312c56',
    messagingSenderId: '968862915683',
    projectId: 'noteapp-32bba',
    authDomain: 'noteapp-32bba.firebaseapp.com',
    storageBucket: 'noteapp-32bba.appspot.com',
    measurementId: 'G-5ERGBL8XTH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVaVd2IAgj-6mgfOUntkyaa0qJU5tyQdo',
    appId: '1:968862915683:android:447d49ce589a089f312c56',
    messagingSenderId: '968862915683',
    projectId: 'noteapp-32bba',
    storageBucket: 'noteapp-32bba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR_IOS_API_KEY',
    appId: 'YOUR_IOS_APP_ID',
    messagingSenderId: '968862915683',
    projectId: 'noteapp-32bba',
    storageBucket: 'noteapp-32bba.appspot.com',
    iosBundleId: 'com.example.noteapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'YOUR_MACOS_API_KEY',
    appId: 'YOUR_MACOS_APP_ID',
    messagingSenderId: '968862915683',
    projectId: 'noteapp-32bba',
    storageBucket: 'noteapp-32bba.appspot.com',
    iosBundleId: 'com.example.noteapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDjlqV5bW565n1V2Y2fpPp7UY2RC2WaBUc',
    appId: '1:968862915683:web:a85c968dc2e2ab31312c56',
    messagingSenderId: '968862915683',
    projectId: 'noteapp-32bba',
    authDomain: 'noteapp-32bba.firebaseapp.com',
    storageBucket: 'noteapp-32bba.appspot.com',
    measurementId: 'G-SG47RHG2C9',
  );
}
