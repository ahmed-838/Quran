import 'package:flutter/material.dart';

class SheikhPage extends StatelessWidget {
  const SheikhPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of Sheikh names
    final List<String> sheikhNames = [
      'الشيخ عبد الباسط',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('اختيار القارئ'),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/background_image.jpg', // Replace with your background image path
              fit: BoxFit.cover,
            ),
          ),
          // Sheikh buttons
          ListView.builder(
            itemCount: sheikhNames.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0), // Adjust padding as needed
                child: SizedBox(
                  width: double.infinity, // Make the button take full width
                  height: 100, // Increase the height of the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the Quran list page, passing the selected Sheikh's name
                      Navigator.pushNamed(context, '/quranList',
                          arguments: sheikhNames[index]);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Rounded corners
                      ),
                    ),
                    child: Text(
                      sheikhNames[index],
                      style: const TextStyle(fontSize: 24), // Increase font size
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
