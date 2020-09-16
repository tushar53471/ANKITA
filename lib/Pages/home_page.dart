import 'package:flutter/material.dart';
import '../change_name_card.dart';
import '../drawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Ankita"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child:
                ChangeNameCard(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      drawer: Mydrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
