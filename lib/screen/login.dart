import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercustomlogin/custom/custom.dart';
import 'package:fluttercustomlogin/model/user.dart';
import 'package:fluttercustomlogin/screen/Home.dart';
import 'package:fluttercustomlogin/screen/welcome.dart';

import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberme = false;
  bool _loading = false;
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  Widget _buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabel,
        ),
        SizedBox(height: 10.0,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.purple[400],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: password,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: kHintText,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email, color: Colors.white),
              hintText: 'Enter your Email',
              //  hintStyle: ,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabel,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.purple[400],
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            obscureText: true,
            controller: email,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: kHintText,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock, color: Colors.white),
              hintText: 'Enter your Password',
              //  hintStyle: ,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgetPassword(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
          onPressed: ()=>print('Forgot Password Button Pressed'),
          padding: EdgeInsets.only(right: 0.0),
          child: Text(
            'Forgot Password',
            style: kLabel,
          )
      ),
    );
  }

  Widget _buildRemember(){
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                  value: rememberme,
                  checkColor: Colors.grey,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      rememberme = value;
                    });
                  }
              )
          ),
          Text(
            'Remember me',
            style: kLabel,
          )
        ],
      ),
    );
  }

//handle data submited
  /*
  User(String email, String password) async{
    Map data = {
      'email': email,
      'password': password
    };
    var json_data = null;
    var response = await http.post('http://localhost/api/auth/login', body: data);

    if (response.statusCode == 200){
      json_data = json.decode(response.body);
      setState(() {
        print('Details confirmed');
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Welcome()));
      });
    } else {
      print(response.body);
    }
  }

   */


  Widget _buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
          elevation: 5.0,
          onPressed: (){
            setState(() {
              _loading = false;
            });
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Homescreen(name: email.text)));
            //User(email.text, password.text);
          },
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.white,
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.purple[500],
              letterSpacing:1.5,
              fontSize: 18.0,
            ),
          ),
      ),
    );
  }

  Widget _buildSignInWithText(){
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0,),
        Text(
          'Sign in with',
          style: kLabel,
        )
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
            image: DecorationImage(
                image: logo
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: ()=>FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.purple[200],
                      Colors.purple[300],
                      Colors.purple[400],
                      Colors.purple[500],
                    ],
                    stops: [0.1,0.4,0.7,0.9],
                  )
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 60
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 10.0),
                          _buildEmail(),
                          SizedBox(height: 10),
                          _buildPassword(),
                          SizedBox(height: 10),
                          _buildForgetPassword(),
                          _buildRemember(),
                          _buildLoginBtn(),
                          _buildSignInWithText(),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _buildSocialBtn(
                                   () => print('Login with Google'),
                                   AssetImage('assets/google.jpg')
                                ),
                                _buildSocialBtn(
                                   () => print('Login with Facebook'),
                                   AssetImage('assets/facebook.jpg')
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => print('Sign up button pressed'),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Dont have an Account? ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Sign Up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
