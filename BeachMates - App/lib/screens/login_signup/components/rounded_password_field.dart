import 'package:flutter/material.dart';
import 'package:b2b/screens/login_signup/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        // cursorColor: kPrimaryColor,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            // color: kPrimaryColor,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            // color: kPrimaryColor,
            color: Colors.grey,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
