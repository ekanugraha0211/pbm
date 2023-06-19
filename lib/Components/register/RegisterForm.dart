import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:petani_kita/components/custom_surfix_icon.dart';
import 'package:petani_kita/components/default_button_custome_color.dart';
import 'package:petani_kita/screens/login/LoginScreens.dart';
import 'package:petani_kita/size_config.dart';
import 'package:petani_kita/utils/constant.dart';

class RegInForm extends StatefulWidget {
  @override
  _RegInForm createState() => _RegInForm();
}

class _RegInForm extends State<RegInForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? email;
  String? notelp;
  String? password;
  String? role;
  bool? remeber = false;

  TextEditingController txtUserName = TextEditingController(),
      txtEmail = TextEditingController(),
      txtNotelp = TextEditingController(),
      txtpassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  List<String> roles = ['Petani', 'Pakar'];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
        buildUserName(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildEmail(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildNumber(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildPassword(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildRoleDropdown(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
        DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "DAFTAR",
          press: () {
            if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Perform registration logic here
              }
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
                  return LoginScreens(); // Ganti "LayarPendaftaran" dengan nama kelas layar tujuan pendaftaran Anda
                  }),
                );
              },
            child: Text(
              "Sudah Punya Akun ? Login disini",
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
          hintText: 'Masukkan Username Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/images/User.svg",
          )),
    );
  }
  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.emailAddress,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'masukkan Email Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/images/Mail.svg",
          )),
    );
  }
  TextFormField buildNumber() {
    return TextFormField(
      controller: txtNotelp,
      keyboardType: TextInputType.phone,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Nomor Telpon',
          hintText: 'Masukkan Nomer Telpon Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/images/Phone.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtpassword,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "lib/assets/images/Lock.svg",
          )),
    );
  }
  DropdownButtonFormField<String> buildRoleDropdown() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Role',
        hintText: 'Pilih Role Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/images/account.svg",
        ),
      ),
      value: role,
      items: roles.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          role = newValue;
        });
      },
      validator: (value) {
        if (value == null) {
          return "Role harus dipilih";
        }
        return null;
      },
      onSaved: (newValue) => role = newValue,
    );
  }
}
