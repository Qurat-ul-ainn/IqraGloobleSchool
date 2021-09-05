import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/app_colors.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';
import 'package:iqra_global_school/screen_views/home/homepage.dart';

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class RestDropDownSelectedItem {
  final String queryType;
  final int id;

  const RestDropDownSelectedItem(this.id, this.queryType);
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _value = 1;
  List<ListItem> _dropdownItems = [
    ListItem(
      1,
      "2021-2022",
    ),
    ListItem(2, "2020-2021"),
    ListItem(3, "2019-2020"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //   padding: EdgeInsets.only(bottom: 100),
      child: Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: 150,
                  width: MediaQuery.of(context).size.width * 1,
                ),
                Positioned(
                  top: 110,
                  left: 100,
                  right: 100,
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(
                      "assets/icons/studentPic.png",

                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            "MUHAMMAD JAVEED AHMAD",
            style: TextStyle(color: AppColors.kGreyClr, fontSize: 20.0),
          ),
          SubText(
            txt: "Subject:class IX C",
          ),
          SizedBox(
            height: 10,
          ),
          MainText(
            txt: "CURRENT SESSION",
          ),
          Container(
            color: Colors.grey[350],
            height: 30.0,
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            child: DropdownButton(
              underline: SizedBox(),
              // dropdownColor: Colors.black,

              icon: Icon(Icons.keyboard_arrow_down_outlined),
              value: _value,
              items: _dropdownItems.map((ListItem item) {
                return DropdownMenuItem<int>(
                  child: Text(item.name),
                  value: item.value,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _value = value as int;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CustomIconButton(
                onPressed: () {},
                icon: "assets/icons/bank.png",
                title: "School Profile",
              ),
              CustomIconButton(
                onPressed: () {},
                icon: "assets/icons/man-user.png",
                title: "My Profile",
              ),
              CustomIconButton(
                onPressed: () {},
                icon: "assets/icons/password.png",
                title: "Change Password",
              ),
            ],
          ),
          CustomIconButton(
            onPressed: () {},
            icon: "assets/icons/logout.png",
            title: "Log Out",
          ),
        ],
      ),
    );
  }
}
