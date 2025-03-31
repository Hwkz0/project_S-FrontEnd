          import 'package:flutter/material.dart';
          import 'package:project_s_frontend/pages/job_feed_related/job_feed.dart';
          import 'package:project_s_frontend/components/custom_button.dart';

          class IntroPage extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
              return Scaffold(
                body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/wallpaper/intro_screen.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20, left: 35, right: 35),
                          child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                            text: 'Descopera urmatorul tau job ',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                              text: 'FLEXIBIL!',
                                style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            ),
                          ),
                          ),
                        ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 40),
                                  child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'Bucura-te de flexibilitatea de a lucra ',
                                      style: const TextStyle(fontSize: 16, color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: '\noriunde',
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' si ',
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'oricand',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),
                                ),
                                SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                          CustomButton(
                            color: Colors.blue, // Add the required argument 'color' with the value of Colors.blue
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => JobFeed()),
                            );
                          },
                          text: 'Vezi locuri de munca!',
                            backgroundColor: Color(0xFF18667C), // Set the background color to #18667C
                          ),
                          ],
                          ),
                        ),
                        ),
                    ],
                  ),
                ),
              );
            }
          }