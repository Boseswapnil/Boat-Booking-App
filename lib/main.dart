import 'package:boat_booking/AssamTravelServicePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boat Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BoatBookingScreen(),
    );
  }
}

class BoatBookingScreen extends StatefulWidget {
  const BoatBookingScreen({super.key});

  @override
  _BoatBookingScreenState createState() => _BoatBookingScreenState();
}

class _BoatBookingScreenState extends State<BoatBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boarding point'),
        backgroundColor: Colors.blue, // Set the background color to blue
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // White icon for contrast
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white), // White icon for contrast
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Showing available boats',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildBoatCard(
              'Assam Travel Service',
              'Trip start by 7:10 AM from Hills & journey ends by around 1:00 AM.',
              '1,500/Adult',
              40,
              'assets/images/boat1.jpg', // Pass the image path
            ),
            _buildBoatCard(
              'Assam Travel Service',
              'Trip start by 7:10 AM from Hills & journey ends by around 1:00 AM.',
              '1,500/Adult',
              40,
              'assets/images/boat2.jpg', // Different image for each card
            ),
            _buildBoatCard(
              'Assam Travel Service',
              'Trip start by 7:10 AM from Hills & journey ends by around 1:00 AM.',
              '1,500/Adult',
              40,
              'assets/images/boat3.jpg',
            ),
            // Add more cards with different images
          ],
        ),
      ),
    );
  }

  Widget _buildBoatCard(
    String title,
    String description,
    String price,
    int seats,
    String imagePath, // New parameter for the image path
  ) {
    return InkWell(
      onTap: () {
        // Navigate to AssamTravelServicePage with the image path
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssamTravelServicePage(imagePath: imagePath),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias, // Ensure the image is clipped to the card's border
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Background image
            Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Card content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.person),
                            const SizedBox(width: 4),
                            Text('$seats seats'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
