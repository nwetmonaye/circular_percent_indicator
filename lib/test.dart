import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Test extends StatelessWidget {
  const Test({Key? key});

  @override
  Widget build(BuildContext context) {
    double progressValue = 60;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Point')),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              child: ClipOval(
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      showLabels: false,
                      showTicks: false,
                      startAngle: 270,
                      endAngle: 270,
                      radiusFactor: 0.8,
                      axisLineStyle: const AxisLineStyle(
                        thickness: 0.1,
                        color: Color.fromARGB(30, 9, 14, 15),
                        thicknessUnit: GaugeSizeUnit.factor,
                        cornerStyle: CornerStyle.startCurve,
                      ),
                      pointers: <GaugePointer>[
                        RangePointer(
                          value: progressValue,
                          width: 0.1,
                          sizeUnit: GaugeSizeUnit.factor,
                          enableAnimation: true,
                          animationDuration: 100,
                          animationType: AnimationType.linear,
                          cornerStyle: CornerStyle.startCurve,
                          color: const Color.fromARGB(255, 167, 146, 145),
                        ),
                        MarkerPointer(
                          value: progressValue,
                          markerType: MarkerType.circle,
                          enableAnimation: true,
                          animationDuration: 100,
                          animationType: AnimationType.linear,
                          color: const Color.fromARGB(255, 167, 146, 145),
                          markerWidth: 20, // Increase marker width
                          markerHeight: 20, // Increase marker height
                        )
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          positionFactor: 0.05,
                          widget: Container(
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
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 20.0,
                                  ),
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
                                        color:
                                            Color.fromARGB(255, 223, 219, 219),
                                      ),
                                    ),
                                    Text(
                                      '2,580,000',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      ' points to unlock',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromARGB(255, 223, 219, 219),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Diamond Membership!',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 223, 219, 219),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
