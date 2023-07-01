import 'package:flutter/material.dart';
import 'package:uas/kategori.dart';
import 'package:uas/login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/david.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              "David Bate'e",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 22),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(55, 0, 140, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'No. Handphone',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 2, // Jarak penyebaran bayangan
                        blurRadius: 5, // Jarak pelebaran bayangan
                        offset: Offset(
                            0, 3), // Posisi bayangan relatif terhadap container
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '08111313234324532',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(55, 0, 140, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'NIK ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 2, // Jarak penyebaran bayangan
                        blurRadius: 5, // Jarak pelebaran bayangan
                        offset: Offset(
                            0, 3), // Posisi bayangan relatif terhadap container
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '21367835482394612',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(55, 0, 140, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Kewarganegaraan',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 2, // Jarak penyebaran bayangan
                        blurRadius: 5, // Jarak pelebaran bayangan
                        offset: Offset(
                            0, 3), // Posisi bayangan relatif terhadap container
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jerman',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(55, 0, 140, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'E-mail',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: 400,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 2, // Jarak penyebaran bayangan
                        blurRadius: 5, // Jarak pelebaran bayangan
                        offset: Offset(
                            0, 3), // Posisi bayangan relatif terhadap container
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'David Batee@gmail .com',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 32),
            Container(
              width: 250,
              height: 50.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Warna bayangan
                    spreadRadius: 2, // Jarak penyebaran bayangan
                    blurRadius: 5, // Jarak pelebaran bayangan
                    offset: Offset(
                        0, 3), // Posisi bayangan relatif terhadap container
                  ),
                ],
                shape: BoxShape.rectangle,
                color: Color.fromARGB(255, 236, 217, 6), // Warna latar belakang
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors
                      .transparent, // Menghilangkan latar belakang ElevatedButton
                  elevation: 0, // Menghilangkan bayangan
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Mengatur sudut melengkung
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color.fromRGBO(95, 165, 180, 1), // Warna latar belakang navbar
        child: Container(
          height: 5, // Tinggi navbar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorSearchPage()));
                },
                icon: Icon(Icons.home),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => JadwalDokter()));
                },
                icon: Icon(Icons.calendar_month),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  // Aksi tombol ketiga
                },
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
