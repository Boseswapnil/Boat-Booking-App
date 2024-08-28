import 'package:flutter/material.dart';

class AssamTravelServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100], // Light blue background color
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue[100], // Light blue background for the top section
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Assam Travel Service',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('7:00 AM', style: TextStyle(fontSize: 16.0)),
                          Text('From', style: TextStyle(fontSize: 12.0)),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.swap_horiz, size: 30.0, color: Colors.blue),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('3:00 PM', style: TextStyle(fontSize: 16.0)),
                          Text('To', style: TextStyle(fontSize: 12.0)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Icon(Icons.people, color: Colors.black),
                      SizedBox(width: 8.0),
                      Text('2 Seats', style: TextStyle(fontSize: 16.0)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red[100], // Light red background for alert
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Your ticket information will be sent on this number',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '919112345689',
                    style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement edit functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[300],
                      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    ),
                    child: Text('Edit', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Passenger Details',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  _buildPassengerDetailInput(context, 'Passenger 1'),
                  SizedBox(height: 16.0),
                  _buildPassengerDetailInput(context, 'Passenger 2'),
                  SizedBox(height: 32.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement continue functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 16.0),
                        textStyle: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Text('Continue'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPassengerDetailInput(BuildContext context, String passengerTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          passengerTitle,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter Full Name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                items: ['Male', 'Female', 'Other']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  // Handle gender selection
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AssamTravelServicePage(),
  ));
}
