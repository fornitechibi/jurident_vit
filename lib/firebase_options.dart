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
    apiKey: 'AIzaSyBE8m0hGJohBmu1t1wNyhCl32LDOGwc2U4',
    appId: '1:324328563234:web:f9452d2e6418425652207b',
    messagingSenderId: '324328563234',
    projectId: 'jurident-ddb64',
    authDomain: 'jurident-ddb64.firebaseapp.com',
    storageBucket: 'jurident-ddb64.appspot.com',
    measurementId: 'G-Z3FSH50V67',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYjphwLD57kQ85gVbeFpEQOYaiWiu08SA',
    appId: '1:324328563234:android:60444f2d146cce9d52207b',
    messagingSenderId: '324328563234',
    projectId: 'jurident-ddb64',
    storageBucket: 'jurident-ddb64.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiC2NXnd4Kp53rk8va-fgVmrqibhNwTBY',
    appId: '1:324328563234:ios:833a51d9d7e609ee52207b',
    messagingSenderId: '324328563234',
    projectId: 'jurident-ddb64',
    storageBucket: 'jurident-ddb64.appspot.com',
    iosClientId: '324328563234-7d10opppkrnbvmh93gct7efp4qqi83vm.apps.googleusercontent.com',
    iosBundleId: 'com.example.juridentt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiC2NXnd4Kp53rk8va-fgVmrqibhNwTBY',
    appId: '1:324328563234:ios:80b1f0ba9cb946b852207b',
    messagingSenderId: '324328563234',
    projectId: 'jurident-ddb64',
    storageBucket: 'jurident-ddb64.appspot.com',
    iosClientId: '324328563234-4ubg1tcgilqjcv4ra03ohi39cq4q6bb7.apps.googleusercontent.com',
    iosBundleId: 'com.example.juridentt.RunnerTests',
  );
}