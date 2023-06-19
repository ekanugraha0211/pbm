import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:petani_kita/components/custom_surfix_icon.dart';
import 'package:petani_kita/components/default_button_custome_color.dart';
import 'package:petani_kita/screens/register/RegisterScreens.dart';
import 'package:petani_kita/size_config.dart';
import 'package:petani_kita/utils/constant.dart';

import '../../screens/home.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInForm createState() => _SignInForm();
}

class _SignInForm extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
      txtpassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        buildUserName(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildPassword(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        Row(
          children: [
            Checkbox(
                value: remeber,
                onChanged: (value) {
                  setState(() {
                    remeber = value;
                  });
                }),
            Text("Tetap Masuk"),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Lupa Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "MASUK",
          press: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => home()));
          },
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return RegisterScreens(); // Ganti "LayarPendaftaran" dengan nama kelas layar tujuan pendaftaran Anda
              }),
            );
          },
          child: Text(
            "Belum Punya Akun ? Daftar disini",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'masukkan Username Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/images/User.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtpassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'masukkan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/images/User.svg",
          )),
    );
  }
}
