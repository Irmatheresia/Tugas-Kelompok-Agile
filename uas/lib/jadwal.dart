import 'package:flutter/material.dart';
import 'package:uas/kategori.dart';
import 'package:uas/profile.dart';
import 'package:table_calendar/table_calendar.dart';

class JadwalDokter extends StatefulWidget {
  const JadwalDokter({Key? key}) : super(key: key);

  @override
  State<JadwalDokter> createState() => _JadwalDokterState();
}

class _JadwalDokterState extends State<JadwalDokter> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add your action here
            },
          ),
        ],
      ),
      body: content(),
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
                onPressed: () {},
                icon: Icon(Icons.calendar_month),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
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

  Widget content() {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(left: 23),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://palopopos.fajar.co.id/wp-content/uploads/2022/05/seksolog-kondang-dr-boyke-dian-nugraha-spog-mars-foto-tangk-99.jpg'),
                  // Ganti dengan path gambar dokter
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr. John Doe",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(height: 4.0),
                      Text(
                        ("Kardiologi"),
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            margin: EdgeInsets.only(left: 20, right: 300),
            child: Text(
              "Pilih jam kedatangan",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        Container(
          width: 450,
          height: 265,
          child: TableCalendar(
            locale: "en_US",
            rowHeight: 30,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2018, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            onDaySelected: _onDaySelected,
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, right: 425),
              child: Text(
                'Pagi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle button 1 press
                  },
                  child: Text('08:00'),
                ),
                SizedBox(width: 10.0),
                TextButton(
                  onPressed: () {
                    // Handle button 2 press
                  },
                  child: Text('10:00'),
                ),
                SizedBox(width: 10.0),
                TextButton(
                  onPressed: () {
                    // Handle button 3 press
                  },
                  child: Text('11:00'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, right: 425),
              child: Text(
                'Siang',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle button 1 press
                  },
                  child: Text('13:00'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    // Handle button 2 press
                  },
                  child: Text('15:00'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    // Handle button 3 press
                  },
                  child: Text('16:00'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, right: 410),
              child: Text(
                'Malam',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            // SizedBox(
            //   height: 15,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle button 1 press
                  },
                  child: Text('19:00'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    // Handle button 2 press
                  },
                  child: Text('20:00'),
                ),
                SizedBox(width: 16.0),
                TextButton(
                  onPressed: () {
                    // Handle button 3 press
                  },
                  child: Text('21:00'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 32),
        Container(
          width: 400,
          height: 50.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            shape: BoxShape.rectangle,
            color: Color.fromRGBO(95, 165, 180, 1),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () {
              // Implementasi fungsi tombol di sini
            },
            child: Text(
              'Ambil Antrean',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
