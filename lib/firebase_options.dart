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
    apiKey: 'AIzaSyDulfPW2mjKkdBee6sLuaHBAMwY6tp6YCY',
    appId: '1:39040146637:web:fcf3840652394e52a5dd84',
    messagingSenderId: '39040146637',
    projectId: 'petani-kita-eee10',
    authDomain: 'petani-kita-eee10.firebaseapp.com',
    storageBucket: 'petani-kita-eee10.appspot.com',
    measurementId: 'G-6TF0G4Y525',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyz7hqz_HNq22D40BR7Ophovg2qU9GLK0',
    appId: '1:39040146637:android:1721b65d15530527a5dd84',
    messagingSenderId: '39040146637',
    projectId: 'petani-kita-eee10',
    storageBucket: 'petani-kita-eee10.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCgQ_pd8mHcPTmrSpmFU7dDjc8b86w8JDg',
    appId: '1:39040146637:ios:f08a2ae267955c30a5dd84',
    messagingSenderId: '39040146637',
    projectId: 'petani-kita-eee10',
    storageBucket: 'petani-kita-eee10.appspot.com',
    iosClientId: '39040146637-fv36jhf8kp6bg3lodtl5p6s5hoft5ndl.apps.googleusercontent.com',
    iosBundleId: 'com.example.petaniKita',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCgQ_pd8mHcPTmrSpmFU7dDjc8b86w8JDg',
    appId: '1:39040146637:ios:f08a2ae267955c30a5dd84',
    messagingSenderId: '39040146637',
    projectId: 'petani-kita-eee10',
    storageBucket: 'petani-kita-eee10.appspot.com',
    iosClientId: '39040146637-fv36jhf8kp6bg3lodtl5p6s5hoft5ndl.apps.googleusercontent.com',
    iosBundleId: 'com.example.petaniKita',
  );
}