import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(-8.166885, 113.7182629);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text('Artikel'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Color(0xFF1BBA66),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/7/79/Foto_oficial_do_presidente_Ernesto_Geisel_%28Crop%29_%283x4%29.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Prof. Eka Prasetya Nugraha M.p',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Guru besar IPB',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Praesent tristique vestibulum nunc, vitae tempus massa iaculis sed. '
                'Vivamus semper erat id dolor pulvinar, nec varius ipsum gravida.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Alamat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              // Tambahkan Expanded widget di sini
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition:
                    CameraPosition(target: _center, zoom: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
