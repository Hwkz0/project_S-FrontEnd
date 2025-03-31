import 'package:flutter/material.dart';

//TODO: reformat as card layout 4 rows + map type with tabbar for different views (details, map, etc.)

class JobDetailsPage extends StatelessWidget {
  final String jobTitle;
  final String jobDescription;
  final String imageBackground;
  final String rating;
  final String requiredOutfit;
  final String price;

  const JobDetailsPage({Key? key, 
  required this.jobTitle, 
  required this.jobDescription, 
  required this.imageBackground, 
  required this.rating,
  required this.requiredOutfit,
  required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalii job'),
      ),
      body: Container(
        child: Column(
          children: [
            TopBanner(imageBackground: imageBackground, jobTitle: jobTitle, rating: rating),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle(titleText: 'Descriere job',),
                  ParagraphText(paragraph: jobDescription),
                  SizedBox(height: 20),
                  SectionTitle(titleText: 'Tinuta necesara',),
                  ParagraphText(paragraph: requiredOutfit),
                  SizedBox(height: 20),
                  SectionTitle(titleText: 'Data evenimentului',),
                  SizedBox(height: 10),
                  DateDisplay(),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: ApplyButton(price: price),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      

    );
  }
}

class DateDisplay extends StatelessWidget {
  const DateDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
            Expanded(
              child: Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '30 August 2024',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '10:00 - 18:00',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.12,
        child: FloatingActionButton(
          onPressed: () {
        // Add your code here
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                      '\$ ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      ),
                      Text(
                      price,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      ),
                      Text(
                      ' / ora',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF775CFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  'Aplica acum!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF1F1F1F),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        ),
            ),
      ),
    );
  }
}

class ParagraphText extends StatelessWidget {


  const ParagraphText({
    super.key,
    required this.paragraph,
  });

  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        paragraph,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String titleText;
  const SectionTitle({
    required this.titleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
    required this.imageBackground,
    required this.jobTitle,
    required this.rating,
  });

  final String imageBackground;
  final String jobTitle;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.3),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                rating,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}