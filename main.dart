import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: registeration()
)
);



class registeration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xE89B3A),
        body: ListView(
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(top:15.0 ,left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){},
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: (){},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox (height: 40.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                color: Color(0xF9F9F9F9),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0),topRight: Radius.circular(60.0)),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0 ,left: 30.0,right: 30.0,bottom: 60),
                child: Column(
                  children: <Widget>[
                    TextFormField(

                      decoration: InputDecoration(
                        labelText:('Email'),
                      ),
                      validator: (input) => !input.contains('@') ? 'Not valid Email' : null,
                      //  onSaved: (input) => email = input,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Password'
                      ),
                      validator: (input) =>
                      input.length < 8
                          ? 'you need 8 chars'
                          : null,
                      //  onSaved: (input) => password = input,
                      obscureText: true,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 55.0),
                      child: Column(
                        children: <Widget>[
                          Center(

                            child: RaisedButton(
                              onPressed: (){},
                              padding: const EdgeInsets.only(left: 60,top: 20,right: 50,bottom: 20),
                              //color: Color(0xDD111111),
                              color: Color(0xFF111111),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150.0)),
                              // onPressed: submit,
                              child: Text(
                                'sign in',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
