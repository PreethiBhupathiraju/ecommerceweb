import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Login.dart';

class Signuppage extends StatefulWidget {
  @override
  _Signuppagestate createState() => _Signuppagestate();
}

class _Signuppagestate extends State<Signuppage> {
  late String email;
  late String password;
  var passwordController = new TextEditingController();
  var emailController = new TextEditingController();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(
                    'assets/Backgroundimage.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            /*Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(
                      'assets/Icons/single icon White.png',
                    ),
                  ),
                ),
              ),*/

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 0.0),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      SizedBox(height: 40.0),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: ImageIcon(
                                  AssetImage("assets/Icons/Group (1).png"),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Name ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Rosina",
                        ),
                      ),
                      SizedBox(height: 20.0),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: ImageIcon(
                                  AssetImage(
                                      "assets/Icons/phone_black_24dp 1 (1).png"),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Number ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "+91 9988776655",
                        ),
                      ),
                      SizedBox(height: 20.0),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: ImageIcon(
                                  AssetImage("assets/Icons/EmailIcon.png"),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Email ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "rosina@company.com",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(10.0),
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        validator: (valuee) {
                          if (valuee!.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(valuee)) {
                            return 'Enter a valid email!';
                          }
                          return null;
                        },
                        onSaved: (valuee) => email = valuee!,
                      ),
                      SizedBox(height: 20.0),
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyText2,
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: ImageIcon(
                                  AssetImage("assets/Icons/Passwordicon.png"),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Password ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "********",
                          suffixIcon: TextButton(
                              onPressed: _toggle,
                              child: new Text(_obscureText ? "Show" : "Hide")),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passwordController,
                        validator: (valu) {
                          password = valu!;
                          if (valu.isEmpty) {
                            return 'Please enter your password';
                          } else if (valu.length < 6) {
                            return 'Please enter minimum 6 digits';
                          }
                          return null;
                        },
                        onSaved: (val) => password = val!,
                        obscureText: _obscureText,
                      ),
                      SizedBox(height: 20.0),
                      FloatingActionButton.extended(
                        backgroundColor: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        onPressed: () {},
                        label: Text(
                          "Create account",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return new Loginpage();
                          }));
                        },
                        child: Text("Login",
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.lightBlueAccent,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
