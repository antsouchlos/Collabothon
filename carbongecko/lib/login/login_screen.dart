import 'package:carbongecko/dashboard/dashboard_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the gecko green color
    const Color geckoGreen = Color(0xFF78E482);

    return MaterialApp(
      title: 'Carbon Gecko',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: geckoGreen,
      ),
      home: Scaffold(
        // Resizing the content to avoid bottom inset on Scaffold
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Using Expanded to let this part take the top 2/3rds of the screen.
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 150,
                      child: Center(
                        child: Image.asset(
                          'assets/geckoLogo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Carbon\n    Gecko',
                      style: GoogleFonts.rowdies(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Added padding here
              // Email input field.
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Outline color
                    ),
                    labelText: 'Email Address',
                    labelStyle: TextStyle(color: Colors.black), // Label text color
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)), // Hint text color
                  ),
                ),
              ),

// Password input field.
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black), // Outline color
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black), // Label text color
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)), // Hint text color
                  ),
                ),
              ),
              SizedBox(height: 100), // Added padding here
              // Button at the bottom
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity, // makes the container full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FitnessAppHomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // rounded edges
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
