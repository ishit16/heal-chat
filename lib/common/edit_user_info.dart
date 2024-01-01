import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heal_chat/constants/theme_constants.dart';

class EditUserInfo extends StatefulWidget {
  const EditUserInfo({super.key});

  @override
  State<EditUserInfo> createState() => _EditUserInfoState();
}

class _EditUserInfoState extends State<EditUserInfo> {
  final schoolNameController = TextEditingController();
  final aboutController = TextEditingController();
  final degreeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    schoolNameController.dispose();
    degreeController.dispose();
    aboutController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TextFormField(
            controller: schoolNameController,
            textInputAction: TextInputAction.done,
            cursorColor: kPrimaryColor,
            decoration: const InputDecoration(
              hintText: "Most Recent School",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.school),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TextFormField(
            controller: degreeController,
            textInputAction: TextInputAction.done,
            cursorColor: kPrimaryColor,
            decoration: const InputDecoration(
              hintText: "Recent Degree",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.school),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TextFormField(
            controller: aboutController,
            textInputAction: TextInputAction.newline,
            maxLines: 2,
            cursorColor: kPrimaryColor,
            decoration: const InputDecoration(
              hintText: "About yourself",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.school),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Save Information",
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
