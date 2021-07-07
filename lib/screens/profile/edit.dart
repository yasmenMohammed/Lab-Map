import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/theme.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key key}) : super(key: key);
  static String routeName = 'edit';
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  bool showPassword = false;
  DateTime date = DateTime.now();
  Future<Null> selectedTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1930),
        lastDate: DateTime(2040));
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  int selectedValue;
  @override
  void initState() {
    selectedValue = 1;
    super.initState();
  }

  void setSelectedValue(val) {
    setState(() {
      selectedValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Theme.of(context).primaryColor,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus;
          },
          child: ListView(
            children: [
              Text(
                'Edit Profile',
                style: TextStyle(color: kTextColor, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 160,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: kPrimaryLightColor),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset.zero,
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.blue)
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/Profile Image.png",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -1,
                        child: Container(
                          child: Icon(Icons.camera_alt_outlined),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buildTextField(
                  hint: 'mohammed Adel',
                  label: 'First Name',
                  type: TextInputType.name,
                  isPasswordTextField: false),
              buildTextField(
                  hint: 'nope@gmail.com',
                  label: 'Email',
                  type: TextInputType.emailAddress,
                  isPasswordTextField: false),
              buildTextField(
                  hint: ' atleast 8 letters',
                  label: 'password',
                  type: TextInputType.text,
                  isPasswordTextField: true),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: selectedValue,
                    onChanged: (val) {
                      setSelectedValue(val);
                    },
                  ),
                  Text('female'),
                  Radio(
                    value: 2,
                    groupValue: selectedValue,
                    onChanged: (val) {
                      setSelectedValue(val);
                    },
                  ),
                  Text(
                    "male",
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  FlatButton(
                      child: Text('Your Birth Day'),
                      onPressed: () {
                        selectedTimePicker(context);
                      }),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blueAccent[50]),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: kTextColor),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueAccent[50]),
                    child: Text(
                      date.month.toString(),
                      style: TextStyle(color: kTextColor),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blueAccent[50]),
                    child: Text(
                      date.year.toString(),
                      style: TextStyle(color: kTextColor),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      {String label,
      String hint,
      TextInputType type,
      bool isPasswordTextField}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        keyboardType: type,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: label,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black)),
      ),
    );
  }
}
