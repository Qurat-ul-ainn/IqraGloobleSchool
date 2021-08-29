import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
            children: [
              Image(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 200,
                  image: AssetImage(
                    "assets/icons/videoconference.png",
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Mathematics",
                  ),
                  CardComponent(
                    teacher: "ANNIE",
                    sub1: "Math1",
                    subject: "Math",
                  ),
                ],
              ),

            ],
          )),
    );
  }
}

//Card
class CardComponent extends StatelessWidget {
  final sub1;
  final subject;
  final teacher;

  const CardComponent({Key? key, this.sub1, this.subject, this.teacher})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               height: 100,
               width: 200,
               color: Colors.grey[100],
               child: Icon(Icons.image_sharp, color: Colors.grey),
             ),
              Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 20),child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubText(
                    txt: subject,
                  ),
                  MainText(
                    txt: teacher,
                  ),
                  SubText(
                    txt: sub1,
                  ),
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
