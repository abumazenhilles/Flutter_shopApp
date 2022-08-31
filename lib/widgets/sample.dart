// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
// // initializatio the firebase app

//   Future<FirebaseApp> _initializefirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();
//     return firebaseApp;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _initializefirebase(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return LoginScreen();
//           }
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   // login method
//   static Future<User?> loginUsingEmailPassword(
//       {required String email,
//       required String password,
//       required BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;
//     try {
//       UserCredential userCredential = await auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       user = userCredential.user;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == "user-not-found") {
//         print("No user found");
//       }
//     }

//     return user;
//   }

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController controller
//     return Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "my App title",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Text(
//               "Login to you App",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 44.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 44,
//             ),
//             const TextField(
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                   hintText: "User Email",
//                   prefixIcon: Icon(
//                     Icons.mail,
//                     color: Colors.black,
//                   )),
//             ),
//             const SizedBox(
//               height: 26,
//             ),
//             const TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                   hintText: "User Password",
//                   prefixIcon: Icon(
//                     Icons.lock,
//                     color: Colors.black,
//                   )),
//             ),
//             const SizedBox(
//               height: 12,
//             ),
//             const Text(
//               "Don't remember your Password?",
//               style: TextStyle(color: Colors.blue),
//             ),
//             const SizedBox(
//               height: 88,
//             ),
//             Container(
//               width: double.infinity,
//               child: RawMaterialButton(
//                   fillColor: Color(0xFF0069FE),
//                   elevation: 0.0,
//                   padding: EdgeInsets.symmetric(vertical: 10.0),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12.0)),
//                   onPressed: () {},
//                   child: const Text("Login",
//                       style: TextStyle(color: Colors.white, fontSize: 18.0))),
//             ),
//           ],
//         ));
//   }
// }
