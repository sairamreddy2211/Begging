import 'package:flutter/material.dart';

class BeggingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help a Software Engineer!'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/avatar.jpeg'), // Add an image in your assets folder
                ),
                SizedBox(height: 20),
                Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hi, I\'m a 24-year-old software engineer working at some X company. '
                  'In a world where software engineers are slowly becoming extinct, I\'ve decided to pivot to a more sustainable business model - digital begging!\n\n'
                  'Yes, you read that right! After countless hours of coding, debugging, and surviving on coffee, I realized that begging is the ultimate path to riches. '
                  'Help me achieve my dreams of becoming a digital begging mogul. Your contribution will go towards important necessities like coffee, more coffee, and perhaps a fancy new coding chair.\n\n'
                  'So go ahead, click the button below and support a coder in need. Who knows, your donation might just be the key to the next big tech innovation (or at least a great cup of coffee)!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Show a modal dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Thank You!'),
                          
                          content: SingleChildScrollView(child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                 'Hey there! Thank you so much for considering a donation!\n\n'
                                'Your generosity means a lot. While you\'re here, why not dive into a couple of my latest creations?\n\n'
                                '- "Infinite Love" for those lost in the maze of romance,\n'
                                '- "Yelp Camp" for the wanderers at heart,\n\n'
                                '...and there\'s more where that came from!\n\n'
                                'Don\'t hesitate to throw in even a humble 1 Rs. Every bit helps!\n\n'
                                'Oh, and if you find yourself smitten with any of these, consider subscribing. Trust me, they\'re worth it!\n\n'
                                'Cheers, and thank you for supporting creativity!',
                                style: TextStyle(fontSize: 16),
                              ),
                SizedBox(height: 30), // Add more spacing if needed
                              ElevatedButton(
                  onPressed: () {},
                  child: Text('Donate Now'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                )
                            ],
                          ),
                        ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Donate Now'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 50), // Add more spacing if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
