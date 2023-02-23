import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/custom_text_field.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController locationcontroller = TextEditingController();

  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
                child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.20,
              backgroundColor: Colors.white,
              backgroundImage: imageXFile == null
                  ? null
                  : FileImage(
                      File(imageXFile!.path),
                    ),
              child: imageXFile == null
                  ? Icon(
                      Icons.add_photo_alternate,
                      size: MediaQuery.of(context).size.width * 0.20,
                      color: Colors.grey,
                    )
                  : null,
            )),
            const SizedBox(
              height: 10,
            ),
            Form(
                child: Column(
              children: [
                CustomTextField(
                  data: Icons.person,
                  controller: namecontroller,
                  hintText: "Name",
                  isObscure: false,
                ),
                CustomTextField(
                  data: Icons.email,
                  controller: emailcontroller,
                  hintText: "Email",
                  isObscure: false,
                ),
                CustomTextField(
                  data: Icons.lock,
                  controller: passwordcontroller,
                  hintText: "Password",
                  isObscure: true,
                ),
                CustomTextField(
                  data: Icons.lock,
                  controller: confirmPasswordcontroller,
                  hintText: "ConfirmPassword",
                  isObscure: true,
                ),
                CustomTextField(
                  data: Icons.phone,
                  controller: phonecontroller,
                  hintText: "phone",
                  isObscure: false,
                ),
                CustomTextField(
                  data: Icons.location_on,
                  controller: locationcontroller,
                  hintText: "Restaurant Address",
                  isObscure: false,
                  enable: false,
                ),
                Container(
                  width: 400,
                  height: 40,
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    onPressed: () => print('clicked'),
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'get my current location',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: ()=> print('clicked'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              padding: const  EdgeInsets.symmetric(horizontal:50, vertical: 20 )
            ),
                child: const Text(
                  'sign up',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
            )
          ],
        ),
      ),
    );
  }
}
