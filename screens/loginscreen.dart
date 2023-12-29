import 'package:bisa/firestore_dataUser.dart';
import 'package:bisa/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool isLogin = true;

  void _submitForm() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    try {
      if (isLogin) {
        await _auth.signInWithEmailAndPassword(
          email: _email.text,
          password: _password.text,
        );
      } else {
        await _auth.createUserWithEmailAndPassword(
          email: _email.text,
          password: _password.text,
        );
        Firestore_Datasource().CreateUser(_email.text);
      }
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(index: 0),
        ),
      );
    } on FirebaseAuthException catch (error) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).clearSnackBars();
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message ?? 'Error: ${error.code}'),
        ),
      );
    }
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  } //disposable buat login

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wallpaperlogin.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  (isLogin) ? 'Login' : 'Register',
                  style: GoogleFonts.kdamThmorPro(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@')) {
                        return 'Please enter valid Email';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, // Remove border lines
                      ),
                    ),
                    style: const TextStyle(color: Colors.black), // Changed text color to black
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _password,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter valid password';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, // Remove border lines
                      ),
                    ),
                    style: const TextStyle(color: Colors.black), // Changed text color to black
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (isLogin)
                          ? 'Do not have an account yet?'
                          : 'Already have an account?',
                      style: const TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = !isLogin;
                        });
                      },
                      child: Text(
                        (isLogin) ? 'Register' : 'Login',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 285,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    child: Text(
                      (isLogin) ? 'Login' : 'Register',
                      style: const TextStyle(color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
