import 'package:ecommerce_flutter/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Forgotpasswordpage extends StatefulWidget {
  @override
  _Forgotpasswordpagestate createState() => _Forgotpasswordpagestate();
}

class _Forgotpasswordpagestate extends State<Forgotpasswordpage> {
  late String email;

  var emailController = new TextEditingController();

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
                        "Forgot your password?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Confirm your mail and we'll send you the instructions.",
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
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
                      SizedBox(height: 50.0),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'RobotoMono'),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 5.0,
                            primary: Colors.lightBlueAccent,
                            minimumSize: Size(380, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return new Loginpage();
                          }));
                        },
                        child: Text("Login",
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
                              color: Colors.lightBlueAccent,
                              fontSize: 18,
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
