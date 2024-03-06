import 'package:ulangan/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(240, 244, 243, 100),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -20,
              left: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 225, 215, 50),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: -100,
              left: -20,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 225, 215, 50),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // Teks "Welcome"
                Center(
                  child: Text(
                    'Welcome to Onboard! ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Gambar di bagian tengah setelah teks

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: const Offset(-5.0, -30.0),
                      child: Image.asset(
                        'assets/img/fotoibu.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 50),
                // Kotak dengan latar belakang putih berisi tulisan "Enter your name"
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Email',
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Password',
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                GestureDetector(
                  onTap: () {
                    // Implementasi untuk forgot password
                  },
                  child: Text(
                    'Forgot Password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromRGBO(80, 194, 201, 100)),
                  ),
                ),

                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(85, 15, 80, 18),
                    backgroundColor: Color.fromRGBO(80, 194, 201, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: Size(380, 60), // Warna latar belakang tombol
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                    );
                    // Tindakan saat tombol ditekan
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700, // Warna teks tombol
                    ),
                  ),
                ),
                SizedBox(height: 10), // Jarak antara tombol dan teks
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Dont have an account ? ',
                      style: TextStyle(
                        color: Colors
                            .black, // Warna teks "Already have an account ?"
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Tindakan saat tombol "Sign In" ditekan
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.blue, // Warna teks "Sign In"
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
