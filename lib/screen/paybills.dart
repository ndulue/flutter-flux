import 'package:flutter/material.dart';
import 'package:fluttercustomlogin/screen/service.dart';


class Payment extends StatelessWidget {

  String plan;

  Payment({
    this.plan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Container()
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                      ' Payment page',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/og.png",
                  width: 150,
                  height: 150,
                )
              ],
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child:
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Name on the Card",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child:
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "Debit Card number",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child:
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "MM/YY",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left:20, right: 20),
              child:
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "CVC",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
                padding: const EdgeInsets.only(left:15, right: 15),
                child:

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return Service();
                      }),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child:
                            Text(
                                "Confirm Subscription",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal
                                )
                            )
                        )
                      ],
                    ),
                  ),
                )
            ),

            SizedBox(height: 10),


            Expanded(child: Container()),

          ],
        ),
      ),
    );
  }
}
