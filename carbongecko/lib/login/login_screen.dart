import 'package:carbongecko/dashboard/dashboard_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();

  bool isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        isKeyboardVisible = visible;
        if (!visible) {
          // Scroll to the top when the keyboard is dismissed
          _scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color geckoGreen = Color(0xFF8DDD8D);

    return MaterialApp(
      title: 'Carbon Gecko',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: geckoGreen,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Using Expanded to let this part take the top 2/3rds of the screen.
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50), // Add top padding here
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: isKeyboardVisible ? 100 : 150,
                              child: Center(
                                child: Image.asset(
                                  'assets/geckoLogo.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Carbon\n    Gecko\n\n\n\nSign up:',
                              style: GoogleFonts.rowdies(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // Wrap the content inside a Form
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    labelText: 'Email Address',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintText: 'Enter your email',
                                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                    ),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintText: 'Enter your password',
                                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Button at the bottom
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FitnessAppHomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Create account',
                    style: TextStyle(fontSize: 20),
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
