import 'package:flutter/material.dart';
import 'package:iqra_global_school/screen_views/home/accademic_downloads.dart';
import 'package:iqra_global_school/screen_views/home/exam_schedule.dart';
import 'package:iqra_global_school/screen_views/home/home_work.dart';
import 'package:iqra_global_school/screen_views/home/results.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Home Work",
              icon: "assets/icons/house.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Online Class",
              icon: "assets/icons/onlineclass.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Gallery",
              icon: "assets/icons/gallery.png",
            ),
          ],
        ),
        Row(
          children: [
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Events",
              icon: "assets/icons/events.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Holidays",
              icon: "assets/icons/holidays.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Notifications",
              icon: "assets/icons/notification.png",
            ),
          ],
        ),
        Row(
          children: [
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Payments",
              icon: "assets/icons/payment.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Complaints",
              icon: "assets/icons/complain.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeWork()),
                );
              },
              title: "Attendance",
              icon: "assets/icons/attendance.png",
            ),
          ],
        ),
        Row(
          children: [
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AcademicDownloads()),
                );
              },
              title: "Academic Downloads",
              icon: "assets/icons/download.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultsScreen()),
                );
              },
              title: "Results",
              icon: "assets/icons/results.png",
            ),
            CustomIconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExamSchedule()),
                );
              },
              title: "Exam Schedule",
              icon: "assets/icons/exam.png",
            ),
          ],
        ),
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton({required this.onPressed, this.title, required this.icon});
  final GestureTapCallback onPressed;
  final title;
  final  icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                icon,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        onPressed: onPressed,
        shape: const StadiumBorder(),
      ),
    );
  }
}
