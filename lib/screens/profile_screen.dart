import 'package:flutter/material.dart';
import 'package:portfolio_mehbob/screens/contact_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final bold = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Profile Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => ContactScreen()));
            },
            icon: Icon(Icons.contact_page),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/placeholder.jpg"),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Text("Name: ", style: bold),
                        title: Text("Mehbob Ul Hassan"),
                      ),
                      Divider(),
                      ListTile(
                        leading: Text("Email: ", style: bold),
                        title: Text("imehbobulhasan@gmail.com"),
                      ),
                      Divider(),
                      ListTile(
                        leading: Text("Education: ", style: bold),
                        title: Text("BSCS"),
                        subtitle: Text(
                          "National University of Modern Languages",
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Text("Bio: ", style: bold),
                        title: Text(
                          "CS student passionate about building mobile apps with Flutter. I love turning ideas into smooth, real-world experiences",
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: Text("Skills: ", style: bold),
                        title: Text(
                          "▫Dart            ▫Flutter \n▫Riverpod    ▫Firebase \n▫Git&GitHub▫APIs",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
