import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/app_colors.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> with TickerProviderStateMixin {
  bool showFront = false;
  late TabController tabController;
  var _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =
        new TabController(initialIndex: _currentIndex, length: 6, vsync: this);
    //  cInd = widget.tabIndex;
    setState(() {
      tabController =
          new TabController(initialIndex: 0, length: 6, vsync: this);
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(subTitle: "Time Table",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            customTabs(),
          ],
        ),
      ),
    );
  }

  Widget customTabs() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
               indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(

                    width: 3.5,
                    color: AppColors.kOrangeClr,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 18.0)),
              labelColor: AppColors.kOrangeClr,
              controller: tabController,
              labelStyle:
                  TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              onTap: (index) {
                _currentIndex = index;
                setState(() {
                  //  tabControllers();
                  debugPrint('tab controller');
                });
              },
              tabs: <Widget>[
                Container(
                    height: 25,
                    child: Text(
                  'MONDAY',
                )),
                Container(height: 25, child: Text('TUESDAY')),
                Container(
                    height: 25,
                    child: Text(
                      'WEDNESDAY',
                    )),
                Container(
                    height: 25,
                    child: Text(
                      'THURSDAY',
                    )),
                Container(
                    height: 25,
                    child: Text(
                      'FRIDAY',
                    )),
                Container(
                    height: 25,
                    child: Text(
                      'SATURDAY',
                    )),
              ],
            ),
          ),
          Container(
            height: 580,
            color: Colors.white,
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                children: <Widget>[
                  Container(
                    child: Center(child: MainText(txt: 'No timetable to show!')),
                  ),
                  Container(
                    child: Center(child: MainText(txt: 'No timetable to show!')),
                  ),
                  Container(
                    child: Center(child: MainText(txt: 'No timetable to show!')),
                  ),
                  Container(
                    child: Center(child: MainText(txt: 'No timetable to show!')),
                  ),
                  Container(
                    child: Center(child: MainText(txt: 'No timetable to show!')),
                  ),
                  Container(
                    child: Center(child: MainText(txt: 'No timetable to show!')),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
