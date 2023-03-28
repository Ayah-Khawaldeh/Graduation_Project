import 'package:flutter/material.dart';

import 'package:project1/screens/home.dart';
import 'package:project1/screens/profile.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/settings.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class dashbord extends StatefulWidget {
  const dashbord({super.key});

  @override
  State<dashbord> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<dashbord> {
  double heating = 12;
  double fan = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCED0CC),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF9BB491),
                    ),
                  ),
                  const RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      color: Color(0xFF9BB491),
                      size: 10,
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    CircularPercentIndicator(
                      radius: 180,
                      lineWidth: 14,
                      percent: 0.75,
                      progressColor: Color(0xFF9BB491),
                      center: const Text(
                        '26\u00B0',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        'TEMPERATURE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _roundedButton(title: 'GENERAL', isActive: true),
                        _roundedButton(title: 'SERVICES'),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        color: Color(0xFFAEAEAE),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Color:Colors.indigo,
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'HEATING',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Slider(
                            activeColor: Color(0xFF9BB491),
                            inactiveColor: Color(0xFFCED0CC),
                            // thumbColor: Color(0xFF9BB491),
                            value: heating,
                            onChanged: (newHeating) {
                              setState(() => heating = newHeating);
                            },
                            max: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('0\u00B0'),
                                Text('15\u00B0'),
                                Text('30\u00B0'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        color: Color(0xFFAEAEAE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              'FAN SPEED',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Slider(
                            activeColor: Color(0xFF9BB491),
                            inactiveColor: Color(0xFFCED0CC),
                            value: fan,
                            onChanged: (newFan) {
                              setState(() => fan = newFan);
                            },
                            max: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('LOW'),
                                Text('MID'),
                                Text('HIGH'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _fan(title: 'FAN 1', isActive: true),
                        _fan(title: 'FAN 2', isActive: true),
                        _fan(title: 'FAN 3'),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fan({
    required String title,
    bool isActive = false,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isActive ? Color(0xFF9BB491) : Color(0xFFAEAEAE),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.black87 : Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _roundedButton({
    required String title,
    bool isActive = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 23,
        horizontal: 32,
      ),
      decoration: BoxDecoration(
        // color: isActive ? Color(0xFF9BB491) : Colors.transparent,
        color: isActive ? Color(0xFF9BB491) : Colors.transparent,

        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Color(0xFF9BB491)),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.black : Color.fromARGB(255, 88, 80, 80),
        ),
      ),
    );
  }
}
