import 'package:flutter/material.dart';

class TeachersPage extends StatelessWidget {
  final List<Map<String, String>> students = [
    {"name": "John Doe", "id": "202401", "designation": "Student"},
    {"name": "Alice Smith", "id": "202402", "designation": "Student"},
    {"name": "Bob Johnson", "id": "202403", "designation": "Student"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ID Cards")),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return IDCard(
            name: student["name"]!,
            id: student["id"]!,
            designation: student["designation"]!,
          );
        },
      ),
    );
  }
}

class IDCard extends StatelessWidget {
  final String name, id, designation;

  const IDCard({
    required this.name,
    required this.id,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/stones.PNG",
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: $name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text("ID: $id", style: TextStyle(fontSize: 14)),
                Text("Designation: $designation", style: TextStyle(fontSize: 14, color: Colors.grey[700])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}