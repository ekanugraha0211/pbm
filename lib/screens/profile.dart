import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;

  Future<void> _getImage() async {
    // final ImagePicker _picker = ImagePicker();
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    // final XFile? image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image != null ? File(image.path) : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomRight,
            children: 
              [GestureDetector(
                onTap: _getImage,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                  ),
                  child: _image != null
                      ? ClipOval(
                          child: Image.file(
                            _image!,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.grey[600],
                        ),
                ),
              ),
              IconButton(
                  onPressed: _getImage,
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.grey[600],
                  ),
                ),
            ],
            ),
          
          ),

          SizedBox(height: 20),
          Text(
            'Bayyintaro',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'bayyintaro@gmail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '081234567890',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          
        ],
      ),
    );
  }
}
