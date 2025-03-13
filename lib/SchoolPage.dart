import 'package:flutter/material.dart';
import 'package:my_profile/TeachersPage.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('School'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("This is School Page."),
          SizedBox(
            height: 24,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TeachersPage()));
              },
              child: Text("Click Me"),
            ),
          ),
        ],
      ),
    );
  }
}
