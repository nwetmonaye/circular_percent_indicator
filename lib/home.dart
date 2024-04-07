import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Point')),
      ),
      body: Column(
        children: [
          Center(
            child: ClipOval(
              child: CircularPercentIndicator(
                fillColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 234, 232, 232),
                radius: 120.0,
                lineWidth: 15.0,
                percent: 60 / 100,
                center: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 167, 146, 145),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'GOLD MEMBER',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '10,000,000',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        width: 150.0,
                        height: 2.0,
                        color: Colors.white, // Color of the line
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Earn ',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 223, 219, 219)),
                          ),
                          Text(
                            '2,580,000',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          Text(
                            ' points to unlock',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 223, 219, 219)),
                          ),
                        ],
                      ),
                      const Text(
                        'Diamond Membership!',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 223, 219, 219)),
                      ),
                    ],
                  ),
                ),
                progressColor: const Color.fromARGB(255, 167, 146, 145),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 229, 220, 220),
              borderRadius:
                  BorderRadius.circular(5.0), // Optional: for rounded corners
            ),
            child: const Text(
              'SDN00dsf4566',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
