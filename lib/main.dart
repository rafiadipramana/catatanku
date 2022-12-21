import 'package:catatanku/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CatatanKu',
      home: AuthGate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// theme: ThemeData(),
//       initialRoute:
//           FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/profile',
//       routes: {
//         '/sign-in': (context) {
//           return SignInScreen(
//             providers: [EmailAuthProvider()],
//             actions: [
//               AuthStateChangeAction<SignedIn>((context, state) {
//                 Navigator.pushReplacementNamed(context, '/profile');
//               }),
//             ],
//           );
//         },
//         '/profile': (context) {
//           return ProfileScreen(
//             providers: [EmailAuthProvider()],
//             actions: [
//               SignedOutAction((context) {
//                 Navigator.pushReplacementNamed(context, '/sign-in');
//               }),
//             ],
//           );
//         },
//       },