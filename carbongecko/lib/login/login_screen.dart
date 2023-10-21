import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the gecko green color
    const Color geckoGreen = Color(0xFF6CBB3C);

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
                flex: 2, // occupies 2/3rds of the space because total (2 + 1) = 3 and 2/3 are two parts
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
                      'Carbon Gecko',
                      style: GoogleFonts.acme(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              // Spacer will occupy the remaining space, pushing the fields and button to the end of the column.
              Spacer(),
              // Email input field.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                    hintText: 'Enter your email',
                  ),
                ),
              ),
              // Password input field.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: TextField(
                  obscureText: true,  // This will obscure text input for passwords.
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ),
              ),
              // Button at the bottom
              Builder(
                builder: (BuildContext context) { // This context is aware of the Navigator
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity, // makes the container full width
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const SecondScreen()),
                        // );
                      },
                      child: const Text(
                        'Start',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: geckoGreen,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // making corners completely square
                        ),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
