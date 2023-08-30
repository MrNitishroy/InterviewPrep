// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDR7ZdVrFzccM1COW3sMZfeN_dNK1GmMkE',
    appId: '1:963095380393:web:8ea20018dced83849284b8',
    messagingSenderId: '963095380393',
    projectId: 'prepinter-fe440',
    authDomain: 'prepinter-fe440.firebaseapp.com',
    storageBucket: 'prepinter-fe440.appspot.com',
    measurementId: 'G-LTDZT0SEJ1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYWY_R_S_7gbDVrujbOJ48E5KpG5gsq7o',
    appId: '1:963095380393:android:08c9d8e44564af9e9284b8',
    messagingSenderId: '963095380393',
    projectId: 'prepinter-fe440',
    storageBucket: 'prepinter-fe440.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3dxNYVtnqWRSFT7uwBaV_8Xn0ADMMx4U',
    appId: '1:963095380393:ios:1803c00be450be919284b8',
    messagingSenderId: '963095380393',
    projectId: 'prepinter-fe440',
    storageBucket: 'prepinter-fe440.appspot.com',
    iosClientId: '963095380393-n61ih3q50h1n4h2hsh4lb9dto7npfngg.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatgpt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3dxNYVtnqWRSFT7uwBaV_8Xn0ADMMx4U',
    appId: '1:963095380393:ios:9a229f02d2341e219284b8',
    messagingSenderId: '963095380393',
    projectId: 'prepinter-fe440',
    storageBucket: 'prepinter-fe440.appspot.com',
    iosClientId: '963095380393-d5fubgfel96l7d0166ioma5v6s9f80st.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatgpt.RunnerTests',
  );
}