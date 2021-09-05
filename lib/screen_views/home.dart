import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/app_colors.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';
import 'package:iqra_global_school/screen_views/courses/courses.dart';
import 'package:iqra_global_school/screen_views/home/homepage.dart';
import 'package:iqra_global_school/screen_views/profile.dart';
import 'package:iqra_global_school/screen_views/time_tble/timtable.dart';

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
    TimeTable(),
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
            fixedColor: AppColors.kOrangeClr,
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
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        subTitle: "Home",
      ),
      body: Container(
          margin: EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 16.0,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/icons/logo.jpg",
                          height: 80,
                          width: 80,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MUHAMMAD JAWED AHMAD",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "MOUNT1671 | CLASS-IX | C",
                            //  style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                  left: 15.0,
                ),
                child: MainText(
                  txt: "Explore",
                ),
              ),
              HomePage(),
            ],
          )),
    );
  }
}
