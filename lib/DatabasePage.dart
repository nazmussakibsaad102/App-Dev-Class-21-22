import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabasePage extends StatefulWidget {
  @override
  _DatabasePageState createState() => _DatabasePageState();
}

class _DatabasePageState extends State<DatabasePage> {
  late Database _database;
  List<Map<String, dynamic>> _students = []; // What is inside table is here too
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'students.db'),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE students(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)'
        );
      },
      version: 1,
    );
    _fetchStudents();
  }

  Future<void> _addStudent(String name) async {
    await _database.insert('students', {'name': name});
    _fetchStudents();
  }

  Future<void> _fetchStudents() async {
    final students = await _database.query('students');
    setState(() {
      _students = students; //is because of this
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SQLite Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Student Name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      _addStudent(_controller.text);
                      _controller.clear();
                    }
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _students.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_students[index]['name']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}