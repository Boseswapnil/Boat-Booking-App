import 'package:flutter/material.dart';
import 'package:your_package_name/passenger.dart';  // Make sure to import the passenger.dart file

class AssamTravelServicePage extends StatelessWidget {
  final String imagePath;

  AssamTravelServicePage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the image at the top
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'This hotel features air-conditioned cabins, plush seating, and an onboard dining area serving delicious local cuisine.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Wed, Jun 20 - 2 Passengers',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Amenities',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  ListTile(
                    leading: Icon(Icons.cleaning_services),
                    title: Text('Clean Restrooms'),
                  ),
                  ListTile(
                    leading: Icon(Icons.chair),
                    title: Text('Comfortable Sitting arrangements'),
                  ),
                  ListTile(
                    leading: Icon(Icons.restaurant),
                    title: Text('Onboarding Dining'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Safety Features',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  ListTile(
                    title: Text('Live jackets provided to all passengers.'),
                  ),
                  ListTile(
                    title: Text('Emergency medical kit onboard.'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Special notes',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text('Please arrive 30 minutes before departure.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user),
                    title: Text('Carry a valid ID for verification.'),
                  ),
                  SizedBox(height: 32.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to PassengerPage when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PassengerPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 16.0),
                        textStyle: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('Go to passenger details'),
                    ),
                  ),
                  SizedBox(height: 32.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
