import 'package:flutter/material.dart';
import 'package:project_s_frontend/pages/job_feed_related/job_feed.dart';
import 'package:project_s_frontend/pages/qualifications_page.dart';
import 'package:project_s_frontend/pages/profile_page_related/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  final String currentPage;

  const BottomNavBar({required Key key, required this.currentPage}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static final List<Widget> _widgetOptions = <Widget>[
    JobFeed(),
    QualificationsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
      switch (index) {
        case 0:
          if (widget.currentPage != 'jobs') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => JobFeed()),
            );
          }
          break;
        case 1:
          if (widget.currentPage != 'qualifications') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => QualificationsPage()),
            );
          }
          break;
        case 2:
          if (widget.currentPage != 'profile') {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          }
          break;
    }
  }

//todo: implement as floating button

  @override
  Widget build(BuildContext context) {
    return Stack(
      // clipBehavior: Clip.none, // Important: Allow overflow for notch
      alignment: Alignment.bottomCenter,
      children: [
        Container(
      width: MediaQuery.of(context).size.width,
      height: 95,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.business_center),
          label: 'Joburi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Acasa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
        ],
        currentIndex: widget.currentPage == 'jobs' ? 0 : widget.currentPage == 'qualifications' ? 1 : widget.currentPage == 'profile' ? 2 : _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 30, 0, 255),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Color.fromARGB(255, 30, 0, 255)),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
      ),
      ),
    ),
    Positioned(
      left: _calculateIndicatorPosition(), // Dynamic calculation
      bottom: 20, // Example bottom offset
      child: Container(
      width: 50,
      height: 5,
      decoration: BoxDecoration(
        gradient: buildGradient(
          colors: [Colors.red, Color.fromARGB(255, 30, 0, 255)],
          stops: [-1.0, 1.0],
        ),
        borderRadius: BorderRadius.circular(5),
        ),
      ),
      
    ),
    
    ],

    );
    
  }

  LinearGradient buildGradient({
    required List<Color> colors,
    List<double>? stops, // Optional stops
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
  }) {
    return LinearGradient(
      colors: colors,
      stops: stops,
      begin: begin,
      end: end,
    );
  }


  double _calculateIndicatorPosition() {
    double indicatorWidth = 50; // Width of the indicator container
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = screenWidth / 3; // Assuming 3 items in the bottom navigation bar

    double currentPosition = widget.currentPage == 'jobs' ? 0.0 : widget.currentPage == 'qualifications' ? 1.0 : widget.currentPage == 'profile' ? 2.0 : _selectedIndex.toDouble(); // Calculate the current position based on the selected index or currentPage

    double indicatorPosition = currentPosition * itemWidth + (itemWidth - indicatorWidth) / 2; // Calculate the position of the indicator

    return indicatorPosition;
  }

}





class _NotchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
