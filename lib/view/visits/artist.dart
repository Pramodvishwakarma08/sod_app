import 'package:flutter/material.dart';
import '../../Helper/colors.dart';
import '../appBar/appBar.dart';
import '../widget/card.dart';
import 'artist_details.dart';

class Artist extends StatefulWidget {
  const Artist({Key? key}) : super(key: key);

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      appBar: customAppBar("Artist", context),
      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            color: colors.whit,
          ),
          width: MediaQuery
              .of(context)
              .size
              .width,
          // height: MediaQuery.of(context).size.height - 97.600,
          child: Column(
            children: [
              Container(
                height: 20, width: MediaQuery
                  .of(context)
                  .size
                  .width,),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: _availableFeature(context)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> therapists = [
  {
    "image": "assets/images/profile2.png",
    "name": "John Wick",
    "date": "08 July 2022"
  },
  {
    "image": "assets/images/profile3.png",
    "name": "Jack Sparrow",
    "date": "08 July 2022"
  },
  {
    "image": "assets/images/profile2.png",
    "name": "Tony Stark",
    "date": "08 July 2022"
  },
  {
    "image": "assets/images/profile3.png",
    "name": "John Dalton",
    "date": "08 July 2022"
  },
];

_availableFeature(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 15,
      ),
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: therapists.length,
          itemBuilder: (context, index) {
            return availabilityCard(context, therapists, index, (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>  JobDetails()));
            }) ;
          })
    ],
  );
}
