import 'package:flutter/material.dart';


class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {

  String value = "Design";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                      'Welcome back',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'What kind of service will you like',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    )
                ),
              ],
            ),


            SizedBox(height: 30,),

            Container(
              child: DropdownButton(
                items: [
                  DropdownMenuItem(
                      child: Text(
                        'Design',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    value: "Design",
                  ),

                  DropdownMenuItem(
                      child: Text(
                        'Creativity',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 24,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    value: "Creativity",
                  ),

                  DropdownMenuItem(
                      child: Text(
                        'Educational',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 24,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    value: "Educational",
                  )
                ],
                onChanged: (value){},
                icon: Icon(Icons.arrow_drop_down),
                underline: SizedBox(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'DD/MM/YYYY',
                    hintStyle: TextStyle(fontSize: 20)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Address',
                    hintStyle: TextStyle(fontSize: 20)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(fontSize: 20)
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
              width: double.infinity,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: (){
                },
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.white,
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black87,
                    letterSpacing:1.5,
                    fontSize: 18.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
