import 'package:flutter/material.dart';
import 'package:uas/create.dart';
import 'package:uas/kategori.dart';

// import 'package:flutter_application_1/profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 850,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background2.png'), // Ganti dengan path atau URL gambar Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 80)),
            Text(
              "Selamat Datang",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'Di',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Text(
                'Medical',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Text(
                'Center',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(height: 20.0),
            Container(
              width: 400.0,
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 285),
                    child: Text('Lupa Password?'),
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: 450,
                    height: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(102, 204, 227, 1),
                          Color.fromRGBO(102, 71, 224, 1),
                        ],
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .transparent, // Menghilangkan latar belakang ElevatedButton
                        elevation: 0, // Menghilangkan bayangan
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorSearchPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatePage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 285),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 100, left: 100),
                    child: Text(
                      'Atau',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                        ),
                        onPressed: () {
                          // Aksi ketika tombol ditekan
                        },
                        child: Row(
                          children: [
                            Icon(
                                Icons.g_mobiledata), // Icon Facebook (misalnya)
                            SizedBox(width: 8.0),
                            Text('Google'), // Teks tombol Facebook
                          ],
                        ),
                      ),
                      SizedBox(
                          width:
                              16.0), // Jarak antara tombol Google dan Facebook
                      TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 2, 34, 88)),
                        ),
                        onPressed: () {
                          // Aksi ketika tombol ditekan
                        },
                        child: Row(
                          children: [
                            Icon(Icons.facebook), // Icon Facebook (misalnya)
                            SizedBox(width: 8.0),
                            Text('Facebook'), // Teks tombol Facebook
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
