import 'package:brewvana/screens/editprofile.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  final String _userName = "Name: Linus Korir";
  final String _userEmail = "linuskorir@gmail.com";
  final String _userPhone = "Phone: +1234567890";
  final String _userDOB = "Date of Birth: January 1, 1990";
  final String _userGender = "Gender: Male";
  final String _userBio = "Coffee enthusiast.";
  final String _profilePictureUrl = "profile.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _userName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    _userEmail,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    _userPhone,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    _userDOB,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    _userGender,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    _userBio,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1.0),
          ],
        ),
      ),
    );
  }
}
