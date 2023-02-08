import 'package:flutter/material.dart';
import '../../Helper/colors.dart';
import '../appBar/appBar.dart';
import 'artist.dart';

class EventPlanner extends StatefulWidget {
  const EventPlanner({Key? key}) : super(key: key);

  @override
  State<EventPlanner> createState() => _EventPlannerState();
}

class _EventPlannerState extends State<EventPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("Event Planner", context),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                child: Expanded(
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [

                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Artist()));
                        },

                        child: Column(
                          children: [
                            Container(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/images/labour.png'))),
                            ),
                            Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width / 2.2,
                              decoration: BoxDecoration(
                                color: colors.primary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Event Planner",
                                  textScaleFactor: 1.2,
                                  style: TextStyle(color: colors.whit),
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
          ),
        ));
  }
}
