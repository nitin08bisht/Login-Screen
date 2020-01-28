import 'package:flutter/material.dart';
class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body:
      Form(key: _formKey,
    child: Column(
      children: <Widget>[
        Container(
          child: TextFormField(
          keyboardType: TextInputType.text,
          validator: (String value){
          if(value.isEmpty){
          return "you can't have an empty name!";
          }
          return null;
          },
            ),
        ),
        TextFormField(
          validator: (String value) {
            if (value.length<7) {
              return 'Password should be minimum 7 characters';
            }_formKey.currentState.save();
            return null;
          },
        ),
        RaisedButton(color: Colors.blueAccent,
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
          onPressed: (){
          if(_formKey.currentState.validate()){
            _formKey.currentState.save();
          }
          },
          ),
       ],
    ),
    ),
    );
  }
  }

/*import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  var _isSecure = true;
final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        height: size.height,
        width: size.width,
        decoration: new BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          key: _formKey,
          child: Column(
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
                  validator: (String value){
                    if(value.isEmpty){
                      return "you can't have an empty name!";
                    }
                    if(value.length<2){
                      return " Name must have more than one character!";
                    }
                  },
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

                    /*validator:(value){
                    if(value.isEmpty){
                      return 'plese enter some text';
                    }
                    return null;
                    },*/

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: _isSecure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    prefixIcon: Icon(Icons.vpn_key),
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isSecure ? Icons.visibility_off : Icons.visibility),
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
                  ),
                ),
              ),
              RaisedButton(
                padding: const EdgeInsets.all(0),
                color: Colors.lightBlue,
                textColor: Colors.white,
                child: Text("Login",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                onPressed: () {
                  setState(() {
                    if (_formKey.currentState.validate()) {
                    }
                  });
//                  {
//                    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
  //                }


                    },
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
        ),
      ),
    );
  }
}

/*class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          validator: (value){
            if(value.isEmpty){
              return 'please enter some data ';
            }
            return null;
          },
        ),

      ],
    ),
    );
  }
}
*/
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
            ]),
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
              child: TextField(
                keyboardType: TextInputType.text,
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

     /*return Scaffold(
       body:Form(
    key:_formKey,
    autovalidate:true,
    child:Column(
    children: <Widget>[
      TextFormField(
        onSaved: (String val)=>setState(()=>name=val),
        validator: (value){
          if(value.isEmpty){
            return "you can't have an empty name!";
          }
          if(value.length<2){
            return " Name must have more than one character!";
          }
        },
        decoration: InputDecoration(
          labelText: "Name",
          helperText: 'This has to be Over two Characters in length.'),
    ),
      RaisedButton(
    onPressed: (){
      _formKey.currentState.validate()?
    .Scaffold.of(context)
    .showSnackBar(SnackBar(content: Text("this is valid")
    )
    :Scaffold.of(context).showSnackBar(SnackBar(content: Text("this is not valid")));
    }
    )
    Text(_name)
     ],
    ),
    );
    )*/*/