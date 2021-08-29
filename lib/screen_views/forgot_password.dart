import 'package:flutter/material.dart';
import 'package:iqra_global_school/constants/app_colors.dart';
import 'package:iqra_global_school/constants/ui_constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _mobileController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:   Container(
          margin: EdgeInsets.only(top: 10.0,left: 20.0),
          decoration: BoxDecoration(
              color:Colors.grey[100],
              border: Border.all(
                  color: Colors.white
              ),
              borderRadius: BorderRadius.all(Radius.circular(6))
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: AppColors.kOrangeClr,),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Forgot\nPassword",
                  style: TextStyle(fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 50),
                  child: SubText(
                    txt: "Please input your username to reset password:",
                  ),
                ),
                TextFieldComponent(
                  passHide: false,
                  txtHint: "Username",
                ),
                CustomButton(
                  onPressed: () {},
                  txt: 'SUBMIT',
                  width: MediaQuery.of(context).size.width * 0.94,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
