import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Helper/colors.dart';
import '../../models/catelog.dart';
import 'book_a_ride.dart';
import 'event_planner.dart';
import '../widget/Item_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catelogJson = await rootBundle.loadString("assets/file/catelog.josn");
    // var decodedData = jsonDecode(catelogJson);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(),
        // Drawer(
        //   // backgroundColor: colors.whit,
        //   child: Container(
        //     // width: MediaQuery.of(context).size.width,
        //     decoration: const BoxDecoration(
        //         image: DecorationImage(
        //             fit: BoxFit.fill,
        //             image: AssetImage('assets/images/drawer_bg.png')
        //         )
        //     ),
        //     // width: MediaQuery.of(context).size.width/2,
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 20, top: 40),
        //       child: Column(
        //         children: [
        //           Row(
        //             children: [
        //               CircleAvatar(
        //                 radius: 40,
        //                 child: Image.asset("assets/images/user3.png"),
        //               ),
        //               const SizedBox(width: 15,),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   secTitleText(
        //                       name != null ?
        //                       "$name"
        //                           :"Sawan Shakya", context, 16),
        //                   titleText("7896546544", context, 14)
        //
        //                 ],
        //               )
        //
        //             ],
        //           ),
        //           const SizedBox(height: 30,),
        //           drawerItem('assets/icons/drawer1.png', "Availability", (){
        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> Availability()));
        //           }),
        //           drawerItem('assets/icons/drawer2.png', "Invoice", (){
        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> InvoiceHistory()));
        //           }),
        //           drawerItem('assets/icons/drawer3.png', "Outlook", (){
        //           }),
        //           drawerItem('assets/icons/drawer4.png', "Sharepoint", (){}),
        //           drawerItem('assets/icons/drawer5.png', "Skool", (){}),
        //           drawerItem('assets/icons/drawer6.png', "FAQ", (){
        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> FaqScreen()));
        //           }),
        //           drawerItem('assets/icons/drawer7.png', "Privacy Policy", (){
        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPolicy()));
        //           }),
        //           drawerItem('assets/icons/drawer8.png', "Terms & Conditions", (){
        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> TermCondition()));
        //           }),
        //           const SizedBox(height: 30,),
        //           drawerItem('assets/icons/drawer9.png', "Logout", (){
        //             Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
        //           }),
        //
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: AppBar(
              backgroundColor: colors.whit,
              leading: InkWell(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 8, bottom: 8),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: colors.primary),
                          color: colors.primary),
                      child: const ImageIcon(
                          AssetImage(
                            'assets/icons/drawericon.png',
                          ),
                          color: colors.whit)),
                ),
              ),
              elevation: 0,
              title: Container(
                  child: Row(
                children: [
                  Container(
                    child: Icon(
                      Icons.location_on,
                      color: colors.primary,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "83 , Pink city , Jaipur",
                    textScaleFactor: 0.9,
                    style: TextStyle(color: colors.black1),
                  )
                ],
              )
              ),
              actions: [
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Demo()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
                    child: Container(
                        padding: const EdgeInsets.all(7),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: colors.primary),
                            color: colors.whit),
                        child: const Icon(Icons.notifications,
                            color: colors.primary)
                        // Icon(Icons.menu_outlined, color: appColorWhite,),
                        ),
                  ),
                ),
                Container(width: 10),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _search(context),
                _slider(context),
                _bookaRide(context),
                _eventPlanner(context),
                _cousmerReviews(),
              ],
            ),
          ),
        ));
  }
}

_cousmerReviews() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        "Cousmer Reviews",
        textScaleFactor: 1.6,
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatelogModel.items[index],
          );
        },
        itemCount: CatelogModel.items.length,
      ),
    ],
  );
}

_bookaRide(context) {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookARide()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: colors.primary, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/homebox1.png')),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: colors.primary,
                            offset: Offset(2, -2),
                            spreadRadius: 0,
                            blurRadius: 0),
                        BoxShadow(
                            color: colors.primary,
                            offset: Offset(2, 2),
                            spreadRadius: 0,
                            blurRadius: 0)
                      ]),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Book a Ride",
                        textScaleFactor: 0.8,
                        style: TextStyle(
                            color: colors.primary, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: colors.primary,
                        size: 18,
                      )
                    ],
                  )),
                ),
              ],
            ),
            InkWell(
              onTap: () {



                // Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => AddVisitHistory()));
              },
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: colors.primary, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/homebox1.png')),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: colors.primary,
                              offset: Offset(2, -2),
                              spreadRadius: 0,
                              blurRadius: 0),
                          BoxShadow(
                              color: colors.primary,
                              offset: Offset(2, 2),
                              spreadRadius: 0,
                              blurRadius: 0)
                        ]),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Send a Package",
                          textScaleFactor: 0.8,
                          style: TextStyle(
                              color: colors.primary, fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: colors.primary,
                          size: 18,
                        )
                      ],
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

_eventPlanner(context) {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> EventPlanner()));
            },
            child: Card(
              elevation: 4,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2.4,
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
                    width: MediaQuery.of(context).size.width / 2.4,
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
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));
            },
            child: Card(
              elevation: 4,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    height: 100,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/delivery.png'))),
                  ),
                  Container(
                    height: 35,
                    width: MediaQuery.of(context).size.width / 2.4,
                    decoration: BoxDecoration(
                      color: colors.primary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Handy Man",
                        textScaleFactor: 1.2,
                        style: TextStyle(color: colors.whit),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

_search(context) {
  return Container(
    decoration: BoxDecoration(
        color: colors.white2, borderRadius: BorderRadius.circular(6)),
    height: 50,
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(Icons.search),
        SizedBox(
          width: 10,
        ),
        Text("Search"),
      ],
    ),
  );
}

_slider(context) {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/leaderboard.png'))),
      ),
    ],
  );
}
