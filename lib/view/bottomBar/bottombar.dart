// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pramod_sod/view/schedule/event.dart';
// import 'package:pramod_sod/view/visits/Profile.dart';
// import '../../Helper/colors.dart';
// import '../visits/Artist.dart';
// import '../visits/home.dart';
//
// class BottomBar extends StatefulWidget {
//   final int? index;
//   const BottomBar({Key? key, this.index}) : super(key: key);
//
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }
//
// class _BottomBarState extends State<BottomBar> {
//   int pageIndex = 0;
//
//
//   final pages = [
//     const Home(),
//     const Event(),
//     const Artist(),
//     const Profile(),
//   ];
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   if(widget.index != null) {
//   //     pageIndex = widget.index!;
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//         onWillPop: () async {
//       // showDialog(
//       //     context: context,
//       //     barrierDismissible: false,
//       //     builder: (BuildContext context) {
//       //       return AlertDialog(
//       //         title: Text("Confirm Exit"),
//       //         content: Text("Are you sure you want to exit?"),
//       //         actions: <Widget>[
//       //           ElevatedButton(
//       //             style: ElevatedButton.styleFrom(
//       //                 primary: colors.primary
//       //             ),
//       //             child: Text("YES"),
//       //             onPressed: () {
//       //               SystemNavigator.pop();
//       //             },
//       //           ),
//       //           ElevatedButton(
//       //             style: ElevatedButton.styleFrom(
//       //                 primary: colors.primary
//       //             ),
//       //             child: Text("NO"),
//       //             onPressed: () {
//       //               Navigator.of(context).pop();
//       //             },
//       //           )
//       //         ],
//       //       );
//       //     }
//       // );
//       return true;
//     },
//
//       child: Scaffold(
//       // backgroundColor: const Color(0xffC4DFCB),
//       body: pages[pageIndex],
//       bottomNavigationBar: buildMyNavBar(context),
//     )
//     );
//   }
//   bottomBarElement(String title, image, int index ){
//     return InkWell(
//       onTap: (){
//         setState(() {
//           pageIndex = index;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.only(left: 10, right: 10),
//         // width: 80,
//         height: 40,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: pageIndex == index ? colors.primary : Colors.white
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ImageIcon(
//                 AssetImage(image),
//               color: pageIndex == index ? Colors.white : colors.fntClr,
//             ),
//            const  SizedBox(width: 3,),
//             // Image.asset(image),
//             pageIndex == index ?
//             Text(title,
//             style: const TextStyle(
//               color: Colors.white
//             ),)
//                 : const SizedBox.shrink()
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColor,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           bottomBarElement("Home", "assets/icons/dashboard1.png", 0),
//           bottomBarElement("Event", "assets/icons/dashboard2.png", 1),
//           bottomBarElement("Leaderboard", "assets/icons/dashboard3.png", 2),
//           bottomBarElement("Profile", "assets/icons/dashboard4.png", 3),
//           // IconButton(
//           //   enableFeedback: false,
//           //   onPressed: () {
//           //     setState(() {
//           //       pageIndex = 0;
//           //     });
//           //   },
//           //   icon: pageIndex == 0
//           //       ? const Icon(
//           //     Icons.home_filled,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   )
//           //       : const Icon(
//           //     Icons.home_outlined,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   ),
//           // ),
//           // IconButton(
//           //   enableFeedback: false,
//           //   onPressed: () {
//           //     setState(() {
//           //       pageIndex = 1;
//           //     });
//           //   },
//           //   icon: pageIndex == 1
//           //       ? const Icon(
//           //     Icons.work_rounded,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   )
//           //       : const Icon(
//           //     Icons.work_outline_outlined,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   ),
//           // ),
//           // IconButton(
//           //   enableFeedback: false,
//           //   onPressed: () {
//           //     setState(() {
//           //       pageIndex = 2;
//           //     });
//           //   },
//           //   icon: pageIndex == 2
//           //       ? const Icon(
//           //     Icons.widgets_rounded,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   )
//           //       : const Icon(
//           //     Icons.widgets_outlined,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   ),
//           // ),
//           // IconButton(
//           //   enableFeedback: false,
//           //   onPressed: () {
//           //     setState(() {
//           //       pageIndex = 3;
//           //     });
//           //   },
//           //   icon: pageIndex == 3
//           //       ? const Icon(
//           //     Icons.person,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   )
//           //       : const Icon(
//           //     Icons.person_outline,
//           //     // color: Colors.white,
//           //     size: 35,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Helper/colors.dart';
import '../visits/Profile.dart';
import '../visits/artistbooking.dart';
import '../visits/event.dart';
import '../visits/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final items=const[

    Icon(Icons.home,color: colors.primary,),
    Icon(Icons.event_note_sharp,color: colors.primary,),
    Icon(Icons.notifications_active,color: colors.primary,),
    Icon(Icons.person, color: colors.primary,),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        items:items,
        index: index,
        onTap: (selectedIndex){
          setState(() {
            index=selectedIndex;
          });
        },
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: getSelectedWidget(index:index),
      ),
    );
  }
  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:

        widget=const Home();
        break;
      case 1:
        widget=const Event1();

        break;
      case 2:
        widget= const ArtistBooking();
        break;
      case 3:
        widget=const Profile();
        break;
      default:
        widget= Home();
    }
    return widget;
  }

}


