import 'package:flutter/material.dart';

import 'package:flutter_application_1/mainpage/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//void main() {
//  runApp(const App());
//}
//
//class App extends StatelessWidget {
//  const App({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Try(),
//    );
//  }
//}

class Try extends StatefulWidget {
  const Try({Key? key}) : super(key: key);

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * 0.13,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              padding: EdgeInsets.all(20),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: MediaQuery.of(context).size.width * 0.05,
              ));
        }),
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(),
          )
        ],
        centerTitle: true,
        title: Text(
          'SERENA',
          style: TextStyle(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width * 0.05,
          ),
        ),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.80,
              margin: EdgeInsets.symmetric(vertical: 27),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 5.0)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.0,
                        1.0
                      ],
                      colors: [
                        Colors.deepPurpleAccent,
                        Colors.lightBlue.shade50,
                      ])),
              child: ElevatedButton(
                child: Wrap(
                  children: <Widget>[
                    Icon(
                      Icons.meeting_room_outlined,
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      '   Create Meeting',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  fixedSize: MaterialStateProperty.all(Size(370, 50)),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.80,
              margin: EdgeInsets.symmetric(vertical: 23),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 5.0)
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.0,
                        1.0
                      ],
                      colors: [
                        Colors.deepPurpleAccent,
                        Colors.lightBlue.shade50,
                      ])),
              child: ElevatedButton(
                child: Wrap(
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: MediaQuery.of(context).size.width * 0.06,
                    ),
                    Text(
                      '   Join Meeting',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  fixedSize: MaterialStateProperty.all(Size(370, 50)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 45),
                height: MediaQuery.of(context).size.height * 0.37,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.deepPurpleAccent,
                              Colors.lightBlue.shade50,
                            ]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Align(
                      child: Image.asset(
                        'assets/email bg.png',
                        fit: BoxFit.fill,
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'A Remainder at ur Service',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Set your Schedule',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.13,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(
              Icons.mic_none_outlined,
              color: Colors.blueAccent,
              size: MediaQuery.of(context).size.width * 0.08,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        child: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                    color: Colors.blueAccent,
                    size: MediaQuery.of(context).size.width * 0.06,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.peopleGroup,
                    color: Colors.blueAccent,
                    size: MediaQuery.of(context).size.width * 0.06,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
