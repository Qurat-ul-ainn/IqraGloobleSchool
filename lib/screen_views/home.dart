import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/app_colors.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';
import 'package:iqra_global_school/screen_views/courses/courses.dart';
import 'package:iqra_global_school/screen_views/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
   Home(),
    Courses(),

    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
              text: 'Iqra Globle School\n',
              style: TextStyle(color: Colors.black, fontSize: 20.0),
              children: <TextSpan>[
                TextSpan(
                    text: 'Home',
                    style: TextStyle(color: Colors.black, fontSize: 14.0)),
              ],
            ),
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: ImageIcon(
              AssetImage(
                "assets/icons/logo.png",
              ),
              size: 45,
              color: Color(0xFF3A5A98),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    size: 20.0,
                    color: AppColors.kOrangeClr,
                  ),
                )),
          ],
        ),
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
    ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        shape: CircularNotchedRectangle(),
        //  notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 1.0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
             currentIndex: _selectedIndex, //New
             onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book,
                ),
                label: 'Courses',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time_outlined,
                ),
                label: 'Time Table',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box_rounded,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,right: 10.0,left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainText(txt: "Explore",),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(choices.length, (index) {
              return SelectCard(choice: choices[index],);
            },),
          ),
        ],
      ),
    );
  }
}


//Hom icon title
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final AssetImage icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'Home Work',
    icon: AssetImage(
      "assets/icons/house.png",
    ),
  ),
  const Choice(
    title: 'Online Class',
    icon: AssetImage(
      "assets/icons/onlineclass.png",
    ),
  ),
  const Choice(
    title: 'Gallery',
    icon: AssetImage(
      "assets/icons/gallery.png",
    ),
  ),
  const Choice(
    title: 'Events',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Holidays',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Notifications',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Payments',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Complains',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Attendance',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Academic \nDownloads',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Results',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const Choice(
    title: 'Exam Schedule',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
];

class SelectCard extends StatelessWidget {
  const SelectCard({required this.choice}) : super();
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageIcon(
            choice.icon,
            size: 45,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            choice.title,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
