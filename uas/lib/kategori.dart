import 'package:flutter/material.dart';
import 'package:uas/jadwal.dart';
import 'package:uas/profile.dart';

class DoctorSearchPage extends StatefulWidget {
  @override
  _DoctorSearchPageState createState() => _DoctorSearchPageState();
}

class _DoctorSearchPageState extends State<DoctorSearchPage> {
  void _clearSearchQuery() {
    setState(() {
      searchQuery = '';
    });
  }

  Widget _buildClearButton() {
    return IconButton(
      icon: Icon(Icons.clear),
      onPressed: _clearSearchQuery,
    );
  }

  List<Doctor> _filteredDoctors() {
    if (searchQuery.isEmpty) {
      return doctors;
    } else {
      return doctors
          .where((doctor) =>
              doctor.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
              doctor.specialty
                  .toLowerCase()
                  .contains(searchQuery.toLowerCase()))
          .toList();
    }
  }

  final List<Doctor> doctors = [
    Doctor(name: 'dr. John Doe Sp. JP', specialty: 'Kardiologi', rating: 4.5),
    Doctor(name: 'dr. Aran N H S.K.G', specialty: 'Dentist', rating: 4.4),
    Doctor(
        name: 'dr. Angel Christy N H Sp.OT',
        specialty: 'Orthopedi',
        rating: 4.7),
    Doctor(
        name: 'dr. Shani I Sp.PD-KGEH',
        specialty: 'Gastroenterologi',
        rating: 4.5),
    Doctor(name: 'dr. Cio H Sp.N', specialty: 'Neurolog', rating: 4.6),
    Doctor(name: 'dr. Zean N H Sp.P', specialty: 'Pulmonologi', rating: 4.5)
    // Add more doctors here
  ];

  String searchQuery = '';

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              padding: EdgeInsets.only(left: 16.0),
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/david.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 230, 0),
            child: Text(
              'Pilih Dokter Yang Anda',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 363, 0),
            child: Text(
              'Butuhkan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Cari dokter...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: searchQuery.isNotEmpty ? _buildClearButton() : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Jenis Spesialis',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                CategoryCard(
                  icon: Icons.favorite,
                  title: 'Kardiologi',
                ),
                CategoryCard(
                  icon: Icons.toc_outlined,
                  title: 'Gigi',
                ),
                CategoryCard(
                  icon: Icons.healing,
                  title: 'Orthopedi',
                ),
                CategoryCard(
                  icon: Icons.face,
                  title: 'Bedah Plastik',
                ),
                CategoryCard(
                  icon: Icons.child_care,
                  title: 'Pediatric',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Dokter Terkait',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JadwalDokter()));
              },
              child: ListView(
                children: [
                  ExpansionPanelList(
                    elevation: 1,
                    expandedHeaderPadding: EdgeInsets.all(0),
                    expansionCallback: (int panelIndex, bool isExpanded) {
                      setState(() {
                        doctors[panelIndex].isExpanded = !isExpanded;
                      });
                    },
                    children: _filteredDoctors().map((doctor) {
                      return ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(doctor.name),
                            subtitle: Text(doctor.specialty),
                          );
                        },
                        body: DoctorCard(
                          name: doctor.name,
                          specialty: doctor.specialty,
                          rating: doctor.rating,
                        ),
                        isExpanded: doctor.isExpanded,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color.fromRGBO(95, 165, 180, 1),
        child: Container(
          height: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JadwalDokter()));
                },
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
}

class Doctor {
  String name;
  String specialty;
  double rating;
  bool isExpanded;

  Doctor({
    required this.name,
    required this.specialty,
    required this.rating,
    this.isExpanded = false,
  });
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  CategoryCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40.0,
            color: Colors.blue,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;

  DoctorCard(
      {required this.name, required this.specialty, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.0,
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/doctor_image.jpg'),
            // Ganti dengan path gambar dokter
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  specialty,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
