import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/app_colors.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';


class ListItem{
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
    ListItem(1, "2021-2022",),
    ListItem(2, "2020-2021"),
    ListItem(3, "2019-2020"),
  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(child: Container(
      padding: EdgeInsets.only(bottom: 100),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(    height: 200,child:   Stack(
            children: [
              Container(
                color: Colors.red,
                height: 150,
                width: MediaQuery.of(context).size.width*1,
              ),
              Positioned(
                top: 140,
                left: 100,
                right: 100,
                child:  ImageIcon(
                  AssetImage(
                    "assets/icons/logo.jpg",
                  ),
                  size: 45,
                  color: Color(0xFF3A5A98),
                ),)
            ],
          ),),
          Text(
            "MUHAMMAD JAVEED AHMAD",
            style: TextStyle(
                color: AppColors.kGreyClr,
                fontSize: 20.0
            ),
          ),
          SubText(
            txt: "Subject:class IX C",
          ),
          SizedBox(height: 10,),
          MainText(
            txt: "CURRENT SESSION",
          ),
          Container(
            color: Colors.grey[350],
          height: 30.0,
          padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 0.0),
          child:DropdownButton(
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
            onChanged: (value){
              setState(() {
                _value=value as int;
              });
            },
          ),
        ),



          SizedBox(height: 10,),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(choicesPro.length, (index) {
              return SelectCardPro(choice: choicesPro[index],);
            },),
          ),
        ],
      ),
    ),);
  }
}







//icon title
class ChoiceProfile {
  const ChoiceProfile({required this.title, required this.icon});
  final String title;
  final AssetImage icon;
}

const List<ChoiceProfile> choicesPro = const <ChoiceProfile>[
  const ChoiceProfile(
    title: 'School Profile',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const ChoiceProfile(
    title: 'My Profile',
    icon: AssetImage(
      "assets/icons/logo.png",
    ),
  ),
  const ChoiceProfile(
    title: 'Change Password',
    icon: AssetImage(
      "assets/icons/school.jpg",
    ),
  ),
  const ChoiceProfile(

    title: 'Log Out',
    icon: AssetImage(
      "assets/icons/logout.png",
    ),
  ),
];

class SelectCardPro extends StatelessWidget {
  const SelectCardPro({required this.choice}) : super();
  final ChoiceProfile choice;

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
