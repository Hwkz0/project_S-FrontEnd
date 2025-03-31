import 'package:flutter/material.dart';
import 'package:project_s_frontend/components/bottom_navbar.dart';
import 'package:project_s_frontend/components/appbar.dart';
import 'package:project_s_frontend/components/job_related/horizontal_scroll_menu.dart';
import 'package:project_s_frontend/components/job_related/job_card.dart';

class JobFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(titleText: "Joburi"),
      body: Column(
        children: [
          HorizontalScrollMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      JobCard(
                        imageUrl: 'assets/wallpaper/barista.jpg',
                        title: 'Barista',
                        rating: '5.0',
                        location: 'Marasti, Cluj-Napoca',
                        jobDescription:
                            'Ești pasionat de cafea? Iubești să creezi băuturi delicioase? Alătură-te echipei noastre ca barista! ',
                        requiredOutfit: 'Uniforma de lucru oferita de angajator',
                        price: '25',
                        skillObtained: true,
                      ),
                      JobCard(
                        imageUrl: 'assets/wallpaper/ospatar.jpg',
                        title: 'Ospatar',
                        rating: '4.5',
                        location: 'Manastur, Cluj-Napoca',
                        jobDescription:
                            'Dacă ești o persoană sociabilă, cu o atitudine pozitivă și dornică să învețe lucruri noi, te așteptăm în echipa noastră!',
                        requiredOutfit:
                            'Pantaloni stofa, camasa alba, barba si frizura bine îngrijită',
                        price: '20',
                      ),
                      JobCard(
                        imageUrl: 'assets/wallpaper/cosit.jpg',
                        title: 'Cosas',
                        rating: '3.2',
                        location: 'Hoia Baciu, Cluj-Napoca',
                        jobDescription:
                            'Cautam persoane responsabile, cu experiență în domeniu, pentru a se alătura echipei noastre.',
                        requiredOutfit: 'Uniforma de lucru oferita de angajator',
                        price: '50',
                        skillObtained: true,
                      ),
                      JobCard(
                        imageUrl: 'assets/wallpaper/sofer.jpg',
                        title: 'Sofer',
                        rating: '4.8',
                        location: 'Gheorgheni, Cluj-Napoca',
                        jobDescription:
                            'Cautam soferi cu experiență, pentru a se alătura echipei noastre. ',
                        requiredOutfit: 'Nu este necesara o uniforma de lucru',
                        price: '30',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomNavBar(
            key: Key('bottom_navbar_key'),
            currentPage: 'jobs',
          ),
        ],
      ),
    );
  }
}