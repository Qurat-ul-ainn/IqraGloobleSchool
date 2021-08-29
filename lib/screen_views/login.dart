import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';
import 'package:iqra_global_school/screen_views/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _passController = TextEditingController();
    final _mobileController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height:  MediaQuery.of(context).size.height * 0.30,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage(//"assets/images/bulb.jpg"
                //         ""
                //         ),
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            "assets/icons/logo.jpg",
                          ),
                          size: 45,
                          // color: Color(0xFF3A5A98),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MainText(
                              txt: "Iqra Glooble School",
                            ),
                            SubText(
                              txt: "Annie Shah,Maria khan, Sadia Qsim Ali ",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 8.0),
                      child: MainText(
                        txt: "Welcome",
                      ),
                    ),
                    SubText(
                      txt: "Please login to continue. ",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFieldComponent(
                      passHide: false,
                      txtHint: "Username",
                    ),
                    TextFieldComponent(
                      passHide: true,
                      txtHint: "Password",
                    ),
                    Align(
                      alignment:Alignment.centerRight,
                        child: CustomButton(
                      onPressed: () {},
                      txt: 'LOGIN',
                      width: 80.0,
                    )),
                    Align(
                      alignment: Alignment.center,
                      child: CustomGestureText(
                        txt: "Forgot password?",
                        onTapFunction: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ForgotPassword()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:90.0,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("powered by"),
                          CustomGestureText(
                            txt: "GunguERP",
                            // onTapFunction: (){
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => RegistrationScreen()),
                            //   );
                            // },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
