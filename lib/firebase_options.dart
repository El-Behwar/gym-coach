// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD-0bP8IKACVYbCwyF7d7CzZw0aXA_pHto',
    appId: '1:312801662009:web:4ecf8bc893f34d657a29e8',
    messagingSenderId: '312801662009',
    projectId: 'gym-coach-sheko2',
    authDomain: 'gym-coach-sheko2.firebaseapp.com',
    storageBucket: 'gym-coach-sheko2.appspot.com',
    measurementId: 'G-SPLP3C8JF0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLs1oEDG7IC-IahH4VYxJpyxQDFVU8j0U',
    appId: '1:312801662009:android:1b2593a357e382ba7a29e8',
    messagingSenderId: '312801662009',
    projectId: 'gym-coach-sheko2',
    storageBucket: 'gym-coach-sheko2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBS7KyQNSGOscWFv7GRAVsvQ6koInQu7A4',
    appId: '1:312801662009:ios:db24b27085955cf47a29e8',
    messagingSenderId: '312801662009',
    projectId: 'gym-coach-sheko2',
    storageBucket: 'gym-coach-sheko2.appspot.com',
    iosBundleId: 'com.example.gymCoach',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBS7KyQNSGOscWFv7GRAVsvQ6koInQu7A4',
    appId: '1:312801662009:ios:db24b27085955cf47a29e8',
    messagingSenderId: '312801662009',
    projectId: 'gym-coach-sheko2',
    storageBucket: 'gym-coach-sheko2.appspot.com',
    iosBundleId: 'com.example.gymCoach',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD-0bP8IKACVYbCwyF7d7CzZw0aXA_pHto',
    appId: '1:312801662009:web:640d9f0cce0fe7387a29e8',
    messagingSenderId: '312801662009',
    projectId: 'gym-coach-sheko2',
    authDomain: 'gym-coach-sheko2.firebaseapp.com',
    storageBucket: 'gym-coach-sheko2.appspot.com',
    measurementId: 'G-0L0JTZX4TP',
  );
}
