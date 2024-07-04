import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SwitchListTile(
              title: Text('Receive Notifications'),
              value: false,
              onChanged: (newValue) {},
            ),
            Divider(),
            Text(
              'Account Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Change Password'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Manage Address'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Payment Methods'),
              onTap: () {},
            ),
            Divider(),
            Text(
              'App Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: false,
                onChanged: (newValue) {},
              ),
            ),
            ListTile(
              title: Text('Language'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
