import 'package:flutter/material.dart';

class Databasepage extends StatefulWidget {
  const Databasepage({super.key});

  @override
  State<Databasepage> createState() => _DatabasepageState();
}

class _DatabasepageState extends State<Databasepage> {

  List<Map<String,String>> _students = [
    {"student" : "Ashraful"},
    {"student" : "Al Amin"},
    {"student" : "Alif"},
    {"student" : "Arafat"},
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Our Students"),),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Student Name",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                itemCount: _students.length,
                  itemBuilder: (context, index){
                    return Text("Student Name : ${_students[index]["student"]}");
                  }
              ),
            )
          ],
        ),
      ),

    );
  }
}
