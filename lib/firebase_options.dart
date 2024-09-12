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
    apiKey: 'AIzaSyCDw6SmGmm6rdFvxpXC58ze3-EgOv19AkI',
    appId: '1:697045521747:web:b67cb350a96b8cdbf23da6',
    messagingSenderId: '697045521747',
    projectId: 'chat-app-c22de',
    authDomain: 'chat-app-c22de.firebaseapp.com',
    storageBucket: 'chat-app-c22de.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDdpWwobv4ab35rPWrRqdq8b2GurrwcFU',
    appId: '1:697045521747:android:c235337399a878def23da6',
    messagingSenderId: '697045521747',
    projectId: 'chat-app-c22de',
    storageBucket: 'chat-app-c22de.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVvhmjYimBoH8VC77oNL7JT4Ma4km5SG4',
    appId: '1:697045521747:ios:bef39845e81a33b2f23da6',
    messagingSenderId: '697045521747',
    projectId: 'chat-app-c22de',
    storageBucket: 'chat-app-c22de.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVvhmjYimBoH8VC77oNL7JT4Ma4km5SG4',
    appId: '1:697045521747:ios:bef39845e81a33b2f23da6',
    messagingSenderId: '697045521747',
    projectId: 'chat-app-c22de',
    storageBucket: 'chat-app-c22de.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCDw6SmGmm6rdFvxpXC58ze3-EgOv19AkI',
    appId: '1:697045521747:web:cbee4ffe8fe7ee46f23da6',
    messagingSenderId: '697045521747',
    projectId: 'chat-app-c22de',
    authDomain: 'chat-app-c22de.firebaseapp.com',
    storageBucket: 'chat-app-c22de.appspot.com',
  );
}
