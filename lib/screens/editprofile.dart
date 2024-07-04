import 'package:brewvana/screens/profile_page.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  String? _emailError;
  bool _isNameError = false;
  bool _isPasswordError = false;
  bool _isConfirmPasswordError = false;
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isPasswordMatchError = false;
  String? _phoneNumberError;

  bool _isEmailValid(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFA000).withOpacity(0.5),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(20.0),
            color: Color(0xFFFFA000).withOpacity(0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0),
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 50.0,
                    color: Color(0xFFFFA000).withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    errorText:
                        _isNameError ? 'Please fill out this field' : null,
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _isNameError = value.isEmpty;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    errorText: _emailError,
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _emailError = !_isEmailValid(value)
                          ? 'Please enter a valid email'
                          : null;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    errorText: _phoneNumberError,
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    String pattern = r'^07\d{8}$';
                    RegExp regExp = RegExp(pattern);

                    if (regExp.hasMatch(value)) {
                      setState(() {
                        _phoneNumberError = null;
                      });
                    } else {
                      setState(() {
                        _phoneNumberError =
                            'Please enter a valid  phone number';
                      });
                    }
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    errorText:
                        _isPasswordError ? 'Please fill out this field' : null,
                    suffixIcon: IconButton(
                      icon: Icon(_isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _isPasswordError = value.isEmpty;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: !_isConfirmPasswordVisible,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    errorText: _isConfirmPasswordError
                        ? 'Please fill out this field'
                        : _isPasswordMatchError
                            ? 'Passwords do not match'
                            : null,
                    suffixIcon: IconButton(
                      icon: Icon(_isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isConfirmPasswordVisible =
                              !_isConfirmPasswordVisible;
                        });
                      },
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _isConfirmPasswordError = value.isEmpty;
                      _isPasswordMatchError = _passwordController.text != value;
                    });
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _emailError = _emailController.text.isEmpty
                          ? 'Please enter an email'
                          : !_isEmailValid(_emailController.text)
                              ? 'Please enter a valid email'
                              : null;
                      _isNameError = _nameController.text.isEmpty;
                      _isPasswordError = _passwordController.text.isEmpty;
                      _isConfirmPasswordError =
                          _confirmPasswordController.text.isEmpty;
                      _isPasswordMatchError = _passwordController.text !=
                          _confirmPasswordController.text;
                    });
                    if (_emailError == null &&
                        !_isNameError &&
                        !_isPasswordError &&
                        !_isConfirmPasswordError &&
                        !_isPasswordMatchError &&
                        _phoneNumberError == null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserProfilePage()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
