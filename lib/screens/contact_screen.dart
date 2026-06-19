import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final bold = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  Future<void> openLink(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  Future<void> phoneCall() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: "+923049992747");

    await launchUrl(phoneUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Me"), ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Text("Phone No: ", style: bold),
                title: Text("+923049992747"),
              ),
              Divider(),
              ListTile(
                leading: Text("Email: ", style: bold),
                title: Text("imehbobulhasan@gmail.com"),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      openLink("https://www.linkedin.com/in/mehbobulhassan/");
                    },
                    icon: Image.asset('assets/images/ldin.png'),
                  ),

                  IconButton(
                    onPressed: () {
                      openLink('https://github.com/mehbobulhassan');
                    },
                    icon: Image.asset('assets/images/github.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: phoneCall,
        child: Icon(Icons.call),
      ),
      
    );
  }
}
