import 'package:flutter/material.dart';
import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Bgimage(),
        SizedBox(height: 5),
        Text(
          myText,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter something",
                  labelText: "Name")),
        )
      ],
    );
  }
}
