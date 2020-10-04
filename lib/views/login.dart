import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
              Image(
              image: AssetImage('assets/images/login.jpg'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              ),
              Positioned(
                child: Container(
                  child: Image(
              image: AssetImage('assets/images/logo.png'),
              alignment: Alignment.center,
              ),
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                ),
                top: MediaQuery.of(context).size.height * 0.1,
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Column(
                    children: [
                      TextFormField(
                        style: TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          labelText: 'No.Handphone / user ID',
                          labelStyle: TextStyle(
                            color: Colors.white
                          )
                        )
                      ),
                      TextFormField(
                        obscureText: _obscureText,
                        
                        style: TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          suffixIcon: FlatButton(onPressed: _toggle, child: Text(_obscureText ? 'Show' : 'Hide', style: TextStyle(color: Colors.white),)),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          labelText: 'No.Handphone / user ID',
                          labelStyle: TextStyle(
                            color: Colors.white
                          )
                        )
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
    );
  }
}