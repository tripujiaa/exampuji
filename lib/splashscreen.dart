import 'package:flutter/material.dart';
import 'package:ulangan/registration.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
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
            Positioned(
              top: 350,
              left: 105,
              child: Image.asset(
                'assets/img/org.png', // Ganti dengan path gambar Anda
                width: 200,
                height: 150,
              ),
            ),
            Positioned(
              top: 550,
              left: 130,
              child: Text(
                'Gets things with TODs',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 570,
              left: 105,
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                textAlign: TextAlign.center,
              ),
              width: 203,
              height: 120,
            ),
            Positioned(
              bottom: 85,
              left: 20,
              width: 380,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Registrasi()),
                  );
                  // Tindakan saat tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(80, 194, 201, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ) // Warna latar belakang tombol
                    ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Warna teks tombol
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
