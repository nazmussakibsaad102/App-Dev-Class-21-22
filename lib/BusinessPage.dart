import 'package:flutter/material.dart';
import 'package:my_profile/VideoPage.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

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
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const VideoPage()),
              );
            }, child: Text("Click me")),
          ),

        ],
      ),
    );
  }
}
