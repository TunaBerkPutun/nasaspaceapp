import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/loginbackground.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            color: Color.fromRGBO(255, 255, 255, 0.2),
          ),
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: null,
            ),
          ),
          Center(
            child: LoginCard(),
          ),
        ],
      ),
    );
  }
}

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      child: Container(
        height: 320,
        width: deviceSize.width * 0.75,
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: deviceSize.width * 0.75,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColorDark),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColorDark),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/home");
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
