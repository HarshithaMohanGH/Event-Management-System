import 'dart:io';

import 'package:flutter/material.dart' hide Action;
import 'package:flutter_application_1/mainpage/drawer.dart';
import 'package:flutter_application_1/profile_page.dart';
import 'package:flutter_application_1/profile_widget.dart';
import 'package:flutter_application_1/text_widget.dart';
import 'package:flutter_application_1/user.dart';
import 'package:flutter_application_1/user_preferences.dart';
import 'package:flutter_application_1/user_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late User user;

  @override
  void initState() {
    super.initState();
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * 0.13,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileUpload()));
              },
              padding: EdgeInsets.all(20),
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: MediaQuery.of(context).size.width * 0.05,
              ));
        }),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {
                final image =
                    await ImagePicker().getImage(source: ImageSource.gallery);

                if (image == null) return;

                final directory = await getApplicationDocumentsDirectory();
                final name = basename(image.path);
                final imageFile = File('${directory.path}/$name');

                final newImage = await File(image.path).copy(imageFile.path);

                setState(() {
                  user = user.copy(imagePath: newImage.path);
                });
              },
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) => user = user.copy(name: name),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) => user = user.copy(email: email),
            ),
            const SizedBox(
              height: 24,
            ),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) => user = user.copy(about: about),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.80,
              margin: EdgeInsets.symmetric(vertical: 45),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 5.0)
                  ],
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.0,
                        1.0
                      ],
                      colors: [
                        Colors.deepPurpleAccent,
                        Colors.lightBlue.shade50,
                      ])),
              child: ElevatedButton(
                child: Wrap(
                  children: <Widget>[
                    Text(
                      '   SAVE',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    )
                  ],
                ),
                onPressed: () {
                  UserPreferences.setUser(user);
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  fixedSize: MaterialStateProperty.all(Size(370, 50)),
                ),
              ),
            ),
          ]),
    );
  }
}
