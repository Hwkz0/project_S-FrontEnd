import 'package:flutter/material.dart';
import 'package:project_s_frontend/components/bottom_navbar.dart';
import 'package:project_s_frontend/components/profile_related/profile_card.dart';
import 'package:project_s_frontend/components/profile_related/skills_bar.dart';
import 'package:project_s_frontend/components/profile_related/stats_bar.dart';
import 'package:project_s_frontend/components/profile_related/profile_buttons.dart';
import 'package:project_s_frontend/components/appbar.dart';
import 'package:project_s_frontend/components/profile_related/contact_details_card.dart';
import 'package:project_s_frontend/components/profile_related/past_jobs_card.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(titleText: "Profilul meu",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileCard(
              name: 'Jane Doe',
              bio: 'Studenta',
              imagePath: 'assets/wallpaper/person.jpg',
            ),
            ContactDetailsCard(email: 'jane_doe@gmail.com', phone: '0457214347'),
            StatsBar(totalEarnings: '532',jobsCompleted: '14',),
            Container(
              child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          'Abilitati',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SkillsBar(),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          'Ultimele job-uri',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                      PastJobsCard(jobTitle: 'Ospatar', company: 'Pub X', duration: '4'),
                      PastJobsCard(jobTitle: 'Barman', company: 'Bachus', duration: '2'),
                      PastJobsCard(jobTitle: 'Vanzator', company: 'Kaufland', duration: '8'),
                                  Container(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                        // Add your onTap logic here
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 40,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                    ],
                  ),
                ),
              ],
              ),
            ),
            SizedBox(height: 15),
            ProfileButtons(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(
        key: Key('bottom_navbar_key'),
        currentPage: 'profile',
      ),
    );
  }
}
