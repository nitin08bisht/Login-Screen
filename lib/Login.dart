import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isSecure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(key: _formKey,
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/mdulogo.jpg",
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        prefixIcon: Icon(Icons.account_circle),
                        labelText: "Username",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'please enter some text';
                        }
                        return null;
                        },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (String value) {
                        if (value.length<7) {
                          return 'Password should be minimum 7 characters';
                        }_formKey.currentState.save();
                        return null;
                      },
                      obscureText: _isSecure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(_isSecure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isSecure = !_isSecure;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                       /* validator: (String value) {
                          if (value.length<7) {
                            return 'Password should be minimum 7 characters';
                          }_formKey.currentState.save();
                          return null;
                        },*/
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){
                      if (_formKey.currentState.validate()){
                        _formKey.currentState.save();
                      }
                    },
                    padding: const EdgeInsets.all(0),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    child: Text("Login",
                        style: TextStyle(
                          fontSize: 16,
                        )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Forgot Password'),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()),
                          );
                        },
                      ),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Create New Accoumt'),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateNewAccount()),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Help'),
                        onPressed: () async {},
                      ),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Report'),
                        onPressed: () async {},
                      ),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text('Language'),
                        onPressed: () async {},
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Optional
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
              Image.asset(
                "assets/images/mdulogo.jpg",
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    prefixIcon: Icon(Icons.keyboard),
                    labelText: "Enter Phone no./Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}

class CreateNewAccount extends StatefulWidget {
  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Optional
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                )
              ],
            ),
            Image.asset(
              "assets/images/mdulogo.jpg",
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (String value){
                  if(value.isEmpty){
                    return "you can't have an empty name!";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(Icons.keyboard),
                    labelText: " Name"),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    prefixIcon: Icon(Icons.phone_iphone),
                    labelText: "Phone no."),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email ID",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            RaisedButton(
              padding: const EdgeInsets.all(0),
              color: Colors.lightBlue,
              textColor: Colors.white,
              child: Text("Submit",
                  style: TextStyle(
                    fontSize: 16,
                  )),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
