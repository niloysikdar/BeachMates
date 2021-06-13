import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:b2b/constants/colors.dart';
import 'package:b2b/models/event_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class NewEvent extends StatefulWidget {
  @override
  _NewEventState createState() => _NewEventState();
}

class _NewEventState extends State<NewEvent> {
  String selectedKey = "Surfing";
  bool isDropDownOpened = false;
  // ignore: unused_field
  bool isBackPressedOrTouchedOutSide = false;

  TextEditingController titleController;
  TextEditingController descriptionController;

  List<String> keys = <String>[
    "Surfing",
    "Volleyball",
    "Jet Ski",
    "Sand Castle"
  ];

  bool showSpinner = false;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kblue,
          elevation: 0,
        ),
        body: ModalProgressHUD(
          progressIndicator: SpinKitDoubleBounce(
            color: Colors.blue,
            size: 50.0,
          ),
          inAsyncCall: showSpinner,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: size.width,
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    bottom: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: kblue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Add your event here",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AwesomeDropDown(
                        isPanDown: true,
                        dropDownBorderRadius: 10,
                        dropDownTopBorderRadius: 10,
                        dropDownBottomBorderRadius: 10,
                        dropDownBGColor: kblue,
                        dropDownOverlayBGColor: kblue,
                        dropDownListTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        selectedItemTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        dropDownList: keys,
                        dropDownIcon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                          size: 23,
                        ),
                        selectedItem: selectedKey,
                        onDropDownItemClick: (selectedItem) {
                          selectedKey = selectedItem;
                        },
                        dropStateChanged: (isOpened) {
                          isDropDownOpened = isOpened;
                          if (!isOpened) {
                            isBackPressedOrTouchedOutSide = false;
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: titleController,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: kyellow,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      hintText: "An interesting title",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: descriptionController,
                    maxLines: 4,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: kyellow,
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      hintText: "The description to your post",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      errorStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () async {
                    if (titleController.text.trim() != "" &&
                        descriptionController.text.trim() != "") {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        await addEvent();
                      } catch (e) {
                        print("Error while Adding");
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    }
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      kblue,
                    ),
                  ),
                  child: Text(
                    "POST",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  addEvent() async {
    String username = FirebaseAuth.instance.currentUser.email;
    String id = "${titleController.text}-$username";
    Map<String, dynamic> newEvent = EventModel(
      id: id,
      title: titleController.text,
      postedBy: username,
      description: descriptionController.text,
      allpeople: [username],
      comments: [],
      category: selectedKey,
    ).toMap();
    await FirebaseFirestore.instance
        .collection("liveEvents")
        .doc(id)
        .set(newEvent);
    print("Done");
    titleController.text = "";
    descriptionController.text = "";
  }
}
