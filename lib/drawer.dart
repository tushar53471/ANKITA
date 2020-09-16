import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Tushar"),
            accountEmail: Text("Pateltushar4088@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdna.artstation.com/p/assets/images/images/011/478/158/large/gaurav-kumar-bpr-render.jpg?1529787790"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("pateltushar53471@gmail.com"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
