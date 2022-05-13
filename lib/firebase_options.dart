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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC7M_Yl4DIgK6HINqnAPz-TQt33iTLmE8s',
    appId: '1:287678089961:web:74dd3f7f6f4c0e19663e78',
    messagingSenderId: '287678089961',
    projectId: 'pedulicovid-9a2c1',
    authDomain: 'pedulicovid-9a2c1.firebaseapp.com',
    storageBucket: 'pedulicovid-9a2c1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwKvWc65O1q9hiAuxTA_zZx-UOJffNCu0',
    appId: '1:287678089961:android:5d5ff39fccff8f73663e78',
    messagingSenderId: '287678089961',
    projectId: 'pedulicovid-9a2c1',
    storageBucket: 'pedulicovid-9a2c1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUq4fskTXmGagZVSiLCrfRiLjKzE0mZ0c',
    appId: '1:287678089961:ios:afd7fbcc7285b3ce663e78',
    messagingSenderId: '287678089961',
    projectId: 'pedulicovid-9a2c1',
    storageBucket: 'pedulicovid-9a2c1.appspot.com',
    iosClientId: '287678089961-tsnnfrbdv2mb5m2b2qg91is3scqirnau.apps.googleusercontent.com',
    iosBundleId: 'com.example.peduliCovid',
  );
}