import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondScreen()),
                        );
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

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // This Flexible widget contains your title and pie chart, and takes up 2/3 of the screen.
          Flexible(
            flex: 2, // 2/3 of the space
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Today',
                    style: TextStyle(
                      // Make sure you're using the correct font name here
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 24), // For spacing
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(20), // Adjust the value as required for the rounded corners.
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16.0),
                  height: 220,
                  width: 220,
                  child: PieChart(
                    PieChartData(
                      // Your PieChartData settings here.
                      sectionsSpace: 0,
                      centerSpaceRadius: 40,
                      startDegreeOffset: -90,
                      sections: _getSections(), // The actual sections data
                      // Define behavior and style of the chart here
                      // Other PieChartData properties...
                    ),
                  ),
                ),
              ],
            ),
          ),
          // This takes up 1/3 of the screen space, and it's empty for now. You can later add other widgets in this part.
          Flexible(
            flex: 1, // 1/3 of the space
            child: Container(), // Add other widgets here based on your design
          ),
        ],
      ),
    );
  }

  // This function will return the 'sections' of the pie chart
  List<PieChartSectionData> _getSections() {
    // For demonstration, I'm using arbitrary values for each section
    // You should update these with your actual data

    return List.generate(4, (i) { // Assuming you have 4 sections
      final isTouched = false;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.red, // Define the appropriate color for this section
            value: 25, // Replace with actual data value
            title: '25%', // Replace with actual data label
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.blue, // Define the appropriate color for this section
            value: 25, // Replace with actual data value
            title: '25%', // Replace with actual data label
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.blue, // Define the appropriate color for this section
            value: 25, // Replace with actual data value
            title: '25%', // Replace with actual data label
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          return PieChartSectionData();
      }
    });
  }
}
