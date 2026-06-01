import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1 Starter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snake Facts!'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sabah Pit Viper, AKA Sabah Bamboo Pit Viper',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Scientific Name: Trimeresurus sabahi fucatus',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Trimeresurus_sabahi_fucatus%2C_Sabah_pit_viper_%28female%29_-_Yong_Waterfall_National_Park_%2850770215012%29.jpg/500px-Trimeresurus_sabahi_fucatus%2C_Sabah_pit_viper_%28female%29_-_Yong_Waterfall_National_Park_%2850770215012%29.jpg',
              height: 250,
            ),
            const SizedBox(height: 20),
            Text(
              'Trimeresurus sabahi, commonly known as the Sabah pit viper'
                  ' or Sabah bamboo pitviper, is a venomous pitviper '
                  'species. If defined narrowly, it is endemic to the island of '
                  'Borneo. If defined more broadly, it consists of five '
                  'subspecies found in Southeast Asia.'
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Other Snakes'),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snake Facts!'),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      backgroundColor: Colors.green[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Other snakes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://static.scientificamerican.com/dam/m/502204c8f8e0d0c5/original/pit-viper-snake.jpg?m=1739395349.928&crop=4%3A3%2Csmart&w=1200', // Placeholder image
              height: 130,
            ),
            const SizedBox(height: 20),
            const Text(
              'Blue Insularis: Venomous pit viper hailing from the lesser Sunda Islands',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Eastern_Milksnake_%28Lampropeltis_triangulum%291.jpg/500px-Eastern_Milksnake_%28Lampropeltis_triangulum%291.jpg', // Placeholder image
                height: 130,
              ),
            const Text(
              'Common Milk Snake: Harmless cloubrid found in North America',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
              const SizedBox(height: 20),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/e/e7/Leptotyphlops_carlae.jpg', // Placeholder image
                height: 130,
              ),
              const SizedBox(height: 20),
            const Text(
              'Barbados Threadsnake: This is an adult of the species, barely bigger than a quarter',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to Screen 1
              },
              child: const Text('Back to Sabah Pit Viper'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

