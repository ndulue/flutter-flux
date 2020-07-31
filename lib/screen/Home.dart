import 'package:flutter/material.dart';
import 'package:fluttercustomlogin/screen/paybills.dart';
import 'package:fluttercustomlogin/widget/category_card.dart';


class Homescreen extends StatelessWidget {

  String name;

  Homescreen({
    this.name
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
                color: Colors.purple[400],
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xFFF2BEA1),
                            shape: BoxShape.circle),

                        //child: Image.asset("assets/img1.jpg"),
                        child: Icon(
                            Icons.menu
                        ),
                      ),
                    ),
                    Text(
                      "Good Day Emeka",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 20,),
                    //searchBox(),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .8,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          ItemContainer(
                            img: "assets/img7.png",
                            title: "Monthly Plan",
                            press: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return Payment(plan: "Montly");
                              }),
                            );
                            },
                          ),
                          ItemContainer(
                            img: "assets/img4.png",
                            title: "Weekly Plan",
                            press: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return Payment(plan: "Weekly");
                              }),
                            );
                            },
                          ),
                          ItemContainer(
                            img: "assets/img5.png",
                            title: "Daily Plan",
                            press: (){Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return Payment( plan: "Daily" );
                              }),
                            );
                            },
                          ),
                          ItemContainer(
                            img: "assets/img6.png",
                            title: "Yearly Plan",
                            press: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context){
                                  return Payment( plan: "Yearly");
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}






