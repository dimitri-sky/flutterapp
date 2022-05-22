// Packages
import 'package:flutter/material.dart';
//import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

// Services
//import '../services/media_service.dart';
import '../services/database_service.dart';
import '../services/cloud_storage_service.dart';

// Widgets
import '../widgets/custom_input_fields.dart';
import '../widgets/rounded_button.dart';

// Providers
import '../providers/authentication_provider.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  Widget _buildUI() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.03,
          vertical: _deviceHeight * 0.02,
        ),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //_profileImageField(),
            _registerForm()
          ],
        ),
      ),
    );
  }

  //Widget _profileImageField() {} (And a whole new file in widgets called roudned_image)

  Widget _registerForm() {
    return Container(
      height: _deviceHeight * 0.35,
      child: Form(
        key: _registerFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextFormField(
                onSaved: (_value) {},
                regEx: r'.{8,}',
                hintText: "Name",
                obscureText: false),
            CustomTextFormField(
                onSaved: (_value) {
                  setState(() {});
                },
                regEx:
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                hintText: "Email",
                obscureText: false),
            CustomTextFormField(
                onSaved: (_value) {},
                regEx: r'.{8,}',
                hintText: "Password",
                obscureText: true),
          ],
        ),
      ),
    );
  }
}
