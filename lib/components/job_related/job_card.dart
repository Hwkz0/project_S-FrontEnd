import 'package:flutter/material.dart';
import 'package:project_s_frontend/pages/job_feed_related/job_details_page.dart';

class JobCardHeader extends StatelessWidget {
  final String rating;
  final bool skillObtained;

  const JobCardHeader({required this.rating, this.skillObtained = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.7),
            ),
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                const SizedBox(width: 5),
                Text(
                  rating,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
            Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: skillObtained ? Color(0xFF197C97).withOpacity(0.9) : Colors.grey.withOpacity(0.5),
              border: Border.all(
              color: skillObtained ? Colors.red.withOpacity(0.9) : Colors.grey.withOpacity(0.5),
              width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
              Icons.school,
              size: 24,
              color: Colors.white,
              ),
            ),
            ),
        ],
      ),
    );
  }
}

class JobCardContent extends StatelessWidget {
  final String title;
  final String location;
  final String price;

  const JobCardContent({
    required this.title,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.attach_money,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Text(
                            price + "/ora",
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
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
    );
  }
}

class JobCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String location;
  final String price;
  final String jobDescription;
  final String requiredOutfit;
  final bool skillObtained;

  const JobCard({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.location,
    required this.price,
    required this.jobDescription,
    required this.requiredOutfit,
    this.skillObtained = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JobDetailsPage(
              jobTitle: title,
              jobDescription: jobDescription,
              requiredOutfit: requiredOutfit,
              imageBackground: imageUrl,
              price: price,
              rating: rating,
            ),
          ),
        );
      },
      // TODO: replace horizontal dismiss direction with dissmiss in any direction, maybe also angling during dismiss
      child: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.horizontal,
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            print('Swiped from left to right');
          } else {
            print('Swiped from right to left');
          }
        },
        child: Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          ),
          child: Stack( // Added Stack
            alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.70,
              child: Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.darken,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(15),
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    JobCardHeader(rating: rating, skillObtained: skillObtained),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color(0xFF1F194A).withOpacity(0.9),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          JobCardContent(
                            title: title,
                            location: location,
                            price: price,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 20, // Adjust position as needed
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              Positioned(
                right: 20, // Adjust position as needed
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white.withOpacity(0.7),
                ),
              ), // Add closing parenthesis and semicolon
          ],
          ),
        ),
      ),
    );
  }
}
