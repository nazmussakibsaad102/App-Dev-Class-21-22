import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TeachersPage extends StatelessWidget {

  ///List = [.....]
  ///Map = {"key" : "value"]
  ///list(map(string,string))
  //Map
   List<Map<String,String>> students = [
    {"name" : "Al Amin" , "best_friend" : "Ashraful", "Semester" : "7"},
    {"name" : "Alif Abdullah" , "best_friend" : "Arafat", "Semester" : "7"},
    {"name" : "Asraful Islam" , "best_friend" : "Mehedi", "Semester" : "7"},
    {"name" : "Arafat" , "best_friend" : "Raisa", "Semester" : "7"},
    {"name" : "Mehedi" , "best_friend" : "Sara", "Semester" : "7"},
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Text("This is our very dumb students."),
            SizedBox(height: 50,),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index){
                    final student = students[index];
                    return StudentCard(
                      name: student["name"]!,// "AL Amin"
                      bestFriend: student["best_friend"]!,
                      semester: student["Semester"]!,
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {

  String name;
  String bestFriend;
  String semester;

  StudentCard({
    required this.name,
    required this.bestFriend,
    required this.semester
});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 50,
          child: Row(
            children: [
              Image.asset("assets/images/dollar.PNG"),
              SizedBox(width: 20,),
              Text("$name"),
              SizedBox(width: 20,),
              Text("$bestFriend"),
              SizedBox(width: 20,),
              Text("$semester"),
            ],
          ),
        ),
      ),
    );
  }


}
