import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:carbongecko/introduction_animation/introduction_animation_screen.dart';
import 'package:carbongecko/dashboard/dashboard_home_screen.dart';

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
      home: const IntroductionAnimationScreen(),
      // home: FitnessAppHomeScreen(),
    );
  }
}

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         backgroundColor: Colors.black,
//       ),
//       body: Column(
//         children: [
//           // This Flexible widget contains your title and pie chart, and takes up 2/3 of the screen.
//           Flexible(
//             flex: 2, // 2/3 of the space
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Text(
//                     'Today',
//                     style: TextStyle(
//                       // Make sure you're using the correct font name here
//                       fontSize: 34,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 24), // For spacing
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white, // Background color of the container
//                     borderRadius: BorderRadius.circular(20), // Adjust the value as required for the rounded corners.
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 5,
//                         blurRadius: 7,
//                         offset: Offset(0, 3), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   padding: const EdgeInsets.all(16.0),
//                   height: 220,
//                   width: 220,
//                   child: PieChart(
//                     PieChartData(
//                       // Your PieChartData settings here.
//                       sectionsSpace: 0,
//                       centerSpaceRadius: 40,
//                       startDegreeOffset: -90,
//                       sections: _getSections(), // The actual sections data
//                       // Define behavior and style of the chart here
//                       // Other PieChartData properties...
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // This takes up 1/3 of the screen space, and it's empty for now. You can later add other widgets in this part.
//           Flexible(
//             flex: 1, // 1/3 of the space
//             child: Container(), // Add other widgets here based on your design
//           ),
//         ],
//       ),
//     );
//   }
//
//   // This function will return the 'sections' of the pie chart
//   List<PieChartSectionData> _getSections() {
//     // For demonstration, I'm using arbitrary values for each section
//     // You should update these with your actual data
//
//     return List.generate(4, (i) { // Assuming you have 4 sections
//       final isTouched = false;
//       final double fontSize = isTouched ? 25 : 16;
//       final double radius = isTouched ? 60 : 50;
//
//       switch (i) {
//         case 0:
//           return PieChartSectionData(
//             color: Colors.red, // Define the appropriate color for this section
//             value: 25, // Replace with actual data value
//             title: '25%', // Replace with actual data label
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         case 1:
//           return PieChartSectionData(
//             color: Colors.blue, // Define the appropriate color for this section
//             value: 25, // Replace with actual data value
//             title: '25%', // Replace with actual data label
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         case 2:
//           return PieChartSectionData(
//             color: Colors.blue, // Define the appropriate color for this section
//             value: 25, // Replace with actual data value
//             title: '25%', // Replace with actual data label
//             radius: radius,
//             titleStyle: TextStyle(
//                 fontSize: fontSize,
//                 fontWeight: FontWeight.bold,
//                 color: const Color(0xffffffff)),
//           );
//         default:
//           return PieChartSectionData();
//       }
//     });
//   }
// }

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
