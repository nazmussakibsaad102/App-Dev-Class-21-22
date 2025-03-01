import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                "assets/images/profile_image.PNG",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nazmus Sakib Saad",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Head of the Department",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Magura Polytechnic Institute",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 50,
                color: Colors.cyanAccent,
                child: Icon(Icons.video_call, size: 40,),
              ),
              Container(
                width: 150,
                height: 50,
                color: Colors.cyanAccent,
                child: Icon(Icons.message, size: 40,),
              ),

            ],
          )
        ],
      ),
    );
  }
}
