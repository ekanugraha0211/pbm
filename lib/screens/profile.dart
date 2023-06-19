// import 'dart:io';

// import 'package:cross_file/cross_file.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   File? _image;

//   Future<void> _getImage() async {
//     // final ImagePicker _picker = ImagePicker();
//     final XFile? image = await ImagePicker.pickImage(source: ImageSource.camera);

//     setState(() {
//       _image = image != null ? File(image.path) : null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: GestureDetector(
//               onTap: _getImage,
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.grey[300],
//                 ),
//                 child: _image != null
//                     ? ClipOval(
//                         child: Image.file(
//                           _image!,
//                           fit: BoxFit.cover,
//                         ),
//                       )
//                     : Icon(
//                         Icons.person,
//                         size: 80,
//                         color: Colors.grey[600],
//                       ),
//               ),
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Bayyintaro',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'bayyintaro@gmail.com',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.grey,
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             '081234567890',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'camera.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = 'Krisna Ganteng';
  String position = 'Manager';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          backgroundColor: Color(0xFF1BBA66),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 130,
                    backgroundImage: AssetImage('assets/images/profil.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    position,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => camera()));
                      setState(() {
                        name = 'Krisna Ganteng';
                        position = "Manager";
                      });
                    },
                    child: Text(
                      'Edit Profile',
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
