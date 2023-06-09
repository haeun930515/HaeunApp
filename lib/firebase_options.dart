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
    apiKey: 'AIzaSyAhtguMxf0x6DOSkDn78zrXVZbsPW86-1c',
    appId: '1:910385464282:web:0180e66fe93b02793436e3',
    messagingSenderId: '910385464282',
    projectId: 'flutterhaeunapp',
    authDomain: 'flutterhaeunapp.firebaseapp.com',
    storageBucket: 'flutterhaeunapp.appspot.com',
    measurementId: 'G-HR2EVHH6D6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4Bv6WIiwpTFSv14VcRHTtsSaweR1Y9_k',
    appId: '1:910385464282:android:8c90f64ea198ff663436e3',
    messagingSenderId: '910385464282',
    projectId: 'flutterhaeunapp',
    storageBucket: 'flutterhaeunapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtXPbdPtnAOxoqRz8BVZTxMxhbdwKkfWA',
    appId: '1:910385464282:ios:d04fa957e206c61e3436e3',
    messagingSenderId: '910385464282',
    projectId: 'flutterhaeunapp',
    storageBucket: 'flutterhaeunapp.appspot.com',
    iosClientId: '910385464282-1h39nr3d9tb79g61sf7dkhpbke42jo5m.apps.googleusercontent.com',
    iosBundleId: 'com.example.haeunapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtXPbdPtnAOxoqRz8BVZTxMxhbdwKkfWA',
    appId: '1:910385464282:ios:d04fa957e206c61e3436e3',
    messagingSenderId: '910385464282',
    projectId: 'flutterhaeunapp',
    storageBucket: 'flutterhaeunapp.appspot.com',
    iosClientId: '910385464282-1h39nr3d9tb79g61sf7dkhpbke42jo5m.apps.googleusercontent.com',
    iosBundleId: 'com.example.haeunapp',
  );
}
