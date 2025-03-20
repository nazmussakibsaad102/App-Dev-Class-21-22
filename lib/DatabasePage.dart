import 'package:flutter/material.dart';

class Databasepage extends StatefulWidget {
  const Databasepage({super.key});

  @override
  State<Databasepage> createState() => _DatabasepageState();
}

class _DatabasepageState extends State<Databasepage> {
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
                itemCount: 10,
                  itemBuilder: (context, index){
                    return Text("Student Name");
                  }
              ),
            )
          ],
        ),
      ),

    );
  }
}
