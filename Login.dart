import 'package:ecommerce_flutter/Forgotpassword.dart';
import 'package:ecommerce_flutter/home.dart';
import 'package:ecommerce_flutter/screens/HomeScreen.dart';
import 'package:ecommerce_flutter/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Loginpage extends StatefulWidget {
  @override
  _Loginpagestate createState() => _Loginpagestate();
}

class _Loginpagestate extends State<Loginpage> {
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ListView(
                    children: <Widget>[
                      Text(
                        "Login",
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
                                  AssetImage(
                                    "assets/Icons/EmailIcon.png",
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Email ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 18.0,
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
                                  AssetImage("assets/Icons/Passwordicon.png"),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' Password ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Raleway',
                                fontSize: 18.0,
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
                      SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return new Forgotpasswordpage();
                            }));
                          },
                          child: Text("Forgot passcode?",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                color: Colors.lightBlueAccent,
                              )),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      FloatingActionButton.extended(
                        backgroundColor: Colors.lightBlueAccent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return new homePage();
                          }));
                        },
                        label: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'RobotoMono'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return new Signuppage();
                          }));
                        },
                        child: Text("Create account",
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
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
